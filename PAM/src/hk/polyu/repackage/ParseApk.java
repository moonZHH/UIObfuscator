package hk.polyu.repackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import soot.Local;
import soot.Modifier;
import soot.PatchingChain;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.Trap;
import soot.Type;
import soot.Unit;
import soot.Value;
import soot.VoidType;
import soot.javaToJimple.LocalGenerator;
import soot.jimple.AssignStmt;
import soot.jimple.EnterMonitorStmt;
import soot.jimple.ExitMonitorStmt;
import soot.jimple.IdentityStmt;
import soot.jimple.InvokeStmt;
import soot.jimple.Jimple;
import soot.jimple.JimpleBody;
import soot.jimple.NewExpr;
import soot.jimple.RetStmt;
import soot.jimple.ReturnStmt;
import soot.jimple.ReturnVoidStmt;
import soot.jimple.SpecialInvokeExpr;
import soot.jimple.StaticInvokeExpr;
import soot.jimple.Stmt;
import soot.jimple.StringConstant;
import soot.jimple.ThisRef;
import soot.jimple.ThrowStmt;
import soot.jimple.VirtualInvokeExpr;

public class ParseApk {
	
	public void exec() {
		if (ParseManifest.applicationClassName.equals("")) {
			SootClass artificialApplicationClass = createArtificialApplicationClass(ParseManifest.packageName);
			SootMethod onCreateMethod = createOnCreateMethod(artificialApplicationClass);
			SootMethod execFixMethod = createLoadPatchMethod(artificialApplicationClass);
			inject(onCreateMethod, execFixMethod);
		} else {
			SootClass applicationClass = Scene.v().getSootClass(ParseManifest.applicationClassName);
			SootMethod onCreateMethod = createOnCreateMethod(applicationClass);
			SootMethod execFixMethod = createLoadPatchMethod(applicationClass);
			inject(onCreateMethod, execFixMethod);
		}
		
		SootEnvironment.saveApk();
	}
	
	private SootClass createArtificialApplicationClass(String packageName) {
		SootClass ApplicationClass = Scene.v().getSootClass("android.app.Application");
		SootClass artificialApplicationClass = new SootClass(packageName + "." + "ArtificialApplicaion");
		Scene.v().addClass(artificialApplicationClass); // please be very careful that addClass() should be invoked before setApplicationClass()
		artificialApplicationClass.setSuperclass(ApplicationClass);
		artificialApplicationClass.setModifiers(Modifier.PUBLIC);
		artificialApplicationClass.setApplicationClass();
		Scene.v().getPhantomClasses().remove(artificialApplicationClass);
		
		SootMethod constructorMethod = new SootMethod("<init>", Arrays.asList(new Type[] {}), VoidType.v(), Modifier.CONSTRUCTOR | Modifier.PUBLIC);
		artificialApplicationClass.addMethod(constructorMethod);
		
		JimpleBody methodBody = Jimple.v().newBody(constructorMethod);
		constructorMethod.setActiveBody(methodBody);
		/**
		 * public constructor void <init>() {
		 *     $r0 := @this: hk.polyu.simpleapp.MyApplication;
		 *     specialinvoke $r0.<android.app.Application: void <init>()>();
		 *     return;
		 * }
		 */
		LocalGenerator localGen = new LocalGenerator(constructorMethod.getActiveBody());
		SootMethod ApplicationConstructorMethod = ApplicationClass.getMethod("void <init>()");
		// [0] $r0 := @this: hk.polyu.simpleapp.MyApplication;
		Local lhs_0 = localGen.generateLocal(artificialApplicationClass.getType());
		ThisRef rhs_0 = Jimple.v().newThisRef(artificialApplicationClass.getType());
		IdentityStmt stmt_0 = Jimple.v().newIdentityStmt(lhs_0, rhs_0);
		// [1] specialinvoke $r0.<android.app.Application: void <init>()>();
		Local base_1 = lhs_0;
		SpecialInvokeExpr expr_1 = Jimple.v().newSpecialInvokeExpr(base_1, ApplicationConstructorMethod.makeRef());
		InvokeStmt stmt_1 = Jimple.v().newInvokeStmt(expr_1);
		// [2] return;
		ReturnVoidStmt stmt_2 = Jimple.v().newReturnVoidStmt();
		
		List<Unit> insertStmtList = new ArrayList<Unit>();
		insertStmtList.add(stmt_0);
		insertStmtList.add(stmt_1);
		insertStmtList.add(stmt_2);
		
		methodBody.getUnits().addAll(insertStmtList);
		
		return artificialApplicationClass;
	}
	
