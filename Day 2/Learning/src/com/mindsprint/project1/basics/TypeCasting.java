package com.mindsprint.project1.basics;

public class TypeCasting {
    public static void main(String[] args) {
        short data = 7;
        float data1 = data;
        System.out.println("Data 1: " + data1);

        double info = 77.88;
        int info1 = (int)info;  // Explicit Type Casting
        System.out.println("Info 1: " + info1);

        char ch = 'H';
        int chInt = (int) ch;
        System.out.println("ASCII No.: " + chInt);
        System.out.println("In LowerCase: " + (char)(chInt + 32));
    }
}
