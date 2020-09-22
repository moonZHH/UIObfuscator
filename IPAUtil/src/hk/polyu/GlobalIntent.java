package hk.polyu;

import android.content.Context;
import android.content.Intent;

public class GlobalIntent {
	
	public static Intent instance = null;
	
	public static void proxyTransition(Context context, Intent intent) {
		instance = intent;
		
		Intent proxyIntent = new Intent(context, ProxyActivity.class);
		context.startActivity(proxyIntent);
	}

}