	private SootMethod createOnCreateMethod(SootClass applicationClass) {
		SootMethod onCreateMethod = null;
		try {
			onCreateMethod = applicationClass.getMethod("void onCreate()");
		} catch (RuntimeException re) {
			System.out.println("[DEBUG] The Application class: " + applicationClass.getName() + " of this Apk does not declare \"public void onCreate()\" method ...... ");
			onCreateMethod = new SootMethod("onCreate", Arrays.asList(new Type[] {}), VoidType.v(), Modifier.PUBLIC);
			applicationClass.addMethod(onCreateMethod);
			
			JimpleBody methodBody = Jimple.v().newBody(onCreateMethod);
			onCreateMethod.setActiveBody(methodBody);
			
			/**
			 * public void onCreate() {
             *     hk.polyu.simpleapp.MyApplication $r0;
             *     $r0 := @this: hk.polyu.simpleapp.MyApplication;
             *     specialinvoke $r0.<android.app.Application: void onCreate()>();
             *     return;
             * }
			 */
			LocalGenerator localGen = new LocalGenerator(onCreateMethod.getActiveBody());
			SootClass ApplicatioinClass = Scene.v().getSootClass("android.app.Application");
			SootMethod ApplicationOnCreateMethod = ApplicatioinClass.getMethod("void onCreate()");
			// [0] $r0 := @this: hk.polyu.simpleapp.MyApplication;
			Local lhs_0 = localGen.generateLocal(applicationClass.getType());
			ThisRef rhs_0 = Jimple.v().newThisRef(applicationClass.getType());
			IdentityStmt stmt_0 = Jimple.v().newIdentityStmt(lhs_0, rhs_0);
			// [1] specialinvoke $r0.<android.app.Application: void onCreate()>();
			Local base_1 = lhs_0;
			SpecialInvokeExpr expr_1 = Jimple.v().newSpecialInvokeExpr(base_1, ApplicationOnCreateMethod.makeRef());
			InvokeStmt stmt_1 = Jimple.v().newInvokeStmt(expr_1);
			// [2] return;
			ReturnVoidStmt stmt_2 = Jimple.v().newReturnVoidStmt();
			
			List<Unit> insertStmtList = new ArrayList<Unit>();
			insertStmtList.add(stmt_0);
			insertStmtList.add(stmt_1);
			insertStmtList.add(stmt_2);
			
			methodBody.getUnits().addAll(insertStmtList);
		}
		
		assert onCreateMethod != null;
		return onCreateMethod;
	}
	
