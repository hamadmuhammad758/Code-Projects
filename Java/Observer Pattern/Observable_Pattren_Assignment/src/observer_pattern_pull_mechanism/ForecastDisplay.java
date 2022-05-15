/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package observer_pattern_pull_mechanism;

import java.util.Observable;
import java.util.Observer;

/**
 *
 * @author mhama
 */
public class ForecastDisplay implements Observer{
    private int temperature;
    private int pressure;
    private int humidity;
    private WheatherData wheatherData;
    @Override
    public void update(Observable o, Object o1) {
        wheatherData=(WheatherData) o;
        this.temperature=wheatherData.getTemperature();
        this.pressure=wheatherData.getPressure();
        this.humidity=wheatherData.getHumidity();
        System.out.println("New Wheatherdata  from ForecastDisplay Class :: Temperature : "+temperature +"C -- Pressure : "+pressure+" -- Humidity : "+humidity );
    }
    
}
