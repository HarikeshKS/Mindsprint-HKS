package com.mindsprint.project1.basics;

import java.util.Scanner;


public class ArithmeticDemo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter first num: ");
        int num1 = sc.nextInt();
        System.out.println("Enter second num: ");
        int num2 = sc.nextInt();

        System.out.println("Addition: " + (num1 + num2));
        System.out.println("Subtraction: " + (num1 - num2));
        System.out.println("Division: " + (num1 / num2));
        System.out.println("Multiplication: " + (num1 * num2));
    }
}