	private SootMethod createLoadPatchMethod(SootClass applicationClass) {
		SootMethod execFixMethod = new SootMethod("execFix", Arrays.asList(new Type[] {}), VoidType.v(), Modifier.PUBLIC);
		applicationClass.addMethod(execFixMethod);
		
		JimpleBody methodBody = Jimple.v().newBody(execFixMethod);
		execFixMethod.setActiveBody(methodBody);
		
		/**
		 * public void execFix() {
		 *     $r0 := @this: polyu.hk.styletheme.PatchApplication;
		 *     staticinvoke <polyu.hk.patch.AssetCopy: void copyFile(android.content.Context,java.lang.String,java.lang.String)>($r0, "patch.apatch", "sdcard/");
		 *     
		 *     return;
		 * }
		 */
		LocalGenerator localGen = new LocalGenerator(execFixMethod.getActiveBody());
		SootClass AssetCopyClass = Scene.v().getSootClass("hk.polyu.patch.AssetCopy");
		SootMethod CopyFileMethod = AssetCopyClass.getMethod("void copyFile(android.content.Context,java.lang.String,java.lang.String)");
		SootClass PatchManagerClass = Scene.v().getSootClass("com.alipay.euler.andfix.patch.PatchManager");
		SootMethod PatchManagerConstructor = PatchManagerClass.getMethod("void <init>(android.content.Context)");
		SootMethod PatchManagerInitMethod = PatchManagerClass.getMethod("void init(java.lang.String)");
		SootMethod PatchManagerAddPatchMethod = PatchManagerClass.getMethod("void addPatch(java.lang.String)");
		SootMethod PatchManagerLoadPatchMethod = PatchManagerClass.getMethod("void loadPatch()");
		SootClass ThrowableClass = Scene.v().getSootClass("java.lang.Throwable");
		
		// [0] $r0 := @this: polyu.hk.styletheme.PatchApplication;
		Local lhs_0 = localGen.generateLocal(applicationClass.getType());
		ThisRef rhs_0 = Jimple.v().newThisRef(applicationClass.getType());
		IdentityStmt stmt_0 = Jimple.v().newIdentityStmt(lhs_0, rhs_0);
		// [1] entermonitor $r0;
		Value arg_0 = lhs_0;
		EnterMonitorStmt stmt_1 = Jimple.v().newEnterMonitorStmt(arg_0);
		// [2] staticinvoke <polyu.hk.patch.AssetCopy: void copyFile(android.content.Context,java.lang.String,java.lang.String)>($r0, "patch.apatch", "sdcard/");
		Value arg0_2 = lhs_0;
		Value arg1_2 = StringConstant.v("patch.apatch");
		Value arg2_2 = StringConstant.v("sdcard/");
		StaticInvokeExpr expr_2 = Jimple.v().newStaticInvokeExpr(CopyFileMethod.makeRef(), arg0_2, arg1_2, arg2_2);
		InvokeStmt stmt_2 = Jimple.v().newInvokeStmt(expr_2);
		// [3] $r1 = new andfix.patch.PatchManager;
		Local lhs_3 = localGen.generateLocal(PatchManagerClass.getType());
		NewExpr expr_3 = Jimple.v().newNewExpr(PatchManagerClass.getType());
		AssignStmt stmt_3 = Jimple.v().newAssignStmt(lhs_3, expr_3);
		// [4] specialinvoke $r1.<andfix.patch.PatchManager: void <init>(android.content.Context)>($r0);
		Local base_4 = lhs_3;
		Value arg_4 = lhs_0;
		SpecialInvokeExpr expr_4 = Jimple.v().newSpecialInvokeExpr(base_4, PatchManagerConstructor.makeRef(), arg_4);
		InvokeStmt stmt_4 = Jimple.v().newInvokeStmt(expr_4);
		// [x] virtualinvoke $r1.<andfix.patch.PatchManager: void init(java.lang.String)>("xxxx");
		Local base_x = lhs_3;
		Value arg_x = StringConstant.v("1.0");
		VirtualInvokeExpr expr_x = Jimple.v().newVirtualInvokeExpr(base_x, PatchManagerInitMethod.makeRef(), arg_x);
		InvokeStmt stmt_x = Jimple.v().newInvokeStmt(expr_x);
		// [5] virtualinvoke $r1.<andfix.patch.PatchManager: void addPatch(java.lang.String)>("xxxx");
		Local base_5 = lhs_3;
		Value arg_5 = StringConstant.v("sdcard/patch.apatch");
		VirtualInvokeExpr expr_5 = Jimple.v().newVirtualInvokeExpr(base_5, PatchManagerAddPatchMethod.makeRef(), arg_5);
		InvokeStmt stmt_5 = Jimple.v().newInvokeStmt(expr_5);
		// [6] virtualinvoke $r1.<andfix.patch.PatchManager: void loadPatch()>();
		Local base_6 = lhs_3;
		VirtualInvokeExpr expr_6 = Jimple.v().newVirtualInvokeExpr(base_6, PatchManagerLoadPatchMethod.makeRef());
		InvokeStmt stmt_6 = Jimple.v().newInvokeStmt(expr_6);
		// [7] exitmonitor $r0;
		Value arg_7 = lhs_0;
		ExitMonitorStmt stmt_7 = Jimple.v().newExitMonitorStmt(arg_7);
		// [8] return;
		ReturnVoidStmt stmt_8 = Jimple.v().newReturnVoidStmt();
		// [9] $r2 := @caughtexception;
		Local lhs_9 = localGen.generateLocal(ThrowableClass.getType());
		Value rhs_9 = Jimple.v().newCaughtExceptionRef();
		IdentityStmt stmt_9 = Jimple.v().newIdentityStmt(lhs_9, rhs_9);
		// [10] exitmonitor $r0;
		Value arg_10 = lhs_0;
		ExitMonitorStmt stmt_10 = Jimple.v().newExitMonitorStmt(arg_10);
		// [11] throw $r2;
		Value arg_11 = lhs_9;
		ThrowStmt stmt_11 = Jimple.v().newThrowStmt(arg_11);
		// [12] catch java.lang.Throwable from label1 to label2 with label3;
		Trap trap_12 = Jimple.v().newTrap(ThrowableClass, stmt_2, stmt_7, stmt_9);
		
		List<Unit> insertStmtList = new ArrayList<Unit>();
		insertStmtList.add(stmt_0);
		insertStmtList.add(stmt_1);
		insertStmtList.add(stmt_2);
		insertStmtList.add(stmt_3);
		insertStmtList.add(stmt_4);
		insertStmtList.add(stmt_x);
		insertStmtList.add(stmt_5);
		insertStmtList.add(stmt_6);
		insertStmtList.add(stmt_7);
		insertStmtList.add(stmt_8);
		insertStmtList.add(stmt_9);
		insertStmtList.add(stmt_10);
		insertStmtList.add(stmt_11);
		
		methodBody.getUnits().addAll(insertStmtList);
		
		methodBody.getTraps().add(trap_12);
		
		return execFixMethod;
	}
	
