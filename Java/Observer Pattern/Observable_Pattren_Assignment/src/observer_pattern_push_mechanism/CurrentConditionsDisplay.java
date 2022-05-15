/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package observer_pattern_push_mechanism;

import observer_pattern_pull_mechanism.*;
import java.util.Observable;
import java.util.Observer;

public class CurrentConditionsDisplay implements Observer{
    private int temperature;
    private int pressure;
    private int humidity;
    private WheatherData wheatherData;
    @Override
    public void update(Observable o, Object o1) {
        System.out.println("Using pull in CurrentConditions Class ::"+o1  );
    }   
}
