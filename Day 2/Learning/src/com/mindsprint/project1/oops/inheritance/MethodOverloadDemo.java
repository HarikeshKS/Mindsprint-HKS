package com.mindsprint.project1.oops.inheritance;

public class MethodOverloadDemo {
    public int add(int num1, int num2) {
        return num1 + num2;
    }

    public double add(double num1, double num2) {
        return num1 + num2;
    }

    public float add(float num1, float num2) {
        return num1 + num2;
    }

    public static void main(String[] args) {
        MethodOverloadDemo m = new MethodOverloadDemo();
        System.out.println(m.add(7.7, 34.2));
        System.out.println(m.add(7.721f, 34.211f));
        System.out.println(m.add(7, 4));
    }
}
