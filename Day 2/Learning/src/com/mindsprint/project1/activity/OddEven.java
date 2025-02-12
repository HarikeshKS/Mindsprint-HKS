package com.mindsprint.project1.activity;

import java.util.Scanner;

public class OddEven {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter number: ");
        int num = sc.nextInt();
        String result = (num%2==0) ? "Number is Even!" : "Number is Odd!";
        System.out.println(result);
    }
}
