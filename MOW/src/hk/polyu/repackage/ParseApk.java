package hk.polyu.repackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import soot.Body;
import soot.Local;
import soot.Modifier;
import soot.PatchingChain;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.Type;
import soot.Unit;
import soot.Value;
import soot.VoidType;
import soot.javaToJimple.LocalGenerator;
import soot.jimple.IdentityStmt;
import soot.jimple.InvokeStmt;
import soot.jimple.Jimple;
import soot.jimple.JimpleBody;
import soot.jimple.ParameterRef;
import soot.jimple.ReturnVoidStmt;
import soot.jimple.SpecialInvokeExpr;
import soot.jimple.StaticInvokeExpr;
import soot.jimple.Stmt;
import soot.jimple.ThisRef;

public class ParseApk {
	
	public void exec() {
		injectMasqueradeDialog();
		SootEnvironment.saveApk();
	}
	
	private void injectMasqueradeDialog() {
		// the actual activity class means that this activity contains the "void onCreate(android.os.Bundle)" method
		HashSet<String> actualActivitySet = new HashSet<String>();
		
		for (SootClass sClass : Scene.v().getApplicationClasses()) {
			// currently, only deal with activities declared in AndroidManifest.xml
			if (!sClass.isConcrete()) {
				continue;
			}
			
			for (String activityNamePartial : SootEnvironment.activitySet) {
				if (sClass.getName().endsWith(activityNamePartial)) {
					if (sClass.declaresMethod("void onCreate(android.os.Bundle)")) {
						actualActivitySet.add(sClass.getName());
					} else {
						SootClass currentClass = sClass;
						boolean errorFlag = true;
						while (currentClass.hasSuperclass() && currentClass.getSuperclass().isApplicationClass()) {
							currentClass = currentClass.getSuperclass();
							if (currentClass.declaresMethod("void onCreate(android.os.Bundle)")) {
								actualActivitySet.add(currentClass.getName());
								errorFlag = false;
								break;
							}
						}
						assert (errorFlag == false);
					}
				}
			}
			
			// check onResume method
			for (String activityClassName : actualActivitySet) {
				SootClass activityClass  = Scene.v().getSootClass(activityClassName);
				if (!activityClass.declaresMethodByName("onResume")) {
					// find super class that defines onStop
					SootClass currentClass = activityClass;
					SootClass superClass = null;
					while (currentClass.hasSuperclass()) {
						currentClass = currentClass.getSuperclass();
						if (currentClass.declaresMethodByName("onResume")) {
							superClass = currentClass;
							break;
						}
					}
					
					assert (superClass != null);
					
					SootMethod onStopMethod = new SootMethod("onResume", Arrays.asList(new Type[] {}), VoidType.v(), Modifier.PROTECTED);
					activityClass.addMethod(onStopMethod);
					
					JimpleBody methodBody = Jimple.v().newBody(onStopMethod);
					onStopMethod.setActiveBody(methodBody);
					
					LocalGenerator localGen = new LocalGenerator(onStopMethod.getActiveBody());
					SootMethod superClassOnStopMethod = superClass.getMethodByName("onResume");
					
					Local lhs_0 = localGen.generateLocal(superClass.getType());
					ThisRef rhs_0 = Jimple.v().newThisRef(superClass.getType());
					IdentityStmt stmt_0 = Jimple.v().newIdentityStmt(lhs_0, rhs_0);
					
					Local base_2 = lhs_0;
					SpecialInvokeExpr expr_2 = Jimple.v().newSpecialInvokeExpr(base_2, superClassOnStopMethod.makeRef());
					InvokeStmt stmt_2 = Jimple.v().newInvokeStmt(expr_2);
					
					ReturnVoidStmt stmt_3 = Jimple.v().newReturnVoidStmt();
					
					List<Unit> insertStmtList = new ArrayList<Unit>();
					insertStmtList.add(stmt_0);
					insertStmtList.add(stmt_2);
					insertStmtList.add(stmt_3);
					
					methodBody.getUnits().addAll(insertStmtList);
				}
			}
			
			// check onStop method
			for (String activityClassName : actualActivitySet) {
				SootClass activityClass  = Scene.v().getSootClass(activityClassName);
				if (!activityClass.declaresMethodByName("onPause")) {
					// find super class that defines onStop
					SootClass currentClass = activityClass;
					SootClass superClass = null;
					while (currentClass.hasSuperclass()) {
						currentClass = currentClass.getSuperclass();
						if (currentClass.declaresMethodByName("onPause")) {
							superClass = currentClass;
							break;
						}
					}
					
					assert (superClass != null);
					
					SootMethod onStopMethod = new SootMethod("onPause", Arrays.asList(new Type[] {}), VoidType.v(), Modifier.PROTECTED);
					activityClass.addMethod(onStopMethod);
					
					JimpleBody methodBody = Jimple.v().newBody(onStopMethod);
					onStopMethod.setActiveBody(methodBody);
					
					LocalGenerator localGen = new LocalGenerator(onStopMethod.getActiveBody());
					SootMethod superClassOnStopMethod = superClass.getMethodByName("onPause");
					
					Local lhs_0 = localGen.generateLocal(superClass.getType());
					ThisRef rhs_0 = Jimple.v().newThisRef(superClass.getType());
					IdentityStmt stmt_0 = Jimple.v().newIdentityStmt(lhs_0, rhs_0);
					
					Local base_2 = lhs_0;
					SpecialInvokeExpr expr_2 = Jimple.v().newSpecialInvokeExpr(base_2, superClassOnStopMethod.makeRef());
					InvokeStmt stmt_2 = Jimple.v().newInvokeStmt(expr_2);
					
					ReturnVoidStmt stmt_3 = Jimple.v().newReturnVoidStmt();
					
					List<Unit> insertStmtList = new ArrayList<Unit>();
					insertStmtList.add(stmt_0);
					insertStmtList.add(stmt_2);
					insertStmtList.add(stmt_3);
					
					methodBody.getUnits().addAll(insertStmtList);
				}
			}
		}
		
		for (String activityClassName : actualActivitySet) {
			SootClass activityClass  = Scene.v().getSootClass(activityClassName);
			assert activityClass.declaresMethod("void onResume()");
			assert activityClass.declaresMethod("void onPause()");
			
			System.out.println("application activity component: " + activityClass.getName());
			inject(activityClass);
			injectDismissDialog(activityClass);
		}
	}
	
