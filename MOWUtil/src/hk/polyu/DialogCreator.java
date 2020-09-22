package hk.polyu;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

public class DialogCreator {
	static Dialog curDialog = null;

    static View previousFocusedView = null;
    static View previousFocusedRootView = null;

    static Runnable showRunnable = new Runnable() {
        @Override
        public void run() {
            View currentFocusedView = getFocusedView();
            View currentFocusedRootView = getFocusedRootView();

            /*
            if (currentFocusedView != null)
                Log.d("polyuA", "focusedView -> " + currentFocusedView.toString() + " " + currentFocusedView.isFocusable() + " " + currentFocusedView.isFocusable());
            if (currentFocusedRootView != null)
                Log.d("polyuA", "focusedRootView -> " + currentFocusedRootView.toString() + " " + currentFocusedRootView.isFocusable() + " " + currentFocusedRootView.isFocusable());
            */

            if (currentFocusedView != null && currentFocusedRootView != null) {
                try {
                    // android.view.inputmethod.InputMethodManager
                    Class<?> InputMethodManagerClass = Class.forName("android.view.inputmethod.InputMethodManager");

                    // InputMethodManager.peekInstance()
                    Method getInstanceMethod = InputMethodManagerClass.getDeclaredMethod("peekInstance", new Class[] {});
                    getInstanceMethod.setAccessible(true);

                    // 获取InputMethodManager实例
                    InputMethodManager imm = (InputMethodManager) getInstanceMethod.invoke(null);

                    // InputMethodManager.mCurRootView
                    Field mCurRootViewField = InputMethodManagerClass.getDeclaredField("mCurRootView");
                    mCurRootViewField.setAccessible(true);

                    // 设置mCurRootView字段
                    mCurRootViewField.set(imm, currentFocusedRootView);

                    // InputMethodManager.focusIn(View)
                    Method focusInMethod = InputMethodManagerClass.getDeclaredMethod("focusIn", new Class[] {View.class});
                    focusInMethod.setAccessible(true);

                    // 调用focusIn方法, 其参数为focusedView
                    focusInMethod.invoke(imm, currentFocusedView);
                } catch (ClassNotFoundException cnfe) {
                    cnfe.printStackTrace();
                } catch (NoSuchMethodException nsme) {
                    nsme.printStackTrace();
                } catch (IllegalAccessException iae) {
                    iae.printStackTrace();
                } catch (InvocationTargetException ite) {
                    ite.printStackTrace();
                } catch (NoSuchFieldException nsfe) {
                    nsfe.printStackTrace();
                }
            }
        }
    };

    static Runnable motionRunnable = new Runnable() {
        @Override
        public void run() {
            View currentFocusedView = getFocusedView();
            View currentFocusedRootView = getFocusedRootView();

            /*
            if (currentFocusedView != null)
                Log.d("polyuC", "currentFocusedView -> " + currentFocusedView.toString() + " " + currentFocusedView.isFocusable() + " " + currentFocusedView.isFocusable());
            if (currentFocusedRootView != null)
                Log.d("polyuC", "currentFocusedRootView -> " + currentFocusedRootView.toString() + " " + currentFocusedRootView.isFocusable() + " " + currentFocusedRootView.isFocusable());
            */

            try {
                // android.view.inputmethod.InputMethodManager
                Class<?> InputMethodManagerClass = Class.forName("android.view.inputmethod.InputMethodManager");

                // InputMethodManager.peekInstance()
                Method getInstanceMethod = InputMethodManagerClass.getDeclaredMethod("peekInstance", new Class[] {});
                getInstanceMethod.setAccessible(true);

                // 获取InputMethodManager实例
                InputMethodManager imm = (InputMethodManager) getInstanceMethod.invoke(null);

                // first, we should hide the previously shown imm
                if (previousFocusedView != null && previousFocusedRootView != null) {
                    if (currentFocusedView == null || currentFocusedRootView != previousFocusedRootView) {
                        if (imm.isActive(previousFocusedView)) {
                            imm.hideSoftInputFromWindow(previousFocusedRootView.getWindowToken(), 0);
                        }
                    }
                }

                // then, we should popup new imm
                if (currentFocusedView != null && currentFocusedRootView != null) {
                    if (currentFocusedView instanceof EditText) {
                        // InputMethodManager.mCurRootView
                        Field mCurRootViewField = InputMethodManagerClass.getDeclaredField("mCurRootView");
                        mCurRootViewField.setAccessible(true);

                        // 设置mCurRootView字段
                        mCurRootViewField.set(imm, currentFocusedRootView);

                        // InputMethodManager.focusIn(View)
                        Method focusInMethod = InputMethodManagerClass.getDeclaredMethod("focusIn", new Class[]{View.class});
                        focusInMethod.setAccessible(true);

                        // 调用focusIn方法, 其参数为focusedView
                        focusInMethod.invoke(imm, currentFocusedView);
                    }
                }
            } catch (ClassNotFoundException cnfe) {
                cnfe.printStackTrace();
            } catch (NoSuchMethodException nsme) {
                nsme.printStackTrace();
            } catch (IllegalAccessException iae) {
                iae.printStackTrace();
            } catch (InvocationTargetException ite) {
                ite.printStackTrace();
            } catch (NoSuchFieldException nsfe) {
                nsfe.printStackTrace();
            }

            // current -> previous
            previousFocusedView = currentFocusedView;
            previousFocusedRootView = currentFocusedRootView;
        }
    };

