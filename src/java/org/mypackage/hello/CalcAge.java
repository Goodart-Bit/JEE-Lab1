/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mypackage.hello;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author juand
 */
public class CalcAge {

    private int age;
    private Date birthdate;
    SimpleDateFormat fecha = new SimpleDateFormat("yyyy-MM-dd");

    public void setDate(String strBd) {
        try {
            birthdate = fecha.parse(strBd);
            setAge();
        } catch (ParseException ex) {
            Logger.getLogger(CalcAge.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int getAge() {
        return age;
    }

    public void setAge() {
        Date currentTime = new Date();
        double yearDifference = currentTime.getTime() - birthdate.getTime();
        yearDifference *= (1 / 1000D) * (1 / 60D) * (1 / 60D) * (1 / 24D) * (1 / 365D);
        age = (int) Math.floor((int) yearDifference);
    }
}
