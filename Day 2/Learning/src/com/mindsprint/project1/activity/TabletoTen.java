package com.mindsprint.project1.activity;

public class TabletoTen {
    public static void main(String[] args) {
        int num = 10;
        for (int i = 2; i < 11; i++) {
            for (int j = 1; j < 11; j++) {
                System.out.println(i + " x " + j + " = " + (i*j));
            }
            System.out.println();
        }
    }
}
