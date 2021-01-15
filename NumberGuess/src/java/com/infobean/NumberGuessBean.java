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
public class NumberGuessBean {
 
    private String guess;
    private int numGuesses;
    private String hint;
    private boolean match;
    private int answer;

    public NumberGuessBean() {
        reset();
    }

    public void reset() {
        answer = (int)(Math.random() * 10) + 1;
        match = false;
        numGuesses = 0;
    }

    public String getGuess() {
        return guess;
    }

    public void setGuess(String guess) {
        if (guess != null) numGuesses++;

        int gs;

        try {
            gs = Integer.parseInt(guess);
        } catch (NumberFormatException e) {
            gs = -1;
        }

        if (gs == -1) {
            hint = "Error: Isikan hanya angka digit";
        } else if (gs < answer) {
            hint = "Lebih besar ... Tebakan terlalu kecil";
        } else if (gs > answer) {
            hint = "Lebih kecil ... Tebakan terlalu besar";
        } else {
            hint = "Selamat ! Tebakan anda benar...";
            match = true;
        }

        this.guess = String.valueOf(gs);
    }

    public int getNumGuesses() {
        return numGuesses;
    }

    public String getHint() {
        return hint;
    }

    public boolean isMatch() {
        return match;
    }
}

