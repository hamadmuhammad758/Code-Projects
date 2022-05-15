/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package roundrobin_tq_p;

import java.util.*;
/**
 *
 * @author Obaid Abbasi
 */
public class RRI {
            Scanner sc=new Scanner(System.in);
   
        int size;
        int bur[],wai[],ta[];
        float t1=0,t2=0;
        
        RRI(int size)
            {
                        this.size=size;
                        bur=new int[size];
                        wai=new int[size];
                        ta=new int[size]; 
            }
        
        void get(){

            for(int i=0;i<size;i++)
            {
                System.out.print("Burst time for Process"+(i+1)+"=");
                bur[i]=sc.nextInt();
            }
        }
        void round(){
            /////////////////////////////////
            wai[0]=0;
            for(int i=1;i<size;i++)
            {
                wai[i]=bur[i-1]+wai[i-1];
                t1+=wai[i];
            }
            
            for(int i=0;i<size;i++)
            {
                ta[i]=bur[i]+wai[i];
                t2+=ta[i];
            }
        }    
            //////////////////////////
        void display(){    
            System.out.println("\nProcess\tBurst\tWaiting\tTurnaround");
            for(int i=0;i<size;i++)
            {
                System.out.println("P"+(i+1)+"\t"+bur[i]+"\t"+wai[i]+"\t"+ta[i]);
            }
                System.out.println("Average Waiting time="+t1/size);
            System.out.println("Average Turn Around time="+t2/size);
        }

            
}
