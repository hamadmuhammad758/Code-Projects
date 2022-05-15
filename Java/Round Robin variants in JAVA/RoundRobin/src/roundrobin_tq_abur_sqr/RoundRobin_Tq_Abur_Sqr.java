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
public class RoundRobin_Tq_Abur_Sqr {
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner s=new Scanner(System.in);
        System.out.print("Enter the no of process:");
        int n=s.nextInt();
        RRI rri = new RRI(n);
                        rri.get();
                        rri.round();
                        rri.display();
//        double n=7;
//        n=Math.sqrt(n);
//        int a= (int)n;

    }
}
    
