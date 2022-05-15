/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package roundrobin_tq_plesstqc;

import java.util.*;
/**
 *
 * @author Obaid Abbasi
 */
public class RoundRobin_Tq_PLessTqC {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner s=new Scanner(System.in);
        System.out.print("Enter the no of process:");
        int n=s.nextInt();
        RRI rri = new RRI(n);
                        rri.get();
                        rri.round();
                        rri.display();
    }
    
}
