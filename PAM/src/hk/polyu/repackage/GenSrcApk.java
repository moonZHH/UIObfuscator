package hk.polyu.repackage;

import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

import soot.Body;
import soot.BooleanType;
import soot.ByteType;
import soot.CharType;
import soot.DoubleType;
import soot.FloatType;
import soot.IntType;
import soot.Local;
import soot.LongType;
import soot.Scene;
import soot.ShortType;
import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.Value;
import soot.VoidType;
import soot.jimple.DoubleConstant;
import soot.jimple.IdentityStmt;
import soot.jimple.IntConstant;
import soot.jimple.InvokeExpr;
import soot.jimple.InvokeStmt;
import soot.jimple.Jimple;
import soot.jimple.LongConstant;
import soot.jimple.NullConstant;
import soot.jimple.ParameterRef;
import soot.jimple.SpecialInvokeExpr;
import soot.jimple.Stmt;
import soot.jimple.ThisRef;

public class GenSrcApk {
	
	private HashSet<String> transitionAPISign = new HashSet<String>();
	public static String srcApkPath = "";
	
	public void exec() {
		gainSuspiciousAPI();
		removeTransitionStmt();
		
		String outputAppDirectory = "src_apk";
		String appName = SootEnvironment.apkFileName;
		String outputAppPath = outputAppDirectory + "/" + appName;
		srcApkPath = outputAppPath;
		File outputAppFile = new File(outputAppPath);
		if (outputAppFile.exists()) {
			outputAppFile.delete();
		}
		SootEnvironment.saveApk(outputAppDirectory, outputAppPath);
	}
	
	private void gainSuspiciousAPI() {
		for (SootClass sClass : Scene.v().getClasses()) {
			if (sClass.isApplicationClass() && !sClass.getName().startsWith("android.")) {
				continue;
			}
			
			for (SootMethod sMethod : sClass.getMethods()) {
				/*
				if (!sMethod.isConcrete()) {
					continue;
				}
				*/
				if (sMethod.getName().startsWith("startActivity") || sMethod.getName().startsWith("startActiviti") || sMethod.getName().startsWith("startIntentSender") ) {
					System.out.println("[DEBUG] suspicious framework API: " + sMethod.getSignature());
					transitionAPISign.add(sMethod.getSignature());
				}
			}
		}
	}
	
