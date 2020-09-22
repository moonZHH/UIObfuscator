package hk.polyu.repackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;

import soot.Body;
import soot.Local;
import soot.PatchingChain;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.javaToJimple.LocalGenerator;
import soot.jimple.Expr;
import soot.jimple.IntConstant;
import soot.jimple.InvokeExpr;
import soot.jimple.InvokeStmt;
import soot.jimple.Jimple;
import soot.jimple.Stmt;
import soot.jimple.VirtualInvokeExpr;

public class ViewGeneration {
	
	public static void generate() {
		// modify incorrect method body for 
		for (SootClass sc : Scene.v().getApplicationClasses()) {
			if (!sc.getName().equals("hk.polyu.ViewGeneration"))
				continue;
			for (SootMethod sm : sc.getMethods()) {
				if (!sm.getName().equals("generate"))
					continue;
				
				// System.out.println(sm.retrieveActiveBody().toString());
				Body methodBody = sm.retrieveActiveBody();
				PatchingChain<Unit> units = methodBody.getUnits();
				HashMap<Stmt, Stmt> patchMap = new HashMap<>();
				for (Unit unit : units) {
					Stmt stmt = (Stmt) unit;
					if (!stmt.containsInvokeExpr())
						continue;
					SootMethod targetMethod = stmt.getInvokeExpr().getMethod();
					if (!targetMethod.getSignature().equals("<android.view.ViewGroup: void addView(android.view.View)>"))
						continue;
					
					SootClass ViewGroupClass = Scene.v().getSootClass("android.view.ViewGroup");
					SootMethod addViewMethod = ViewGroupClass.getMethod("void addView(android.view.View,int)");
					assert addViewMethod != null && addViewMethod.isConcrete();
					
					InvokeExpr newExpr = Jimple.v().newVirtualInvokeExpr(
							(Local) ((VirtualInvokeExpr) ((InvokeStmt) stmt).getInvokeExpr()).getBase(), 
							addViewMethod.makeRef(), 
							((VirtualInvokeExpr) ((InvokeStmt) stmt).getInvokeExpr()).getArg(0),
							IntConstant.v(0));
					InvokeStmt newStmt = Jimple.v().newInvokeStmt(newExpr);
					
					patchMap.put(stmt, newStmt);
				}
				
				for (Stmt srcStmt : patchMap.keySet()) {
					Stmt tgtStmt = patchMap.get(srcStmt);
					units.insertAfter(tgtStmt, srcStmt);
					units.remove(srcStmt);
				}
			}
		}
		
		injectCode();
	}
	
	private static void injectCode() {
		// find candidate classes
		HashSet<SootClass> candidateApplicationClasses = new HashSet<SootClass>();
		for(SootClass sootClass : Scene.v().getApplicationClasses()) {
			Queue<SootClass> candidateQ = new LinkedList<SootClass>();
			candidateQ.add(sootClass);
			while (!candidateQ.isEmpty()) {
				boolean foundFlag = false;
				SootClass curClass = candidateQ.poll();
				
				if (curClass.hasSuperclass()) {
					candidateQ.add(curClass.getSuperclass());
				}
				
				for (SootMethod sootMethod : curClass.getMethods()) {
					if (sootMethod.getSubSignature().contains("android.view.Window getWindow()")) {
						candidateApplicationClasses.add(sootClass);
						foundFlag = true;
						break;
					}
				}
				
				if (foundFlag)
					break;
			}
		}
		
		// inject generated TextView
		for (SootClass sootClass : candidateApplicationClasses) {
			for (SootMethod sootMethod : sootClass.getMethods()) {
				// System.out.println("==== ==== ==== ====");
				// System.out.println(sootMethod.getSignature());
				
				try {
					sootMethod.retrieveActiveBody();
				} catch(RuntimeException re) {
					continue;
				}
				
				Body methodBody = sootMethod.retrieveActiveBody();
				LocalGenerator localGenerator = new LocalGenerator(methodBody);
				PatchingChain<Unit> units = methodBody.getUnits();
				
				HashMap<Unit, ArrayList<Unit>> injectPair = new HashMap<Unit, ArrayList<Unit>>();
				for (Unit unit : units) {
					Stmt stmt = (Stmt) unit;
					if (stmt.containsInvokeExpr() && stmt.getInvokeExpr().getMethod().getName().equals("setContentView")) {
						if (!(stmt.getInvokeExpr() instanceof VirtualInvokeExpr))
							continue;
						
						Local thiz = (Local) ((VirtualInvokeExpr) stmt.getInvokeExpr()).getBase();
						SootClass clzClass = Scene.v().getSootClass("java.lang.Class");
						SootClass clzObject = Scene.v().getSootClass("java.lang.Object");
						SootClass clzViewGeneration = Scene.v().getSootClass("hk.polyu.ViewGeneration");
						SootMethod mtdGetClass = clzObject.getMethodByName("getClass");
						SootMethod mtdGenerate = clzViewGeneration.getMethodByName("generate");
						
						// System.out.println(mtdGenerate.retrieveActiveBody().toString());
						
						Local lhs_0 = localGenerator.generateLocal(clzClass.getType());
						Expr rhs_0 = Jimple.v().newVirtualInvokeExpr(thiz, mtdGetClass.makeRef());
						Stmt stmt_0 = Jimple.v().newAssignStmt(lhs_0, rhs_0);
						
						Expr expr_1 = Jimple.v().newStaticInvokeExpr(mtdGenerate.makeRef(), thiz, lhs_0);
						Stmt stmt_1 = Jimple.v().newInvokeStmt(expr_1);
						
						ArrayList<Unit> injectUnits = new ArrayList<Unit>();
						injectUnits.add(stmt_0);
						injectUnits.add(stmt_1);
						injectPair.put(unit, injectUnits);
					}
				}
				for (Unit target : injectPair.keySet()) {
					units.insertAfter(injectPair.get(target), target);
				}
				
				// System.out.println(sootMethod.retrieveActiveBody());
			}
		}
	}

}
