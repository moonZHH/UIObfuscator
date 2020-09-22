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

public class JavaReflection {
	
	private static Set<String> transitionAPISign = null;
	private static Set<String> intentAPISign = null;
	
	public static void generate() {
		gainSuspiciousAPI_Activity();
		injectCode_Activity();
		gainSuspiciousAPI_Intent();
		injectCode_Intent();
	}
	
	// ---- //
	
	private static void gainSuspiciousAPI_Activity() {
		transitionAPISign = new HashSet<String>();
		
		for (SootClass sClass : Scene.v().getClasses()) {
			if (sClass.isApplicationClass()) {
				continue;
			}
			
			for (SootMethod sMethod : sClass.getMethods()) {
				if (!sMethod.isConcrete()) {
					continue;
				}
				if (sMethod.getName().startsWith("startActivity") || sMethod.getName().startsWith("startActiviti") || sMethod.getName().startsWith("startIntentSender") ) {
					System.out.println("[DEBUG] suspicious framework API: " + sMethod.getSignature());
					transitionAPISign.add(sMethod.getSignature());
				}
			}
		}
	}
	
	private static void injectCode_Activity() {
		for (SootClass sClass : Scene.v().getApplicationClasses()) {
			if (sClass.getName().startsWith("android."))
				continue;
			
			List<SootMethod> methods = sClass.getMethods();
			for (int idx = 0; idx < methods.size(); idx++) {
				SootMethod sMethod = methods.get(idx);
				if (!sMethod.isConcrete()) {
					continue;
				}
				
				Body body = sMethod.retrieveActiveBody();
				/*
				System.out.println("[DEBUG] origin method body");
				System.out.println(body);
				*/
				
				HashMap<Stmt, List<Stmt>> injectMap = new HashMap<>();
				Iterator<Unit> iterUnits = body.getUnits().iterator();
				while (iterUnits.hasNext()) {
					Unit currentUnit = iterUnits.next();
					Stmt currentStmt = (Stmt) currentUnit;
					if (currentStmt.containsInvokeExpr()) {
						InvokeExpr expr = currentStmt.getInvokeExpr();
						SootMethod invokedMethod = expr.getMethod();
						if (!transitionAPISign.contains(invokedMethod.getSignature()))
							continue;
						
						System.out.println("[DEBUG] found " + invokedMethod.getSignature() + " in " + sMethod.getSignature());
						SootClass targetClass = invokedMethod.getDeclaringClass();
						
						// generate the injected code
						List<Stmt> injectStmts = new ArrayList<Stmt>();
						{
							LocalGenerator localGenerator = new LocalGenerator(body);
							
							SootClass klassClass = Scene.v().getSootClass("java.lang.Class");
							SootMethod forNameMethod = klassClass.getMethod("java.lang.Class forName(java.lang.String)");
							SootMethod getMethodMethod = klassClass.getMethod("java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])");
							SootClass methodClass = Scene.v().getSootClass("java.lang.reflect.Method");
							SootMethod invokeMethod = methodClass.getMethod("java.lang.Object invoke(java.lang.Object,java.lang.Object[])");
							SootClass objectClass = Scene.v().getSootClass("java.lang.Object");
							
							Local lhs_0 = localGenerator.generateLocal(klassClass.getType());
							StaticInvokeExpr rhs_0 = Jimple.v().newStaticInvokeExpr(forNameMethod.makeRef(), StringConstant.v(targetClass.getName()));
							AssignStmt stmt_0 = Jimple.v().newAssignStmt(lhs_0, rhs_0);
							
							Local lhs_1 = localGenerator.generateLocal(ArrayType.v(klassClass.getType(), invokedMethod.getParameterCount()));
							NewArrayExpr rhs_1 = Jimple.v().newNewArrayExpr(klassClass.getType(), IntConstant.v(invokedMethod.getParameterCount()));
							AssignStmt stmt_1 = Jimple.v().newAssignStmt(lhs_1, rhs_1);
							
							List<Stmt> stmtList_2 = new ArrayList<Stmt>();
							for (int argIdx = 0; argIdx < invokedMethod.getParameterCount(); argIdx++) {
								ArrayRef lhs = Jimple.v().newArrayRef(lhs_1, IntConstant.v(argIdx));
								String className = expr.getArg(argIdx).getType().toString();
								className = className.replace(".", "/");
								if (!className.startsWith("L"))
									className = "L" + className;
								if (!className.endsWith(";"))
									className = className + ";";
								// System.out.println(className);
								ClassConstant rhs = ClassConstant.v(className);
								AssignStmt stmt = Jimple.v().newAssignStmt(lhs, rhs);
								stmtList_2.add(stmt);
							}
							
							Local lhs_3 = localGenerator.generateLocal(methodClass.getType());
							VirtualInvokeExpr rhs_3 = Jimple.v().newVirtualInvokeExpr(lhs_0, getMethodMethod.makeRef(), StringConstant.v(invokedMethod.getName()), lhs_1);
							AssignStmt stmt_3 = Jimple.v().newAssignStmt(lhs_3, rhs_3);
							
							Local lhs_4 = localGenerator.generateLocal(ArrayType.v(objectClass.getType(), invokedMethod.getParameterCount()));
							NewArrayExpr rhs_4 = Jimple.v().newNewArrayExpr(objectClass.getType(), IntConstant.v(invokedMethod.getParameterCount()));
							AssignStmt stmt_4 = Jimple.v().newAssignStmt(lhs_4, rhs_4);
							
							List<Stmt> stmtList_5 = new ArrayList<Stmt>();
							for (int argIdx = 0; argIdx < invokedMethod.getParameterCount(); argIdx++) {
								ArrayRef lhs = Jimple.v().newArrayRef(lhs_4, IntConstant.v(argIdx));
								Value rhs = expr.getArg(argIdx);
								AssignStmt stmt = Jimple.v().newAssignStmt(lhs, rhs);
								stmtList_5.add(stmt);
							}
							
							Value baseArg = NullConstant.v();
							if (expr instanceof VirtualInvokeExpr)
								baseArg = ((VirtualInvokeExpr) expr).getBase();
							VirtualInvokeExpr expr_6 = Jimple.v().newVirtualInvokeExpr(lhs_3, invokeMethod.makeRef(), baseArg, lhs_4);
							InvokeStmt stmt_6 = Jimple.v().newInvokeStmt(expr_6);
						
							injectStmts.add(stmt_0);
							injectStmts.add(stmt_1);
							injectStmts.addAll(stmtList_2);
							injectStmts.add(stmt_3);
							injectStmts.add(stmt_4);
							injectStmts.addAll(stmtList_5);
							injectStmts.add(stmt_6);
						}
						
						injectMap.put(currentStmt, injectStmts);
					}
				}
				
				for (Stmt targetStmt : injectMap.keySet()) {
					body.getUnits().insertAfter(injectMap.get(targetStmt), targetStmt);
					body.getUnits().remove(targetStmt);
				}
				
				/*
				if (!injectMap.isEmpty()) {
					System.out.println("[DEBUG] modified method body");
					System.out.println(body);
				}
				*/
			}
		}
	}
	