	private void removeTransitionStmt() {		
		ArrayList<SootMethod> removeMethodList = new ArrayList<SootMethod>();
		// collect the method which contains a suspicious transition framework API
		for (SootClass sClass : Scene.v().getApplicationClasses()) {
			/*
			if (!sClass.getName().startsWith(SootEnvironment.packageName)) {
				continue;
			}
			*/
			if (sClass.getName().startsWith("android.")) {
				continue;
			}
			if (sClass.isInterface() && Scene.v().getActiveHierarchy().getDirectImplementersOf(sClass).size() != 0) {
				continue;
			}
			if (sClass.isInterface() && Scene.v().getActiveHierarchy().getDirectSubinterfacesOf(sClass).size() != 0) {
				continue;
			}
			if (!(sClass.isInterface()) && Scene.v().getActiveHierarchy().getDirectSubclassesOf(sClass).size() != 0) {
				continue;
			}
			
			while(true) {
				try {
					for (SootMethod sMethod : sClass.getMethods()) {
						if (!sMethod.isConcrete()) {
							continue;
						}
				
						Body body = sMethod.retrieveActiveBody();
						Iterator<Unit> iterUnits = body.getUnits().iterator();
						while (iterUnits.hasNext()) {
							Unit currentUnit = iterUnits.next();
							Stmt currentStmt = (Stmt) currentUnit;
							if (currentStmt.containsInvokeExpr()) {
								InvokeExpr expr = currentStmt.getInvokeExpr();
								if (transitionAPISign.contains(expr.getMethod().getSignature())) {
									if (!removeMethodList.contains(sMethod))
										removeMethodList.add(sMethod);
									break;
								}
							}
						}
					}
					break;
				} catch (Exception e) {
					// 
				}
			}
		}
		// remove the method body
		for (SootMethod sMethod : removeMethodList) {
			System.out.println("[DEBUG] remove the method body of: " + sMethod.getSignature());
			
			Body newBody = Jimple.v().newBody();
			Body oldBody = sMethod.getActiveBody();
			
			Local baseSuper = null;
			ArrayList<Value> parameterList = new ArrayList<Value>();
			
			Iterator<Unit> iterUnits = oldBody.getUnits().iterator();
			while (iterUnits.hasNext()) {
				Unit currentUnit = iterUnits.next();
				Stmt currentStmt = (Stmt) currentUnit;
				// deal with ThisRefparameter identity statement
				if (currentStmt instanceof IdentityStmt && ((IdentityStmt) currentStmt).getRightOp() instanceof ThisRef) {
					baseSuper = (Local) ((IdentityStmt) currentStmt).getLeftOp();
					newBody.getUnits().add(currentUnit);
				}
				// deal with ParameterRef
				if (currentStmt instanceof IdentityStmt && ((IdentityStmt) currentStmt).getRightOp() instanceof ParameterRef) {
					Value parameter = ((IdentityStmt) currentStmt).getLeftOp();
					parameterList.add(parameter);
					newBody.getUnits().add(currentUnit);
				}
				// deal with the "super()" statement
				if (currentStmt.containsInvokeExpr() && currentStmt.getInvokeExpr() instanceof SpecialInvokeExpr) {
					SpecialInvokeExpr currentExpr = (SpecialInvokeExpr) currentStmt.getInvokeExpr();
					// very conservative (commonly, developers will remain the sub-signature of two classes with father-child relationship unchanged)
					if (currentExpr.getMethod().getSubSignature().equals(sMethod.getSubSignature())) {
						assert baseSuper != null;
						SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(baseSuper, currentExpr.getMethodRef(), parameterList);
						InvokeStmt stmt = Jimple.v().newInvokeStmt(expr);
						newBody.getUnits().add(stmt);
					}
				}
			}
			
			// ArrayType(ArrayRef),             BooleanType,                   ByteType,         CharType,
			// DoubleType(DoubleConstant),      FloatType(FloatConstant),      IntegerType,      IntType(IntConstant),      
			// LongType(LongConstant),          NullType(NullConstant),        RefType,          ShortType
			// VoidType
			if (sMethod.getReturnType() instanceof VoidType) {
				newBody.getUnits().add(Jimple.v().newReturnVoidStmt());
			} 
			else if (sMethod.getReturnType() instanceof BooleanType
				  || sMethod.getReturnType() instanceof ByteType
				  || sMethod.getReturnType() instanceof CharType
				  || sMethod.getReturnType() instanceof IntType
				  || sMethod.getReturnType() instanceof ShortType
					){
				newBody.getUnits().add(Jimple.v().newReturnStmt(IntConstant.v(0)));
			}
			else if (sMethod.getReturnType() instanceof DoubleType) {
				newBody.getUnits().add(Jimple.v().newReturnStmt(DoubleConstant.v(0.0)));
			}
			else if (sMethod.getReturnType() instanceof FloatType) {
				newBody.getUnits().add(Jimple.v().newReturnStmt(DoubleConstant.v(0.0)));
			}
			else if (sMethod.getReturnType() instanceof LongType) {
				newBody.getUnits().add(Jimple.v().newReturnStmt(LongConstant.v(0)));
			}
			else {
				newBody.getUnits().add(Jimple.v().newReturnStmt(NullConstant.v()));
			}
			
			// System.out.println("origin method body:\n" + sMethod.getActiveBody().toString());
			
			newBody.setMethod(sMethod);
			sMethod.setActiveBody(newBody);
			
			// System.out.println("new method body:\n" + sMethod.retrieveActiveBody().toString());
		}	
		
	}

}
