/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package roundrobin_tq_abur_sqr;

import java.util.Scanner;

/**
 *
 * @author Obaid Abbasi
 */
public class RRI {
    Scanner sc=new Scanner(System.in);
            int[] bur,rem,wai,ta;
            int size,q,a_wait=0,a_ta=0,flag=0;
            int wait=0;
            RRI(int size)
            {
                        this.size=size;
                        bur=new int[size];
                        wai=new int[size];
                        ta=new int[size];
                        rem=new int[size];
            }
            void get()
            {
                        for(int i=0;i<size;i++)
                        {
                                    System.out.print("Enter burst time of Process"+(i+1)+":");
                                    bur[i]=rem[i]=sc.nextInt();
                        }
                        
                        //q=sc.nextInt();
                        for(int i=0;i<size;i++)
                        {
                                   q+=bur[i];
                        }
                        q=q/size;
                        double n=q;
                        n=Math.sqrt(n);
                        q= (int)n;
                        System.out.print("quantum time:"+q+"\n");
            }
            void round()
            {
                        do{
                                    flag=0;
                                    for(int i=0;i<size;i++)
                                    {
                                                if(rem[i]>=q)
                                                {
                                                            System.out.print("P"+(i+1)+"\t");
                                                            for(int j=0;j<size;j++)
                                                            {
                                                                        if(j==i)
                                                                                    rem[i]=rem[i]-q;
                                                                        else if(rem[j]>0)
                                                                                    wai[j]+=q;
                                                            }
                                                }
                                                else if(rem[i]>0)
                                                {
                                                            System.out.print("P"+(i+1)+"\t");
                                                            
                                                            for(int j=0;j<size;j++)
                                                            { 
                                                                        if(j==i)
                                                                        {            
                                                                            wait=rem[i];
                                                                            rem[i]=0;
                                                                        }
                                                                        else if(rem[j]>0){
                                                                            if(j<i){
                                                                                wait=rem[i];
                                                                                wai[j]+=wait;
                                                                            }
                                                                            else{
                                                                                    wai[j]+=wait;
                                                                            }
                                                                        }
                                                            }
                                                }
                                    }
                                    for(int i=0;i<size;i++)
                                                if(rem[i]>0)
                                                            flag=1;
                        }while(flag==1);
                        for(int i=0;i<size;i++)
                                    ta[i]=wai[i]+bur[i];
            }
            void display()
            {
                        System.out.println("\nProcess\tBurst\tWaiting\tTurnaround");
                        for(int i=0;i<size;i++)
                        {
                                    System.out.println("P"+(i+1)+"\t"+bur[i]+"\t"+wai[i]+"\t"+ta[i]);
                                    a_wait+=wai[i];
                                    a_ta+=ta[i];
                        }
                        System.out.println("Average waiting time:"+(a_wait/size));
                        System.out.println("Average Turnaround time:"+(a_ta/size));
            }
}