	private void inject(SootClass activityClass) {
		SootMethod onCreateMethod = activityClass.getMethod("void onResume()");
		Body body = onCreateMethod.retrieveActiveBody();
		PatchingChain<Unit> units = body.getUnits();
		Iterator<Unit> unitIter = units.iterator();
		
		Value thisValue = null;
		Unit tgtUnit = null;
		while (unitIter.hasNext()) {
			Unit currentUnit = unitIter.next();
			Stmt currentStmt = (Stmt) currentUnit;
			
			if (currentStmt instanceof IdentityStmt && ((IdentityStmt) currentStmt).getRightOp() instanceof ThisRef) {
				thisValue = ((IdentityStmt) currentStmt).getLeftOp();
			}
			
			if (tgtUnit == null && currentStmt instanceof ReturnVoidStmt) {
				tgtUnit = currentUnit;
			}
		}
		assert thisValue != null;
		assert tgtUnit != null;
		
		// staticinvoke <hk.polyu.DialogCreator: void ShowDialog(android.app.Activity)>($r0);
		SootClass DialogCreatorClass = Scene.v().getSootClass("hk.polyu.DialogCreator");
		SootMethod ShowDialogMethod = DialogCreatorClass.getMethod("void ShowDialog(android.app.Activity)");
		StaticInvokeExpr expr = Jimple.v().newStaticInvokeExpr(ShowDialogMethod.makeRef(), thisValue);
		InvokeStmt stmt = Jimple.v().newInvokeStmt(expr);
		units.insertBefore(stmt, tgtUnit);
	}
	
	private void injectDismissDialog(SootClass activityClass) {
		SootMethod onCreateMethod = activityClass.getMethod("void onPause()");
		Body body = onCreateMethod.retrieveActiveBody();
		PatchingChain<Unit> units = body.getUnits();
		Iterator<Unit> unitIter = units.iterator();
		
		Unit tgtUnit = null;
		while (unitIter.hasNext()) {
			Unit currentUnit = unitIter.next();
			Stmt currentStmt = (Stmt) currentUnit;
			
			if (currentStmt instanceof ReturnVoidStmt) {
				tgtUnit = currentUnit;
			}
		}
		assert tgtUnit != null;
		
		// staticinvoke <hk.polyu.DialogCreator: void ShowDialog(android.app.Activity)>($r0);
		SootClass DialogCreatorClass = Scene.v().getSootClass("hk.polyu.DialogCreator");
		SootMethod ShowDialogMethod = DialogCreatorClass.getMethod("void dismissDialog()");
		StaticInvokeExpr expr = Jimple.v().newStaticInvokeExpr(ShowDialogMethod.makeRef());
		InvokeStmt stmt = Jimple.v().newInvokeStmt(expr);
		units.insertBefore(stmt, tgtUnit);
	}

}
