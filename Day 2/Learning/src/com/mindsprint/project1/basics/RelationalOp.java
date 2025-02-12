package com.mindsprint.project1.basics;

import java.util.Scanner;

public class RelationalOp {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter first num: ");
        int num1 = sc.nextInt();
        System.out.println("Enter second num: ");
        int num2 = sc.nextInt();

        System.out.println("Is num1>num2: " + (num1 > num2));
        System.out.println("Is num1<num2: " + (num1 < num2));
        System.out.println("Is num1>=num2: " + (num1 >= num2));
        System.out.println("Is num1<=num2: " + (num1 <= num2));
        System.out.println("Is num1==num2: " + (num1 == num2));
        System.out.println("Is num1!=num2: " + (num1 != num2));

        // Unary Operator Demo
        int a = 0;
        int y = a++ + ++a;
        System.out.println("a : " + a);
        System.out.println("y : " + y);

    }
}
