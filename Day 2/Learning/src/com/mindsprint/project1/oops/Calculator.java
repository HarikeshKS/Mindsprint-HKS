package com.mindsprint.project1.oops;

import static java.lang.Math.abs;

public class Calculator {
    public int add(int num1, int num2) {
        return num1 + num2;
    }

    public int sub(int num1, int num2) {
        return abs(num1 - num2);
    }

    public int multiply(int num1, int num2) {
        return num1 * num2;
    }

    public double divide(int num1, int num2) {
        return num1 / num2;
    }

    public int square(int num) {
        return num * num;
    }

    public int cube(int num) {
        return num * num * num;
    }

    public static void main(String[] args) {
        Calculator c = new Calculator();
        System.out.println("Addition: " + c.add(77, 12));
        System.out.println("Subtraction: " + c.sub(77, 12));
        System.out.println("Multiplication: " + c.multiply(77, 12));
        System.out.println("Division: " + c.divide(77, 12));

        int cubeResult = c.cube(67);
        System.out.println("Cube of 67 is: " + cubeResult);
        int sqrResult = c.square(67);
        System.out.println("Square of 67 is: " + sqrResult);
    }
}
