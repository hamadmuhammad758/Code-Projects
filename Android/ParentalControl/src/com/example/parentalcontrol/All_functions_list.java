package com.example.parentalcontrol;

import android.app.ListActivity;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

public class All_functions_list extends ListActivity {

	Editor codes;
	SharedPreferences codepref;
	String []cc={"No Function"};
	String[] items1={"123", "456","92344", "923445", "sit", "amet"};
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
        //setContentView(R.layout.all_functions_list);
        codepref = getSharedPreferences("SharedCodes", Context.MODE_PRIVATE);
        codes = codepref.edit();
        
        cc=ExplodeFile(codepref.getString("Mycodes",""),'*');  
        Log.d("code",codepref.getString("Mycodes","")+" : lengthca : "+cc.length +"cc[3]"+cc[3]); 
    
        setListAdapter(new ArrayAdapter<String>(this,android.R.layout.simple_list_item_1,cc));
	}
	@Override
	protected void onListItemClick(ListView l, View v, int position, long id) {
		super.onListItemClick(l, v, position, id);
		if(position==0)
		{
			Toast.makeText(this, "Icon Hide",1000).show();
			PackageManager p = getPackageManager();
			ComponentName componentName = new ComponentName(this, com.example.parentalcontrol.Log_in.class); // activity which is first time open in manifiest file which is declare as <category android:name="android.intent.category.LAUNCHER" />
			p.setComponentEnabledSetting(componentName,PackageManager.COMPONENT_ENABLED_STATE_DISABLED, PackageManager.DONT_KILL_APP);
		}else{

			Toast.makeText(this, "Icon UnHide",1000).show();
			PackageManager p = getPackageManager();
			ComponentName componentName = new ComponentName(this, com.example.parentalcontrol.Log_in.class); // activity which is first time open in manifiest file which is declare as <category android:name="android.intent.category.LAUNCHER" />
			p.setComponentEnabledSetting(componentName, PackageManager.COMPONENT_ENABLED_STATE_ENABLED, PackageManager.DONT_KILL_APP);
		}
	}	
	public String[] ExplodeFile(String data,char Seperater){           
		char [] filee=data.toCharArray();                              
		String temp="";                                                
		String [] Result=new String[1];                                
		int resultCount=0;                                             
		for (int i = 0; i < filee.length; i++) {                       
			if(filee[i]==Seperater){                                   
				Result[resultCount++]=temp;                            
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
	
}
