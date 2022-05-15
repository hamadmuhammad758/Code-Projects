package com.example.parentalcontrol;

import java.util.Random;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;


public class DialLogin extends Activity 
{
	Editor editor;
	SharedPreferences sharedpreferences;

	Editor signs;
	SharedPreferences spSign;

	Editor codes;
	SharedPreferences codepref;
	@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.splash);
        //--------------
        
        sharedpreferences = getSharedPreferences("MyPREFERENCES", Context.MODE_PRIVATE);
        editor = sharedpreferences.edit();

        spSign = getSharedPreferences("SignUp", Context.MODE_PRIVATE);
        signs = spSign.edit();
        
        codepref = getSharedPreferences("SharedCodes", Context.MODE_PRIVATE);
        codes = codepref.edit();
        
       //-----------
        
        
   }   
	public void enterClick(View v){
	     Boolean aa=sharedpreferences.getBoolean("AlreadySaved",false);
	     
	     if(aa==false){
    		setContentView(R.layout.sign_up);
		}else{
			setContentView(R.layout.log_in);;
		}
	}
   public void signIn(View view) 
        {
	   int min = 65000;
	   int max = 80000;
	   Random r = new Random();
	   int ii = r.nextInt(max - min + 1) + min;
	   String iid="hamad"+ii;
	  
	   Toast.makeText(getApplicationContext(), "iid"+iid,Toast.LENGTH_LONG).show();// 
	   
	        String email =((EditText)findViewById(R.id.semail)).getText().toString();
            String subject="Parental control Application Confirmation";
            String message ="Insert This code  "+iid+"   in your app for confirmation of account , If you didn't requested to make account , Kindly Ignore this mail";
            email_here ee=new email_here();
            ee.sendMail(email, subject, message);
           
            signs.putString("name",((EditText)findViewById(R.id.sname)).getText().toString());signs.commit();
            signs.putString("password",((EditText)findViewById(R.id.spassword)).getText().toString());signs.commit();
            signs.putString("email", ((EditText)findViewById(R.id.semail)).getText().toString());signs.commit();
            signs.putString("phoneNo", ((EditText)findViewById(R.id.sphoneNo)).getText().toString());signs.commit();
            signs.putString("id", iid);signs.commit();
            setContentView(R.layout.confirm_code);
     }
    public void ConfirmCode(View v){
    	String myCode=spSign.getString("id", "");
    	String mypass=((EditText)findViewById(R.id.codeNo)).getText().toString();
		Toast.makeText(getApplicationContext(), "Saved"+myCode,Toast.LENGTH_LONG).show();
		Toast.makeText(getApplicationContext(), "your"+mypass+"check-"+mypass.equals(myCode),Toast.LENGTH_LONG).show();
    	if(mypass.equals(myCode)){
    		Toast.makeText(getApplicationContext(), "Succuefull Login",Toast.LENGTH_LONG).show();
            setContentView(R.layout.log_in);
            editor.putBoolean("AlreadySaved",true);
            editor.commit();
            //set codes
            codes.putString("Mycodes", "wifion*wifioff*silent*ringer*");
            codes.commit();
            //
    	}else{
    		Toast.makeText(getApplicationContext(), "Invalid Code",Toast.LENGTH_LONG).show();
    	}
    }
    public void LoginClick(View v){
    	String nn=spSign.getString("name", "");
    	String  pp=spSign.getString("password", "");
    	
    	if((((EditText)findViewById(R.id.lname)).getText().toString().equals(nn)) &&(((EditText)findViewById(R.id.lpassword)).getText().toString().equals(pp))){
    		Toast.makeText(getApplicationContext(), "Valid username,password ! Succuefull Login",Toast.LENGTH_LONG).show();
        	startActivity(new Intent(this,All_functions_list.class));
    	}
    }
}