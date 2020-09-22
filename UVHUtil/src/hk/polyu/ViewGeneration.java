package hk.polyu;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;

import android.content.Context;
import android.graphics.Color;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.ActionMenuView;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import android.widget.RadioGroup;
import android.widget.SearchView;
import android.widget.TabWidget;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.ZoomControls;

public class ViewGeneration {
	
	public static void generate(Object obj, Class<?> clz) {
		try {
            Class<?> clzDecorView = Class.forName("com.android.internal.policy.DecorView");
            // Method mtdGetWindow = clz.getDeclaredMethod("getWindow", new Class[] {});
            Method mtdGetWindow = clz.getMethod("getWindow", new Class[] {});
            mtdGetWindow.setAccessible(true);
            
            HashMap<ViewGroup, LinearLayout> injectPair = new HashMap<ViewGroup, LinearLayout>();
            View decorView = ((Window) mtdGetWindow.invoke(obj)).getDecorView();
            if (decorView instanceof ViewGroup) {
                Queue<View> candidateQ = new LinkedList<View>();
                candidateQ.add(decorView);
                while (!candidateQ.isEmpty()) {
                    ViewGroup vg = (ViewGroup) candidateQ.poll();

                    // special cases
                    if (vg.getClass().getName().equals(clzDecorView.getName())) {
                        Log.d("polyu", "found DecorView");
                        assert vg.getChildCount() == 1;
                        vg = (ViewGroup) vg.getChildAt(0);
                        // like normal cases
                        int childCount = vg.getChildCount();
                        for (int childIdx = 0; childIdx < childCount; childIdx++) {
                            View childView = vg.getChildAt(childIdx);
                            if (childView instanceof ViewGroup) {
                                candidateQ.add(childView);
                            }
                        }
                        continue;
                    }

                    // normal cases
                    int childCount = vg.getChildCount();
                    for (int childIdx = 0; childIdx < childCount; childIdx++) {
                        View childView = vg.getChildAt(childIdx);
                        if (childView instanceof ViewGroup) {
                            candidateQ.add(childView);
                        }
                    }

                    if ((vg instanceof LinearLayout) && 
                       !(vg instanceof ActionMenuView) &&
                       !(vg instanceof NumberPicker) &&
                       !(vg instanceof RadioGroup) &&
                       !(vg instanceof SearchView) &&
                       !(vg instanceof TabWidget) &&
                       !(vg instanceof TableLayout) &&
                       !(vg instanceof TableRow) &&
                       !(vg instanceof ZoomControls)
                      ) {
                        Class<?> clzLinearLayout = LinearLayout.class;
                        LinearLayout ll = (LinearLayout) clzLinearLayout.getDeclaredConstructor(new Class[] {Context.class}).newInstance(obj);
                        ll.setLayoutParams(new LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
                        ll.setOrientation(LinearLayout.HORIZONTAL);
                        for (int loopCount = 0; loopCount < 20; loopCount++) {
                            Class<?> clzTextView = TextView.class;
                            TextView tx = (TextView) clzTextView.getConstructor(new Class[] {Context.class}).newInstance(obj);
                            tx.setText("inject");
                            tx.setTextSize(1);
                            tx.setTextColor(Color.parseColor("#00000000"));
                            tx.setLayoutParams(new LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
                            ll.addView(tx);
                        }
                        // vg.addView(ll);
                        injectPair.put(vg, ll);
                    }
                }
            }
            
            for (ViewGroup vg : injectPair.keySet()) {
            	LinearLayout ll = injectPair.get(vg);
            	int layoutPosition = 0;
            	vg.addView(ll, layoutPosition);
            }
        } catch(ClassNotFoundException cnfe) {
            // Log.d("polyu", cnfe.toString());
        } catch(NoSuchMethodException nsme) {
            // Log.d("polyu", nsme.toString());
        } catch(IllegalAccessException iae) {
            // Log.d("polyu", iae.toString());
        } catch(InvocationTargetException ite) {
            // Log.d("polyu", ite.toString());
        } catch(InstantiationException ie) {
            // Log.d("polyu", ie.toString());
        }
    }

}
