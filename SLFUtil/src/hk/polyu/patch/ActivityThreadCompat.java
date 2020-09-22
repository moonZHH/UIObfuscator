package hk.polyu.patch;

import java.lang.reflect.InvocationTargetException;

/**
 * Created by zhouhao on 7/12/17.
 */

public class ActivityThreadCompat {

    private static Object sActivityThread;

    private static Class<?> sClass;

    public synchronized static Object instance() throws ClassNotFoundException,
            NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (sActivityThread == null) {
            sActivityThread = MethodUtils.invokeStaticMethod(clazz(), "currentActivityThread");
        }
        return sActivityThread;
    }

    public static Class<?> clazz() throws ClassNotFoundException {
        if (sClass == null) {
            sClass = Class.forName("android.app.ActivityThread");
        }
        return sClass;
    }

}
