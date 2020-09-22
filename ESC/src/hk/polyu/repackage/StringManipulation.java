package hk.polyu.repackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import soot.Body;
import soot.Local;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.Value;
import soot.javaToJimple.LocalGenerator;
import soot.jimple.AssignStmt;
import soot.jimple.ClassConstant;
import soot.jimple.GotoStmt;
import soot.jimple.IfStmt;
import soot.jimple.InvokeExpr;
import soot.jimple.InvokeStmt;
import soot.jimple.Jimple;
import soot.jimple.LookupSwitchStmt;
import soot.jimple.NewExpr;
import soot.jimple.SpecialInvokeExpr;
import soot.jimple.StaticInvokeExpr;
import soot.jimple.Stmt;
import soot.jimple.StringConstant;
import soot.jimple.SwitchStmt;
import soot.jimple.TableSwitchStmt;
import soot.jimple.VirtualInvokeExpr;

public class StringManipulation {
	
	public static void generate() {
		injectCode();
	}
	
	private static void injectCode() {
		for (SootClass sClass : Scene.v().getApplicationClasses()) {
			if (sClass.getName().startsWith("android."))
				continue;
				
			for (SootMethod sMethod : sClass.getMethods()) {
				if (!sMethod.isConcrete()) {
					continue;
				}
				
				Body body = sMethod.retrieveActiveBody();
				// System.out.println("[DEBUG] origin method body");
				// System.out.println(body);
				
				List<GotoStmt> gotoStmts = new ArrayList<GotoStmt>();
				List<IfStmt> ifStmts = new ArrayList<IfStmt>();
				List<SwitchStmt> switchStmts = new ArrayList<SwitchStmt>(); // SwitchStmt, LookupSwitchStmt, TableSwitchStmt
				
				HashMap<Stmt, List<Stmt>> injectMap = new HashMap<>();
				Iterator<Unit> iterUnits = body.getUnits().iterator();
				while (iterUnits.hasNext()) {
					Unit currentUnit = iterUnits.next();
					Stmt currentStmt = (Stmt) currentUnit;
					
					if (currentStmt instanceof GotoStmt) {
						gotoStmts.add((GotoStmt) currentStmt);
						continue;
					}
					if (currentStmt instanceof IfStmt) {
						ifStmts.add((IfStmt) currentStmt);
						continue;
					}
					if ((currentStmt instanceof SwitchStmt) || (currentStmt instanceof LookupSwitchStmt) || (currentStmt instanceof TableSwitchStmt)) {
						switchStmts.add((SwitchStmt) currentStmt);
						continue;
					}
					
					if (currentStmt instanceof AssignStmt) {
						Value leftOp = ((AssignStmt) currentStmt).getLeftOp();
						Value rightOp = ((AssignStmt) currentStmt).getRightOp();
						
						if (!(leftOp instanceof Local))
							continue;
						
						if (rightOp instanceof StringConstant) {
							// System.out.println("[DEBUG] found constant literatures in " + currentStmt);
						
							// generate the injected code
							List<Stmt> injectStmts = new ArrayList<Stmt>();
							{
								LocalGenerator localGenerator = new LocalGenerator(body);
								
								SootClass stringBuilderClass = Scene.v().getSootClass("java.lang.StringBuilder");
								SootMethod initStringBuilderMethod = stringBuilderClass.getMethod("void <init>(java.lang.String)");
								SootMethod reverseStringBuilderMethod = stringBuilderClass.getMethod("java.lang.StringBuilder reverse()");
								SootMethod toStringStringBuilderMethod = stringBuilderClass.getMethod("java.lang.String toString()");
								SootClass stringClass = Scene.v().getSootClass("java.lang.String");
								
								// String local = "xxyy"
								
								// String str_0 = "yyxx";
								Value lhs_0 = localGenerator.generateLocal(stringClass.getType());
								Value rhs_0 = StringConstant.v((new StringBuilder(((StringConstant) rightOp).value)).reverse().toString());
								AssignStmt stmt_0 = Jimple.v().newAssignStmt(lhs_0, rhs_0);
								
								// StringBuilder builder_0 = null;
								Value lhs_1 = localGenerator.generateLocal(stringBuilderClass.getType());
								NewExpr rhs_1 = Jimple.v().newNewExpr(stringBuilderClass.getType());
								AssignStmt stmt_1 = Jimple.v().newAssignStmt(lhs_1, rhs_1);
								
								// builder_0 = new StringBuilder(str_0);
								SpecialInvokeExpr expr_2 = Jimple.v().newSpecialInvokeExpr((Local) lhs_1, initStringBuilderMethod.makeRef(), lhs_0);
								InvokeStmt stmt_2 = Jimple.v().newInvokeStmt(expr_2);
								
								// StringBuilder builder_1 = builder_0.reverse();
								Value lhs_3 = localGenerator.generateLocal(stringBuilderClass.getType());;
								VirtualInvokeExpr rhs_3 = Jimple.v().newVirtualInvokeExpr((Local) lhs_1, reverseStringBuilderMethod.makeRef());
								AssignStmt stmt_3 = Jimple.v().newAssignStmt(lhs_3, rhs_3);
								
								// local = builder_1.toString();
								VirtualInvokeExpr rhs_4 = Jimple.v().newVirtualInvokeExpr((Local) lhs_3, toStringStringBuilderMethod.makeRef());
								((AssignStmt) currentStmt).setRightOp(rhs_4);
							
								injectStmts.add(stmt_0);
								injectStmts.add(stmt_1);
								injectStmts.add(stmt_2);
								injectStmts.add(stmt_3);
								// injectStmts.add(currentStmt);
								
							}
						
							injectMap.put(currentStmt, injectStmts);
						}
						
						if (rightOp instanceof ClassConstant) {
							// System.out.println("[DEBUG] found constant literatures in " + currentStmt);
							
							// generate the injected code
							List<Stmt> injectStmts = new ArrayList<Stmt>();
							{
								LocalGenerator localGenerator = new LocalGenerator(body);
								
								SootClass stringBuilderClass = Scene.v().getSootClass("java.lang.StringBuilder");
								SootMethod initStringBuilderMethod = stringBuilderClass.getMethod("void <init>(java.lang.String)");
								SootMethod reverseStringBuilderMethod = stringBuilderClass.getMethod("java.lang.StringBuilder reverse()");
								SootMethod toStringStringBuilderMethod = stringBuilderClass.getMethod("java.lang.String toString()");
								SootClass stringClass = Scene.v().getSootClass("java.lang.String");
								SootClass klassClass = Scene.v().getSootClass("java.lang.Class");
								SootMethod forNameMethod = klassClass.getMethod("java.lang.Class forName(java.lang.String)");
								
								// Class klass = xxyy.class
								
								// String str_0 = "yyxx";
								Value lhs_0 = localGenerator.generateLocal(stringClass.getType());
								String className = ((ClassConstant) rightOp).value.replace("/", ".");
								if (className.startsWith("L"))
									className = className.substring(1);
								if (className.endsWith(";"))
									className = className.replace(";", "");
								Value rhs_0 = StringConstant.v(new StringBuilder(className).reverse().toString());
								AssignStmt stmt_0 = Jimple.v().newAssignStmt(lhs_0, rhs_0);
								
								// StringBuilder builder_0 = null;
								Value lhs_1 = localGenerator.generateLocal(stringBuilderClass.getType());
								NewExpr rhs_1 = Jimple.v().newNewExpr(stringBuilderClass.getType());
								AssignStmt stmt_1 = Jimple.v().newAssignStmt(lhs_1, rhs_1);
								
								// builder_0 = new StringBuilder(str_0);
								SpecialInvokeExpr expr_2 = Jimple.v().newSpecialInvokeExpr((Local) lhs_1, initStringBuilderMethod.makeRef(), lhs_0);
								InvokeStmt stmt_2 = Jimple.v().newInvokeStmt(expr_2);
								
								// StringBuilder builder_1 = builder_0.reverse();
								Value lhs_3 = localGenerator.generateLocal(stringBuilderClass.getType());
								VirtualInvokeExpr rhs_3 = Jimple.v().newVirtualInvokeExpr((Local) lhs_1, reverseStringBuilderMethod.makeRef());
								AssignStmt stmt_3 = Jimple.v().newAssignStmt(lhs_3, rhs_3);
								
								// String str_1 = builder_1.toString()
								Value lhs_4 = localGenerator.generateLocal(stringClass.getType());
								VirtualInvokeExpr rhs_4 = Jimple.v().newVirtualInvokeExpr((Local) lhs_3, toStringStringBuilderMethod.makeRef());
								AssignStmt stmt_4 = Jimple.v().newAssignStmt(lhs_4, rhs_4);
								
								// Class klass = Class.forName(str_1);
								StaticInvokeExpr rhs_5 = Jimple.v().newStaticInvokeExpr(forNameMethod.makeRef(), lhs_4);
								((AssignStmt) currentStmt).setRightOp(rhs_5);
							
								injectStmts.add(stmt_0);
								injectStmts.add(stmt_1);
								injectStmts.add(stmt_2);
								injectStmts.add(stmt_3);
								injectStmts.add(stmt_4);
								// injectStmts.add(currentStmt);
							}
						
							injectMap.put(currentStmt, injectStmts);
						}
					}
					
					if (currentStmt.containsInvokeExpr()) {
						InvokeExpr expr = currentStmt.getInvokeExpr();
						// SootMethod invokedMethod = expr.getMethod();
						
						List<Value> values = new ArrayList<Value>();
						for (int argIdx = 0; argIdx < expr.getArgCount(); argIdx++) {
							Value argument = expr.getArg(argIdx);
							if ((argument instanceof StringConstant) || (argument instanceof ClassConstant))
								values.add(argument);
						}
					
						if (values.size() == 0)
							continue;
						// System.out.println("[DEBUG] found constant literatures in " + currentStmt);
					
						// generate the injected code
						List<Stmt> injectStmts = new ArrayList<Stmt>();
						{
							LocalGenerator localGenerator = new LocalGenerator(body);
						
							SootClass stringBuilderClass = Scene.v().getSootClass("java.lang.StringBuilder");
							SootMethod initStringBuilderMethod = stringBuilderClass.getMethod("void <init>(java.lang.String)");
							SootMethod reverseStringBuilderMethod = stringBuilderClass.getMethod("java.lang.StringBuilder reverse()");
							SootMethod toStringStringBuilderMethod = stringBuilderClass.getMethod("java.lang.String toString()");
							SootClass stringClass = Scene.v().getSootClass("java.lang.String");
							SootClass klassClass = Scene.v().getSootClass("java.lang.Class");
							SootMethod forNameMethod = klassClass.getMethod("java.lang.Class forName(java.lang.String)");
							
							List<Value> modifiedValues = new ArrayList<>(values.size());
							List<Stmt> stmtList_0 = new ArrayList<Stmt>();
							for (int constantIdx = 0; constantIdx < values.size(); constantIdx++) {
								Value currentValue = values.get(constantIdx);
								
								if (currentValue instanceof StringConstant) {
									// String local = "xxyy"
									
									// String str_0 = "yyxx";
									Value lhs_0 = localGenerator.generateLocal(stringClass.getType());
									Value rhs_0 = StringConstant.v((new StringBuilder(((StringConstant) currentValue).value)).reverse().toString());
									AssignStmt stmt_0 = Jimple.v().newAssignStmt(lhs_0, rhs_0);
									
									// StringBuilder builder_0 = null;
									Value lhs_1 = localGenerator.generateLocal(stringBuilderClass.getType());
									NewExpr rhs_1 = Jimple.v().newNewExpr(stringBuilderClass.getType());
									AssignStmt stmt_1 = Jimple.v().newAssignStmt(lhs_1, rhs_1);
									
									// builder_0 = new StringBuilder(str_0);
									SpecialInvokeExpr expr_2 = Jimple.v().newSpecialInvokeExpr((Local) lhs_1, initStringBuilderMethod.makeRef(), lhs_0);
									InvokeStmt stmt_2 = Jimple.v().newInvokeStmt(expr_2);
									
									// StringBuilder builder_1 = builder_0.reverse();
									Value lhs_3 = localGenerator.generateLocal(stringBuilderClass.getType());
									VirtualInvokeExpr rhs_3 = Jimple.v().newVirtualInvokeExpr((Local) lhs_1, reverseStringBuilderMethod.makeRef());
									AssignStmt stmt_3 = Jimple.v().newAssignStmt(lhs_3, rhs_3);
									
									// String str_1 = builder_1.toString();
									Value lhs_4 = localGenerator.generateLocal(stringClass.getType());;
									VirtualInvokeExpr rhs_4 = Jimple.v().newVirtualInvokeExpr((Local) lhs_3, toStringStringBuilderMethod.makeRef());
									AssignStmt stmt_4 = Jimple.v().newAssignStmt(lhs_4, rhs_4);
									
									stmtList_0.add(stmt_0);
									stmtList_0.add(stmt_1);
									stmtList_0.add(stmt_2);
									stmtList_0.add(stmt_3);
									stmtList_0.add(stmt_4);
								
									modifiedValues.add(lhs_4);
								}
								
								if (currentValue instanceof ClassConstant) {	
									// Class klass = xxyy.class
									
									// String str_0 = "yyxx";
									Value lhs_0 = localGenerator.generateLocal(stringClass.getType());
									String className = ((ClassConstant) currentValue).value.replace("/", ".");
									if (className.startsWith("L"))
										className = className.substring(1);
									if (className.endsWith(";"))
										className = className.replace(";", "");
									Value rhs_0 = StringConstant.v(new StringBuilder(className).reverse().toString());
									AssignStmt stmt_0 = Jimple.v().newAssignStmt(lhs_0, rhs_0);
									
									// StringBuilder builder_0 = null;
									Value lhs_1 = localGenerator.generateLocal(stringBuilderClass.getType());
									NewExpr rhs_1 = Jimple.v().newNewExpr(stringBuilderClass.getType());
									AssignStmt stmt_1 = Jimple.v().newAssignStmt(lhs_1, rhs_1);
									
									// builder_0 = new StringBuilder(str_0);
									SpecialInvokeExpr expr_2 = Jimple.v().newSpecialInvokeExpr((Local) lhs_1, initStringBuilderMethod.makeRef(), lhs_0);
									InvokeStmt stmt_2 = Jimple.v().newInvokeStmt(expr_2);
									
									// StringBuilder builder_1 = builder_0.reverse();
									Value lhs_3 = localGenerator.generateLocal(stringBuilderClass.getType());
									VirtualInvokeExpr rhs_3 = Jimple.v().newVirtualInvokeExpr((Local) lhs_1, reverseStringBuilderMethod.makeRef());
									AssignStmt stmt_3 = Jimple.v().newAssignStmt(lhs_3, rhs_3);
									
									// String str_1 = builder_1.toString()
									Value lhs_4 = localGenerator.generateLocal(stringClass.getType());
									VirtualInvokeExpr rhs_4 = Jimple.v().newVirtualInvokeExpr((Local) lhs_3, toStringStringBuilderMethod.makeRef());
									AssignStmt stmt_4 = Jimple.v().newAssignStmt(lhs_4, rhs_4);
									
									// Class klass = Class.forName(str_1);
									Value lhs_5 = localGenerator.generateLocal(klassClass.getType());
									StaticInvokeExpr rhs_5 = Jimple.v().newStaticInvokeExpr(forNameMethod.makeRef(), lhs_4);
									AssignStmt stmt_5 = Jimple.v().newAssignStmt(lhs_5, rhs_5);
									
									stmtList_0.add(stmt_0);
									stmtList_0.add(stmt_1);
									stmtList_0.add(stmt_2);
									stmtList_0.add(stmt_3);
									stmtList_0.add(stmt_4);
									stmtList_0.add(stmt_5);
									
									modifiedValues.add(lhs_5);
								}
							}
							
							// modify the current statement
							int constantIdx = 0;
							for (int argIdx = 0; argIdx < expr.getArgCount(); argIdx++) {
								Value argument = expr.getArg(argIdx);
								if ((argument instanceof StringConstant) || (argument instanceof ClassConstant)) {
									expr.setArg(argIdx, modifiedValues.get(constantIdx));
									constantIdx++;
								}
							}
							
							injectStmts.addAll(stmtList_0);
							// injectStmts.add(currentStmt);
						}
					
						injectMap.put(currentStmt, injectStmts);
					}
				}
				
				// modify
				for (Stmt targetStmt : injectMap.keySet()) {
					body.getUnits().insertBefore(injectMap.get(targetStmt), targetStmt);
					// pay special attention to the insertBefore operation
					// -->> adjust Goto statements
					for (GotoStmt stmt : gotoStmts) {
						if (stmt.getTarget().equals(targetStmt))
							stmt.setTarget(injectMap.get(targetStmt).get(0));
					}
					// -->> adjust If statements
					for (IfStmt stmt : ifStmts) {
						if (stmt.getTarget().equals(targetStmt))
							stmt.setTarget(injectMap.get(targetStmt).get(0));
					}
					// -->> adjust Switch statements
					for (SwitchStmt stmt : switchStmts) {
						Map<Integer, Stmt> adjustMap = new HashMap<Integer, Stmt>();
						for (int targetIdx = 0; targetIdx < stmt.getTargets().size(); targetIdx++) {
							Stmt switchTarget = (Stmt) stmt.getTarget(targetIdx);
							if (switchTarget.equals(targetStmt))
								adjustMap.put(Integer.valueOf(targetIdx), injectMap.get(targetStmt).get(0));
						}
						
						for (Integer targetIdx : adjustMap.keySet()) {
							stmt.setTarget(targetIdx, adjustMap.get(targetIdx));
						}
					}
				}
				
				/*
				if (!injectMap.isEmpty()) {
					System.out.println("[DEBUG] modified method body -> " + sMethod.getSignature());
					System.out.println(body);
				}
				*/
			}
		}
	}

}
