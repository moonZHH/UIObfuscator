package hk.polyu.repackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import soot.ArrayType;
import soot.Body;
import soot.Local;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.Value;
import soot.javaToJimple.LocalGenerator;
import soot.jimple.ArrayRef;
import soot.jimple.AssignStmt;
import soot.jimple.CastExpr;
import soot.jimple.ClassConstant;
import soot.jimple.IntConstant;
import soot.jimple.InvokeExpr;
import soot.jimple.InvokeStmt;
import soot.jimple.Jimple;
import soot.jimple.NewArrayExpr;
import soot.jimple.NullConstant;
import soot.jimple.SpecialInvokeExpr;
import soot.jimple.StaticInvokeExpr;
import soot.jimple.Stmt;
import soot.jimple.StringConstant;
import soot.jimple.VirtualInvokeExpr;

public class WindowFlag {
	
	public static void generate() {
		injectCode();
	}
	
	// ---- //

	private static void injectCode() {
		String packageName = SootEnvironment.packageName;
		for (SootClass sClass : Scene.v().getClasses()) {
			if (!sClass.isApplicationClass())
				continue;
			if (!sClass.isConcrete())
				continue;
			if (!sClass.hasSuperclass())
				continue;
			if (!sClass.getName().startsWith(packageName))
				continue;
			
			ArrayList<SootClass> superClasses = new ArrayList<SootClass>();
			SootClass curClass = sClass;
			while(true) {
				SootClass superClass = curClass.getSuperclass();
				superClasses.add(superClass);
				curClass = superClass;
				if (!curClass.hasSuperclass())
					break;
			}
			// check super class array
			boolean isActivityClass = false;
			for (SootClass superClass : superClasses) {
				if (superClass.getName().contains("")) {
					isActivityClass = true;
					break;
				}
			}
			// 
			if (!isActivityClass)
				continue;
			
			// inject
			for (SootMethod sMethod : sClass.getMethods()) {
				if (!sMethod.getSignature().contains("void onCreate(android.os.Bundle)"))
					continue;
				
				Body body = sMethod.retrieveActiveBody();
				LocalGenerator localGenerator = new LocalGenerator(body);
				HashMap<Stmt, List<Stmt>> injectMap = new HashMap<>();
				Iterator<Unit> iterUnits = body.getUnits().iterator();
				while (iterUnits.hasNext()) {
					Unit currentUnit = iterUnits.next();
					Stmt currentStmt = (Stmt) currentUnit;
					if (currentStmt.containsInvokeExpr()) {
						SootMethod tgtMethod = currentStmt.getInvokeExpr().getMethod();
						if (tgtMethod.getSignature().contains("void setContentView(int)")) {
							SootClass windowClass = Scene.v().getSootClass("android.view.Window");
							SootMethod getWindow = findMethod(sClass, "getWindow");
							SootMethod addFlags = findMethod(windowClass, "addFlags");
							
							Local lhs_0 = localGenerator.generateLocal(windowClass.getType());
							InvokeExpr rhs_0 = Jimple.v().newVirtualInvokeExpr(body.getThisLocal(), getWindow.makeRef());
							AssignStmt stm_0 = Jimple.v().newAssignStmt(lhs_0, rhs_0);
							
							InvokeExpr rhs_1 = Jimple.v().newVirtualInvokeExpr(lhs_0, addFlags.makeRef(), IntConstant.v(8192));
							InvokeStmt stm_1 = Jimple.v().newInvokeStmt(rhs_1);
							
							List<Stmt> injectStmts = new ArrayList<Stmt>();
							injectStmts.add(stm_0);
							injectStmts.add(stm_1);
							injectMap.put(currentStmt, injectStmts);
						}
					}
				}
				
				for (Stmt targetStmt : injectMap.keySet()) {
					body.getUnits().insertAfter(injectMap.get(targetStmt), targetStmt);
				}
				
				// System.out.println(body.toString());
			}
		}
	}
	
	private static SootMethod findMethod(SootClass srcClass, String mtdName) {
		SootClass curClass = srcClass;
		SootMethod tgtMethod = null;
		while (true) {
			try {
				tgtMethod = curClass.getMethodByName(mtdName);
				return tgtMethod;
			} catch(Exception e) {
				if (tgtMethod == null && curClass.hasSuperclass()) {
					curClass = curClass.getSuperclass();
					continue;
				}
			}
		}
	}
	
}
