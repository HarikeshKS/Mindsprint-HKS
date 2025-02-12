package com.mindsprint.project1.activity;

import java.util.Scanner;

public class LargestTwo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter first number: ");
        int num1 = sc.nextInt();
        System.out.println("Enter second number: ");
        int num2 = sc.nextInt();
        String result = (num1>num2) ? "First number is largest!" : "First number is largest!";
        System.out.println(result);
    }
}
