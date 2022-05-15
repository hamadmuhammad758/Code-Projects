package com.kicsit.silencer;

import android.support.v7.app.ActionBarActivity;
import android.app.AlarmManager;
import android.app.DialogFragment;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;


public class MainActivity extends ActionBarActivity {
	BroadcastReceiver br,br2;
	PendingIntent pi,pi2;
	AlarmManager am,am2;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    public void silentFrom(View v) {
        DialogFragment newFragment = new TimePickerFragment();
        newFragment.show(getFragmentManager(), "timePicker");
    }
    public void silentUpto(View v) {
        DialogFragment newFragment = new TimePickerFragment2();
        newFragment.show(getFragmentManager(), "timePicker1");
    }
    
    public void startReveiving(Long startTime){
        br = new BroadcastReceiver() {
               @Override
               public void onReceive(Context c, Intent i) {
                      Toast.makeText(c, "Silent mode Activated", Toast.LENGTH_LONG).show();
                      AudioManager  am11= (AudioManager) getBaseContext().getSystemService(Context.AUDIO_SERVICE);
                      am11.setRingerMode(AudioManager.RINGER_MODE_SILENT);
                      }
                };
        registerReceiver(br, new IntentFilter("myapp") );
        pi = PendingIntent.getBroadcast( this, 0, new Intent("myapp"), 0 );
        am = (AlarmManager)(this.getSystemService( Context.ALARM_SERVICE ));
        am.set( AlarmManager.RTC_WAKEUP,startTime, pi );
        }  
    public void startReveiving2(Long startTime){
            br2 = new BroadcastReceiver() {
                @Override
                public void onReceive(Context c, Intent i) {
                       Toast.makeText(c, "Silent mode De-activated", Toast.LENGTH_LONG).show();
                       AudioManager  am11= (AudioManager) getBaseContext().getSystemService(Context.AUDIO_SERVICE);
                       am11.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
                       }
                 };
         registerReceiver(br2, new IntentFilter("myapp1") );
         pi2 = PendingIntent.getBroadcast( this, 0, new Intent("myapp1"), 0 );
         am2 = (AlarmManager)(this.getSystemService( Context.ALARM_SERVICE ));
         am2.set( AlarmManager.RTC_WAKEUP,startTime, pi2 );
         }   
}
