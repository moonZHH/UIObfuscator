package hk.polyu.repackage;

import java.util.HashMap;

import soot.Body;
import soot.Local;
import soot.PatchingChain;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.jimple.Expr;
import soot.jimple.Jimple;
import soot.jimple.Stmt;
import soot.jimple.VirtualInvokeExpr;

public class InjectProxy {
	
	public static void inject() {
		injectCode();
	}
	
	private static void injectCode() {
		for (SootClass sootClass : Scene.v().getApplicationClasses()) {
			if (sootClass.getName().equals("hk.polyu.GlobalIntent") || sootClass.getName().equals("hk.polyu.ProxyActivity"))
				continue;
			
			for (SootMethod sootMethod : sootClass.getMethods()) {
				// System.out.println("==== ==== ==== ====");
				// System.out.println(sootMethod.getSignature());
				
				try {
					sootMethod.retrieveActiveBody();
				} catch(RuntimeException re) {
					continue;
				}
					
				Body methodBody = sootMethod.retrieveActiveBody();
				PatchingChain<Unit> units = methodBody.getUnits();
				
				HashMap<Unit, Unit> injectPair = new HashMap<Unit, Unit>();
				for (Unit unit : units) {
					Stmt stmt = (Stmt) unit;
					if (stmt.containsInvokeExpr() && stmt.getInvokeExpr().getMethod().getName().equals("startActivity")) {
						if (!(stmt.getInvokeExpr() instanceof VirtualInvokeExpr))
							continue;
						
						Local originContext = (Local) ((VirtualInvokeExpr) stmt.getInvokeExpr()).getBase();
						// check 
						{
							SootClass clzBaseClass = Scene.v().getSootClass(originContext.getType().toString());
							SootClass clzSuperClass = clzBaseClass;
							while (!clzSuperClass.getName().equals("android.content.Context") && clzSuperClass.hasSuperclass()) {
								clzSuperClass = clzSuperClass.getSuperclass();
							}
							if (clzSuperClass.getName().equals("java.lang.Object")) {
								// assert false; // should not reach this point
								continue;
							}
						}
						Local originIntent = (Local) ((VirtualInvokeExpr) stmt.getInvokeExpr()).getArg(0);
						if (!originIntent.getType().toString().equals("android.content.Intent")) {
							// assert false; // should not reach this point
							continue;
						}
						
						SootClass clzGlobalIntent = Scene.v().getSootClass("hk.polyu.GlobalIntent");
						SootMethod mtdProxyTransition = clzGlobalIntent.getMethodByName("proxyTransition");
						
						Expr expr_0 = Jimple.v().newStaticInvokeExpr(mtdProxyTransition.makeRef(), originContext, originIntent);
						Stmt stmt_0 = Jimple.v().newInvokeStmt(expr_0);
						
						injectPair.put(unit, stmt_0);
					}
				}
				
				// if (!injectPair.keySet().isEmpty())
				// 	System.out.println(sootMethod.retrieveActiveBody());
				
				for (Unit target : injectPair.keySet()) {
					units.insertAfter(injectPair.get(target), target);
				}
				units.removeAll(injectPair.keySet());
				
				// if (!injectPair.keySet().isEmpty())
				// 	System.out.println(sootMethod.retrieveActiveBody());
			}
		}
	}

}
