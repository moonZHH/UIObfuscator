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
import soot.Type;
import soot.Unit;
import soot.Value;
import soot.VoidType;
import soot.javaToJimple.LocalGenerator;
import soot.jimple.IdentityStmt;
import soot.jimple.InvokeStmt;
import soot.jimple.Jimple;
import soot.jimple.JimpleBody;
import soot.jimple.RetStmt;
import soot.jimple.ReturnStmt;
import soot.jimple.ReturnVoidStmt;
import soot.jimple.SpecialInvokeExpr;
import soot.jimple.StaticInvokeExpr;
import soot.jimple.Stmt;
import soot.jimple.StringConstant;
import soot.jimple.ThisRef;
import soot.jimple.VirtualInvokeExpr;

public class ParseApk {
	
	private void checkManifest() {
		// String manifestFilePath = decompileDirectoryPath + "/" + "AndroidManifest.xml";
		// File manifestFile = new File(manifestFilePath);
	}
	
	public void exec() {
		checkManifest();
		
		if (ParseManifest.applicationClassName.equals("")) {
			SootClass artificialApplicationClass = createArtificialApplicationClass(ParseManifest.packageName);
			SootMethod onCreateMethod = createOnCreateMethod(artificialApplicationClass);
			SootMethod execFixMethod = createResourcePatchMethod(artificialApplicationClass);
			inject(onCreateMethod, execFixMethod);
		} else {
			SootClass applicationClass = Scene.v().getSootClass(ParseManifest.applicationClassName);
			SootMethod onCreateMethod = createOnCreateMethod(applicationClass);
			SootMethod execFixMethod = createResourcePatchMethod(applicationClass);
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
			System.out.println("[DEBUG] The Application class of this Apk does not declare \"public void onCreate()\" method ...... ");
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
	
	private SootMethod createResourcePatchMethod(SootClass applicationClass) {
		SootMethod execFixMethod = new SootMethod("execFix", Arrays.asList(new Type[] {}), VoidType.v(), Modifier.PUBLIC);
		applicationClass.addMethod(execFixMethod);
		
		JimpleBody methodBody = Jimple.v().newBody(execFixMethod);
		execFixMethod.setActiveBody(methodBody);
		
		/**
		 * public void execFix() {
		 *     $r0 := @this: polyu.hk.styletheme.PatchApplication;
		 *     staticinvoke <polyu.hk.patch.AssetCopy: void copyFile(android.content.Context,java.lang.String,java.lang.String)>($r0, "patch_res_old.zip", "sdcard/");
		 *     staticinvoke <polyu.hk.patch.PatchResourceLoader: void loadPatchResources(android.content.Context,java.lang.String)>($r0, "sdcard/patch_res.zip");
		 *     return;
		 * }
		 */
		LocalGenerator localGen = new LocalGenerator(execFixMethod.getActiveBody());
		SootClass AssetCopyClass = Scene.v().getSootClass("hk.polyu.patch.AssetCopy");
		SootMethod CopyFileMethod = AssetCopyClass.getMethod("void copyFile(android.content.Context,java.lang.String,java.lang.String)");
		SootClass PatchResourceLoaderClass = Scene.v().getSootClass("hk.polyu.patch.PatchResourceLoader");
		SootMethod LoadPatchResources = PatchResourceLoaderClass.getMethod("void loadPatchResources(android.content.Context,java.lang.String)");
		// [0] $r0 := @this: polyu.hk.styletheme.PatchApplication;
		Local lhs_0 = localGen.generateLocal(applicationClass.getType());
		ThisRef rhs_0 = Jimple.v().newThisRef(applicationClass.getType());
		IdentityStmt stmt_0 = Jimple.v().newIdentityStmt(lhs_0, rhs_0);
		// [1] staticinvoke <polyu.hk.patch.AssetCopy: void copyFile(android.content.Context,java.lang.String,java.lang.String)>($r0, "patch_res_old.zip", "sdcard/");
		Value arg0_1 = lhs_0;
		Value arg1_1 = StringConstant.v("origin_resources.zip");
		Value arg2_1 = StringConstant.v("sdcard/");
		StaticInvokeExpr expr_1 = Jimple.v().newStaticInvokeExpr(CopyFileMethod.makeRef(), arg0_1, arg1_1, arg2_1);
		InvokeStmt stmt_1 = Jimple.v().newInvokeStmt(expr_1);
		// [2] staticinvoke <polyu.hk.patch.PatchResourceLoader: void loadPatchResources(android.content.Context,java.lang.String)>($r0, "sdcard/patch_res.zip");
		Value arg0_2 = lhs_0;
		Value arg1_2 = StringConstant.v("sdcard/origin_resources.zip");
		StaticInvokeExpr expr_2 = Jimple.v().newStaticInvokeExpr(LoadPatchResources.makeRef(), arg0_2, arg1_2);
		InvokeStmt stmt_2 = Jimple.v().newInvokeStmt(expr_2);
		// [3] return;
		ReturnVoidStmt stmt_3 = Jimple.v().newReturnVoidStmt();
		
		List<Unit> insertStmtList = new ArrayList<Unit>();
		insertStmtList.add(stmt_0);
		insertStmtList.add(stmt_1);
		insertStmtList.add(stmt_2);
		insertStmtList.add(stmt_3);
		
		methodBody.getUnits().addAll(insertStmtList);
		
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
