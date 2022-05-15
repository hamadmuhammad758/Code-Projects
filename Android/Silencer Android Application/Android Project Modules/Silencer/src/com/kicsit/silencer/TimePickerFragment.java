package com.kicsit.silencer;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.IBinder;
import android.util.Log;
import android.widget.Toast;
import android.app.AlarmManager;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.PendingIntent;
import android.media.AudioManager;
import android.os.Bundle;
import android.app.DatePickerDialog;
import android.text.format.DateFormat;
import android.widget.TimePicker;
import android.widget.Toast;
import android.app.TimePickerDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public  class TimePickerFragment extends DialogFragment implements TimePickerDialog.OnTimeSetListener {
Calendar c,d;	

@Override
public Dialog onCreateDialog(Bundle savedInstanceState) {
	final Calendar c = Calendar.getInstance();
	int hour = c.get(Calendar.HOUR_OF_DAY);
	int minute = c.get(Calendar.MINUTE);
	return new TimePickerDialog(getActivity(), this, hour, minute,DateFormat.is24HourFormat(getActivity()));
}

public void onTimeSet(TimePicker view, int hourOfDay, int minute) {
	c = Calendar.getInstance();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy:MM:dd hh:mm:ss");	
	d=new GregorianCalendar( c.get(Calendar.YEAR), c.get(Calendar.MONTH), c.get(Calendar.DAY_OF_MONTH),hourOfDay,minute);
	String s = formatter.format(d.getTime()); 
	Long startTime=d.getTimeInMillis();
	
	MainActivity activity = (MainActivity)getActivity();  // For calling containner activity method
	activity.startReveiving(startTime);
	}	
}