/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.infobean;
/**
 *
 * @author hp-ProBook
 */
public class RandomNumber {
   private int rndNumber2;

    public RandomNumber() {
        rndNumber2 = (int)(Math.random() * 100);
    }

    public int getRandomNumber() {
        return (int)(Math.random() * 100);
    }

    public int getRndNumber2() {
        return rndNumber2;
    }
}