	// ---- //
	
	private static void gainSuspiciousAPI_Intent() {
		intentAPISign = new HashSet<String>();
		
		for (SootClass sClass : Scene.v().getClasses()) {
			if (sClass.isApplicationClass()) {
				continue;
			}
			
			for (SootMethod sMethod : sClass.getMethods()) {
				if (!sMethod.isConcrete()) {
					continue;
				}
				if (sMethod.getSignature().contains("android.content.Intent: void <init>") && sMethod.getParameterCount() > 0) {
					System.out.println("[DEBUG] suspicious framework API: " + sMethod.getSignature());
					intentAPISign.add(sMethod.getSignature());
				}
			}
		}
	}
	
	private static void injectCode_Intent() {
		for (SootClass sClass : Scene.v().getApplicationClasses()) {
			if (sClass.getName().startsWith("android."))
				continue;
			
			for (SootMethod sMethod : sClass.getMethods()) {
				if (!sMethod.isConcrete()) {
					continue;
				}
				
				Body body = sMethod.retrieveActiveBody();
				
				HashMap<Stmt, List<Stmt>> injectMap = new HashMap<>();
				Iterator<Unit> iterUnits = body.getUnits().iterator();
				while (iterUnits.hasNext()) {
					Unit currentUnit = iterUnits.next();
					Stmt currentStmt = (Stmt) currentUnit;
					if (currentStmt.containsInvokeExpr()) {
						InvokeExpr expr = currentStmt.getInvokeExpr();
						if (!(expr instanceof SpecialInvokeExpr))
							continue;
						
						SootMethod invokedMethod = expr.getMethod();
						if (!intentAPISign.contains(invokedMethod.getSignature()))
							continue;
						
						System.out.println("[DEBUG] found " + invokedMethod.getSignature() + " in " + sMethod.getSignature() + " -> " + currentStmt);
						SootClass targetClass = invokedMethod.getDeclaringClass();
						
						// generate the injected code
						List<Stmt> injectStmts = new ArrayList<Stmt>();
						{
							LocalGenerator localGenerator = new LocalGenerator(body);
							
							SootClass klassClass = Scene.v().getSootClass("java.lang.Class");
							SootMethod forNameMethod = klassClass.getMethod("java.lang.Class forName(java.lang.String)");
							SootMethod getConstructorMethod = klassClass.getMethod("java.lang.reflect.Constructor getConstructor(java.lang.Class[])");
							SootClass constructorClass = Scene.v().getSootClass("java.lang.reflect.Constructor");
							SootMethod newInstanceMethod = constructorClass.getMethod("java.lang.Object newInstance(java.lang.Object[])");
							SootClass objectClass = Scene.v().getSootClass("java.lang.Object");
							SootClass intentClass = Scene.v().getSootClass("android.content.Intent");
							
							Local lhs_0 = localGenerator.generateLocal(klassClass.getType());
							StaticInvokeExpr rhs_0 = Jimple.v().newStaticInvokeExpr(forNameMethod.makeRef(), StringConstant.v(targetClass.getName()));
							AssignStmt stmt_0 = Jimple.v().newAssignStmt(lhs_0, rhs_0);
							
							Local lhs_1 = localGenerator.generateLocal(ArrayType.v(klassClass.getType(), invokedMethod.getParameterCount()));
							NewArrayExpr rhs_1 = Jimple.v().newNewArrayExpr(klassClass.getType(), IntConstant.v(invokedMethod.getParameterCount()));
							AssignStmt stmt_1 = Jimple.v().newAssignStmt(lhs_1, rhs_1);
							
							List<Stmt> stmtList_2 = new ArrayList<Stmt>();
							for (int argIdx = 0; argIdx < invokedMethod.getParameterCount(); argIdx++) {
								ArrayRef lhs = Jimple.v().newArrayRef(lhs_1, IntConstant.v(argIdx));
								String className = expr.getArg(argIdx).getType().toString();
								className = className.replace(".", "/");
								if (!className.startsWith("L"))
									className = "L" + className;
								if (!className.endsWith(";"))
									className = className + ";";
								// System.out.println(className);
								if (!className.contains("android/content/Intent") 
								 && !className.contains("java/lang/String") 
								 && !className.contains("android/net/Uri") 
								 && !className.contains("android/content/Context") 
								 && !className.contains("java/lang/Class"))
									className = "Landroid/content/Context;";
								ClassConstant rhs = ClassConstant.v(className);
								AssignStmt stmt = Jimple.v().newAssignStmt(lhs, rhs);
								stmtList_2.add(stmt);
							}
							
							Local lhs_3 = localGenerator.generateLocal(constructorClass.getType());
							VirtualInvokeExpr rhs_3 = Jimple.v().newVirtualInvokeExpr(lhs_0, getConstructorMethod.makeRef(), lhs_1);
							AssignStmt stmt_3 = Jimple.v().newAssignStmt(lhs_3, rhs_3);
							
							Local lhs_4 = localGenerator.generateLocal(ArrayType.v(objectClass.getType(), invokedMethod.getParameterCount()));
							NewArrayExpr rhs_4 = Jimple.v().newNewArrayExpr(objectClass.getType(), IntConstant.v(invokedMethod.getParameterCount()));
							AssignStmt stmt_4 = Jimple.v().newAssignStmt(lhs_4, rhs_4);
							
							List<Stmt> stmtList_5 = new ArrayList<Stmt>();
							for (int argIdx = 0; argIdx < invokedMethod.getParameterCount(); argIdx++) {
								ArrayRef lhs = Jimple.v().newArrayRef(lhs_4, IntConstant.v(argIdx));
								Value rhs = expr.getArg(argIdx);
								AssignStmt stmt = Jimple.v().newAssignStmt(lhs, rhs);
								stmtList_5.add(stmt);
							}
							
							Local lhs_6 = localGenerator.generateLocal(objectClass.getType());
							VirtualInvokeExpr rhs_6 = Jimple.v().newVirtualInvokeExpr(lhs_3, newInstanceMethod.makeRef(), lhs_4);
							AssignStmt stmt_6 = Jimple.v().newAssignStmt(lhs_6, rhs_6);
						
							Local lhs_7 = (Local) ((SpecialInvokeExpr) expr).getBase();
							CastExpr rhs_7 = Jimple.v().newCastExpr(lhs_6, intentClass.getType());
							AssignStmt stmt_7 = Jimple.v().newAssignStmt(lhs_7, rhs_7);
							
							injectStmts.add(stmt_0);
							injectStmts.add(stmt_1);
							injectStmts.addAll(stmtList_2);
							injectStmts.add(stmt_3);
							injectStmts.add(stmt_4);
							injectStmts.addAll(stmtList_5);
							injectStmts.add(stmt_6);
							injectStmts.add(stmt_7);
						}
						
						injectMap.put(currentStmt, injectStmts);
					}
				}
				
				for (Stmt targetStmt : injectMap.keySet()) {
					body.getUnits().insertAfter(injectMap.get(targetStmt), targetStmt);
					body.getUnits().remove(targetStmt);
				}
				
				/*
				if (!injectMap.isEmpty()) {
					System.out.println("[DEBUG] modified method body");
					System.out.println(body);
				}
				*/
			}
		}
	}

}