	private void inject(SootMethod onCreateMethod, SootMethod execFixMethod) {
		ArrayList<Unit> retUnits = new ArrayList<Unit>();
		PatchingChain<Unit> units = onCreateMethod.retrieveActiveBody().getUnits();
		Iterator<Unit> unitIter = units.iterator();
		
		// get all return units
		while (unitIter.hasNext()) {
			Unit currentUnit = unitIter.next();
			Stmt currentStmt = (Stmt) currentUnit;
			if (currentStmt instanceof RetStmt || currentStmt instanceof ReturnStmt || currentStmt instanceof ReturnVoidStmt) {
				retUnits.add(currentUnit);
			}
		}
		
		// get "this" object
		Local thisLocal = null;
		unitIter = units.iterator();
		while (unitIter.hasNext()) {
			Unit currentUnit = unitIter.next();
			Stmt currentStmt = (Stmt) currentUnit;
			if (currentStmt instanceof IdentityStmt && ((IdentityStmt) currentStmt).getRightOp() instanceof ThisRef) {
				thisLocal = (Local) ((IdentityStmt) currentStmt).getLeftOp();
			}
		}
		
		// this.execFix()
		// insert before each "return" stmt
		for (Unit retUnit : retUnits) {
			VirtualInvokeExpr expr = Jimple.v().newVirtualInvokeExpr(thisLocal, execFixMethod.makeRef());
			InvokeStmt stmt = Jimple.v().newInvokeStmt(expr);
			units.insertBefore(stmt, retUnit);
		}
		
	}
	
	public static void main(String[] args) {
		ParseApk parser = new ParseApk();
		parser.exec();
	}

}
