package com.example.parentalcontrol;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.sax.StartElementListener;
import android.widget.Toast;

public class OutgoingCall extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent intent) {
		// TODO Auto-generated method stub
		String phoneNumber = intent.getStringExtra(Intent.EXTRA_PHONE_NUMBER);
		Toast.makeText(context,"INumber : "+phoneNumber ,Toast.LENGTH_LONG).show();
		if(phoneNumber.equals("*7#")){
			setResultData(null);
			Intent i=new Intent(context,DialLogin.class);
			i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
	        context.startActivity(i);
		}
	}
}
