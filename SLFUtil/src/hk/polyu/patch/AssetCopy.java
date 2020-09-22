package hk.polyu.patch;

import android.content.Context;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by zhouhao on 7/12/17.
 */

public class AssetCopy {

    public static void copyFile(Context context, String fileName, String tgtDir) {
        try {
            InputStream is = context.getAssets().open(fileName); 
            FileOutputStream fos = new FileOutputStream(new File(tgtDir + "/" + fileName));
            byte[] buffer = new byte[1024];
            int byteCount = 0;
            while((byteCount=is.read(buffer))!=-1) {
                fos.write(buffer, 0, byteCount);
            }
            fos.flush();
            is.close();
            fos.close();
        } catch (FileNotFoundException fnfe) {
            fnfe.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }

}