    static int dialogIndex = 1;

    public static void ShowDialog(final Activity activity) {
        // create a transparent window based on Dialog
        final Dialog dialog = new Dialog(activity/*, android.R.style.Theme_Translucent_NoTitleBar_Fullscreen*/);
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
        // dialog.setTitle("Draw on Top Attack " + dialogIndex);
        dialog.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        dialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
        // Toast.makeText(activity, "Dialog Idx: " + dialogIndex + ", Activity: " + activity.getComponentName(), Toast.LENGTH_LONG).show();
        
        dialogIndex++;

        WindowManager.LayoutParams lp = dialog.getWindow().getAttributes();
        // lp.x = 0 + 10 * dialogIndex;
        // lp.y = 0 + 10 * dialogIndex;
        // lp.height = 5;
        // lp.width = 5;
        lp.x = 0;
        lp.y = 0;
        lp.height = 0;
        lp.width = 0;
        lp.alpha = 1.0f;
        lp.flags |= WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL
                 |  WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH
                 |  WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM;

        lp.softInputMode = WindowManager.LayoutParams.SOFT_INPUT_STATE_HIDDEN;
        if (Build.VERSION.SDK_INT <= 25) {
        	lp.type = WindowManager.LayoutParams.TYPE_PHONE;
        } else {
        	lp.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        }
        dialog.getWindow().setAttributes(lp);

        dialog.setOnShowListener(new DialogInterface.OnShowListener() {
            @Override
            public void onShow(DialogInterface dialog) {
                // bind the current focused view to imm (系统默认不绑定当前focused view到imm, 为了与我们的机制统一, 人为绑定)
                Handler showHandler = new Handler();
                showHandler.postDelayed(showRunnable, 200);
            }
        });

        // deal with softInputMethod
        View dialogDecorView = dialog.getWindow().getDecorView();
        dialogDecorView.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == MotionEvent.ACTION_OUTSIDE) {
                    Handler motionHandler = new Handler();
                    motionHandler.postDelayed(motionRunnable, 200);
                    return true;
                }
                return false;
            }
        });

        // deal with back button
        dialog.setOnKeyListener(new DialogInterface.OnKeyListener() {
            @Override
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                try {
                    // android.view.inputmethod.InputMethodManager
                    Class<?> InputMethodManagerClass = Class.forName("android.view.inputmethod.InputMethodManager");

                    // InputMethodManager.peekInstance()
                    Method getInstanceMethod = InputMethodManagerClass.getDeclaredMethod("peekInstance", new Class[] {});
                    getInstanceMethod.setAccessible(true);

                    // 获取InputMethodManager实例
                    InputMethodManager imm = (InputMethodManager) getInstanceMethod.invoke(null);

                    if (i == KeyEvent.KEYCODE_BACK) {
                        View currentFocusedView = getFocusedView();
                        View currentFocusedRootView = getFocusedRootView();
                        View lastRootView = getLastRootView();
                        View lastRootView2 = getSecondLastRootView();
                        
                        if (currentFocusedView != null)
                            Log.d("polyuA", "focusedView -> " + currentFocusedView.toString() + " " + currentFocusedView.isFocusable());
                        if (currentFocusedRootView != null)
                            Log.d("polyuA", "focusedRootView -> " + currentFocusedRootView.toString() + " " + currentFocusedRootView.isFocusable());
                        if (lastRootView != null) {
                        	Log.d("polyuA", "lastRootView -> " + lastRootView.toString() + " " + lastRootView.isFocusable());
                        	Log.d("polyuA", "lastRootView.class -> " + lastRootView.getClass());
                        	Log.d("polyuA", "lastRootView2 -> " + lastRootView2.toString() + " " + lastRootView2.isFocusable());
                        	Log.d("polyuA", "lastRootView2.class -> " + lastRootView2.getClass());
                        }
                        
                        assert(lastRootView != null);
                        if (lastRootView == dialog.getWindow().getDecorView()) {
                        	assert(lastRootView2 != null);
                        	Log.d("polyuA", "lastRootView changes to lastRootView2");
                        	lastRootView = lastRootView2;
                        }
                        
                        // Step 1
                        {
                        	Method dispatchKeyEventPreImeMethod = lastRootView.getClass().getMethod("dispatchKeyEventPreIme", new Class[] {KeyEvent.class});
                        	boolean dispatchKeyEventPreImeReturn = (boolean) dispatchKeyEventPreImeMethod.invoke(lastRootView, keyEvent);
                        	Log.d("polyuA", "dispatchKeyEventPreIme: " + dispatchKeyEventPreImeReturn);
                        	if (dispatchKeyEventPreImeReturn)
                        		return true;
                        }
                        
                        // Step 2
                        {
                            if (currentFocusedView != null && imm.isActive(currentFocusedView) && currentFocusedView instanceof EditText) {
                            	boolean hideSoftInputFromWindowReturn = imm.hideSoftInputFromWindow(currentFocusedView.getWindowToken(), 0);
                            	Log.d("polyuA", "hideSoftInputFromWindow: " + hideSoftInputFromWindowReturn);
                            	if (hideSoftInputFromWindowReturn)
                            		return true;
                            }
                        }
                        
                        // Step 3
                        {
                        	Method dispatchKeyEventMethod = lastRootView.getClass().getMethod("dispatchKeyEvent", new Class[] {KeyEvent.class});
                        	boolean dispatchKeyEventReturn = (boolean) dispatchKeyEventMethod.invoke(lastRootView, keyEvent);
                        	Log.d("polyuA", "dispatchKeyEvent: " + dispatchKeyEventReturn);
                        	if (dispatchKeyEventReturn)
                        		return true;
                        }
                    } 
                    
                    else if (i == KeyEvent.KEYCODE_MENU) {
                    	View currentFocusedView = getFocusedView();
                        View currentFocusedRootView = getFocusedRootView();
                        View lastRootView = getLastRootView();
                        
                        if (currentFocusedView != null)
                            Log.d("polyuA", "focusedView -> " + currentFocusedView.toString() + " " + currentFocusedView.isFocusable());
                        if (currentFocusedRootView != null)
                            Log.d("polyuA", "focusedRootView -> " + currentFocusedRootView.toString() + " " + currentFocusedRootView.isFocusable());
                        if (lastRootView != null) {
                        	Log.d("polyuA", "lastRootView -> " + lastRootView.toString() + " " + lastRootView.isFocusable());
                        	Log.d("polyuA", "lastRootView.class -> " + lastRootView.getClass());
                        }
                        
                        assert(lastRootView != null);
                        {
                        	Method dispatchKeyEventMethod = lastRootView.getClass().getMethod("dispatchKeyEvent", new Class[] {KeyEvent.class});
                        	boolean dispatchKeyEventReturn = (boolean) dispatchKeyEventMethod.invoke(lastRootView, keyEvent);
                        	Log.d("polyuA", "dispatchKeyEvent: " + dispatchKeyEventReturn);
                        	if (dispatchKeyEventReturn)
                        		return true;
                        }
                    }
                    
                    return false;
                } catch (ClassNotFoundException cnfe) {
                    cnfe.printStackTrace();
                } catch (NoSuchMethodException nsme) {
                    nsme.printStackTrace();
                } catch (IllegalAccessException iae) {
                    iae.printStackTrace();
                } catch (InvocationTargetException ite) {
                    ite.printStackTrace();
                }

                return false;
            }
        });

        if (!activity.isFinishing()) {
        	if (curDialog != null) {
        		curDialog.dismiss();
        		curDialog = null;
        	}
        	curDialog = dialog;
        	Log.d("polyuA", "ShowDialog: " + curDialog);
        	Log.d("polyuA", "Dialog View: " + dialogDecorView);
        	curDialog.show();
        }
    }
    
    public static void dismissDialog() {
    	if (curDialog != null) {
    		Log.d("polyuA", "dismissDialog: " + curDialog);
    		curDialog.dismiss();
    		curDialog = null;
    	}
    }

    private static View getFocusedView() {
        try {
            // android.view.WindowManagerGlobal
            Class<?> WindowManagerGlobalClass = Class.forName("android.view.WindowManagerGlobal");

            // WindowManagerGlobal.getInstance()
            Method getInstanceMethod = WindowManagerGlobalClass.getDeclaredMethod("getInstance", new Class[] {});
            getInstanceMethod.setAccessible(true);

            // 获取WindowManagerGlobal单例
            Object mGlobal = getInstanceMethod.invoke(null);

            // WindowManagerGlobal.mRoots
            Field sRootsField = WindowManagerGlobalClass.getDeclaredField("mRoots");
            sRootsField.setAccessible(true);

            // 获取mRoots字段
            Object mRoots = sRootsField.get(mGlobal); // ArrayList<ViewRootImpl>

            // java.lang.ArrayList
            Class<?> ArrayListClass = ArrayList.class;

            // ArrayList.size()
            Method sizeMethod = ArrayListClass.getDeclaredMethod("size", new Class[] {});
            sizeMethod.setAccessible(true);

            // 获取mRoots的size
            int mRootSize = (int) sizeMethod.invoke(mRoots);

            // ArrayList.get()
            Method getMethod = ArrayListClass.getDeclaredMethod("get", new Class[] {int.class});
            getMethod.setAccessible(true);

            // android.view.ViewRootImpl
            Class<?> ViewRootImplClass = Class.forName("android.view.ViewRootImpl");

            // ViewRootImpl.getView()
            Method getViewMethod = ViewRootImplClass.getDeclaredMethod("getView", new Class[] {});
            getViewMethod.setAccessible(true);

            // 在mRoots中从后往前遍历寻找当前拥有焦点的view
            for (int index = mRootSize - 1; index >= 0; index--) {
                Object viewRootImpl = getMethod.invoke(mRoots, index);
                View rootView = (View) getViewMethod.invoke(viewRootImpl);
                if(rootView.findFocus() != null)
                    return rootView.findFocus();
            }
        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        } catch (NoSuchMethodException nsme) {
            nsme.printStackTrace();
        } catch (IllegalAccessException iae) {
            iae.printStackTrace();
        } catch (InvocationTargetException ite) {
            ite.printStackTrace();
        } catch (NoSuchFieldException nsfe) {
            nsfe.printStackTrace();
        }

        return null;
    }

    private static View getFocusedRootView() {
        try {
            // android.view.WindowManagerGlobal
            Class<?> WindowManagerGlobalClass = Class.forName("android.view.WindowManagerGlobal");

            // WindowManagerGlobal.getInstance()
            Method getInstanceMethod = WindowManagerGlobalClass.getDeclaredMethod("getInstance", new Class[] {});
            getInstanceMethod.setAccessible(true);

            // 获取WindowManagerGlobal单例
            Object mGlobal = getInstanceMethod.invoke(null);

            // WindowManagerGlobal.mRoots
            Field sRootsField = WindowManagerGlobalClass.getDeclaredField("mRoots");
            sRootsField.setAccessible(true);

            // 获取mRoots字段
            Object mRoots = sRootsField.get(mGlobal); // ArrayList<ViewRootImpl>

            // java.lang.ArrayList
            Class<?> ArrayListClass = ArrayList.class;

            // ArrayList.size()
            Method sizeMethod = ArrayListClass.getDeclaredMethod("size", new Class[] {});
            sizeMethod.setAccessible(true);

            // 获取mRoots的size
            int mRootSize = (int) sizeMethod.invoke(mRoots);

            // ArrayList.get()
            Method getMethod = ArrayListClass.getDeclaredMethod("get", new Class[] {int.class});
            getMethod.setAccessible(true);

            // android.view.ViewRootImpl
            Class<?> ViewRootImplClass = Class.forName("android.view.ViewRootImpl");

            // ViewRootImpl.getView()
            Method getViewMethod = ViewRootImplClass.getDeclaredMethod("getView", new Class[] {});
            getViewMethod.setAccessible(true);

            // 在mRoots中从后往前遍历寻找当前拥有焦点的view
            for (int index = mRootSize - 1; index >= 0; index--) {
                Object viewRootImpl = getMethod.invoke(mRoots, index);
                View rootView = (View) getViewMethod.invoke(viewRootImpl);
                if(rootView.findFocus() != null)
                    return rootView;
            }
        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        } catch (NoSuchMethodException nsme) {
            nsme.printStackTrace();
        } catch (IllegalAccessException iae) {
            iae.printStackTrace();
        } catch (InvocationTargetException ite) {
            ite.printStackTrace();
        } catch (NoSuchFieldException nsfe) {
            nsfe.printStackTrace();
        }

        return null;
    }

    private static View getLastRootView() {
        try {
            // android.view.WindowManagerGlobal
            Class<?> WindowManagerGlobalClass = Class.forName("android.view.WindowManagerGlobal");

            // WindowManagerGlobal.getInstance()
            Method getInstanceMethod = WindowManagerGlobalClass.getDeclaredMethod("getInstance", new Class[] {});
            getInstanceMethod.setAccessible(true);

            // 获取WindowManagerGlobal单例
            Object mGlobal = getInstanceMethod.invoke(null);

            // WindowManagerGlobal.mRoots
            Field sRootsField = WindowManagerGlobalClass.getDeclaredField("mRoots");
            sRootsField.setAccessible(true);

            // 获取mRoots字段
            Object mRoots = sRootsField.get(mGlobal); // ArrayList<ViewRootImpl>

            // java.lang.ArrayList
            Class<?> ArrayListClass = ArrayList.class;

            // ArrayList.size()
            Method sizeMethod = ArrayListClass.getDeclaredMethod("size", new Class[] {});
            sizeMethod.setAccessible(true);

            // 获取mRoots的size
            int mRootSize = (int) sizeMethod.invoke(mRoots);

            // ArrayList.get()
            Method getMethod = ArrayListClass.getDeclaredMethod("get", new Class[] {int.class});
            getMethod.setAccessible(true);

            // android.view.ViewRootImpl
            Class<?> ViewRootImplClass = Class.forName("android.view.ViewRootImpl");

            // ViewRootImpl.getView()
            Method getViewMethod = ViewRootImplClass.getDeclaredMethod("getView", new Class[] {});
            getViewMethod.setAccessible(true);

            // 在mRoots中取出最后一个view
            Object viewRootImpl = getMethod.invoke(mRoots, mRootSize - 1);
            View rootView = (View) getViewMethod.invoke(viewRootImpl);
            return rootView;
        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        } catch (NoSuchMethodException nsme) {
            nsme.printStackTrace();
        } catch (IllegalAccessException iae) {
            iae.printStackTrace();
        } catch (InvocationTargetException ite) {
            ite.printStackTrace();
        } catch (NoSuchFieldException nsfe) {
            nsfe.printStackTrace();
        }

        return null;
    }
    
    private static View getSecondLastRootView() {
        try {
            // android.view.WindowManagerGlobal
            Class<?> WindowManagerGlobalClass = Class.forName("android.view.WindowManagerGlobal");

            // WindowManagerGlobal.getInstance()
            Method getInstanceMethod = WindowManagerGlobalClass.getDeclaredMethod("getInstance", new Class[] {});
            getInstanceMethod.setAccessible(true);

            // 获取WindowManagerGlobal单例
            Object mGlobal = getInstanceMethod.invoke(null);

            // WindowManagerGlobal.mRoots
            Field sRootsField = WindowManagerGlobalClass.getDeclaredField("mRoots");
            sRootsField.setAccessible(true);

            // 获取mRoots字段
            Object mRoots = sRootsField.get(mGlobal); // ArrayList<ViewRootImpl>

            // java.lang.ArrayList
            Class<?> ArrayListClass = ArrayList.class;

            // ArrayList.size()
            Method sizeMethod = ArrayListClass.getDeclaredMethod("size", new Class[] {});
            sizeMethod.setAccessible(true);

            // 获取mRoots的size
            int mRootSize = (int) sizeMethod.invoke(mRoots);

            // ArrayList.get()
            Method getMethod = ArrayListClass.getDeclaredMethod("get", new Class[] {int.class});
            getMethod.setAccessible(true);

            // android.view.ViewRootImpl
            Class<?> ViewRootImplClass = Class.forName("android.view.ViewRootImpl");

            // ViewRootImpl.getView()
            Method getViewMethod = ViewRootImplClass.getDeclaredMethod("getView", new Class[] {});
            getViewMethod.setAccessible(true);

            // 在mRoots中取出最后一个view
            Object viewRootImpl = getMethod.invoke(mRoots, mRootSize - 2);
            View rootView = (View) getViewMethod.invoke(viewRootImpl);
            return rootView;
        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        } catch (NoSuchMethodException nsme) {
            nsme.printStackTrace();
        } catch (IllegalAccessException iae) {
            iae.printStackTrace();
        } catch (InvocationTargetException ite) {
            ite.printStackTrace();
        } catch (NoSuchFieldException nsfe) {
            nsfe.printStackTrace();
        }

        return null;
    }

}