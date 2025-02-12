package com.mindsprint.project1.basics;
import java.util.Scanner;
import static java.lang.Math.abs;

public class TernaryExp {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
//        System.out.println("Enter age: ");
//        int age = sc.nextInt();
//        String result = (age >= 18) ? "Valid to vote!" : "Not valid to vote brother!";
//        System.out.println(result);

        System.out.println("Enter Selling Price: ");
        int sellingPrice = sc.nextInt();
        System.out.println("Enter Purchase Price: ");
        int purchasePrice = sc.nextInt();

        String resultPrice = (purchasePrice > sellingPrice) ? "Loss!" : "Profit!";
        System.out.println(resultPrice + " of " + abs(purchasePrice - sellingPrice));
    }
}
