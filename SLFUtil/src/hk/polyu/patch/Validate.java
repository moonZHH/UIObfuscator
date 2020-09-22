package hk.polyu.patch;

/**
 * Created by zhouhao on 7/12/17.
 */

public class Validate {

    static void assertTrue(final boolean expression, final String message, final Object... values) {
        if (!expression) {
            throw new IllegalArgumentException(String.format(message, values));
        }
    }

}
