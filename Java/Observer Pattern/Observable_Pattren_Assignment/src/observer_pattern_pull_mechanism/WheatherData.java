/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package observer_pattern_pull_mechanism;

import java.util.Observable;

/**
 *
 * @author mhama
 */
public class WheatherData extends Observable{
    private int temperature;
    private int pressure;
    private int humidity;
    
    
    public WheatherData() {
    }
    
    public int getTemperature() {
        return temperature;
    }

    public void setTemperature(int temperature) {
        this.temperature = temperature;
        setChanged();
        notifyObservers();
    }

    public int getPressure() {
        return pressure;
    }

    public void setPressure(int pressure) {
        this.pressure = pressure;
        setChanged();
        notifyObservers();
    }

    public int getHumidity() {
        return humidity;
    }

    public void setHumidity(int humidity) {
        this.humidity = humidity;       
        setChanged();
        notifyObservers();
    }
    
    public void setmeasurments(int temperature,int humidity,int pressure){
        this.temperature=temperature;
        this.humidity=humidity;
        this.pressure=pressure;
        setChanged();
        notifyObservers();
    }

}   
