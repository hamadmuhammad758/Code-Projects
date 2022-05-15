/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package observer_pattern_push_mechanism;

import observer_pattern_pull_mechanism.*;
import java.awt.Frame;
import javax.swing.JOptionPane;

/**
 *
 * @author mhama
 */
public class Observable_Pattren_Assignment {
    public static void main(String[] args) {
        WheatherData w=new WheatherData();
        CurrentConditionsDisplay ccd=new CurrentConditionsDisplay();
        StatisticsDisplay sd=new StatisticsDisplay();
        ForecastDisplay fd=new ForecastDisplay();
        
        w.addObserver(ccd);
        w.addObserver(sd);
        w.addObserver(fd);      
        
        w.setmeasurments(95, 30, 120);
        System.out.println("Changing temperature of wheatherdata from main");
        w.setTemperature(32);
        
    }
    
}
