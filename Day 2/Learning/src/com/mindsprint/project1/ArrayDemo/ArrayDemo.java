package com.mindsprint.project1.ArrayDemo;

import java.util.Scanner;

public class ArrayDemo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] array1 = new int[5];
        String[] name = {"test1", "test2", "test3", "test4"};
        System.out.println(name[0]); // Accessing direct element

        for (int i = 0; i < name.length; i++) {
            System.out.println(name[i]);
        }

        // For Each loop -
        System.out.println("\n--- Using FOR EACH Loop ---");
        for (String n : name) {
            System.out.println(n);
        }

        System.out.println("Storing values in array using loop~");
        for (int i = 0; i < array1.length; i++) {
            System.out.println("Enter any number: ");
            array1[i] = sc.nextInt();
        }

        System.out.println("\n--- Printing the integer array ---");
        for (int n : array1) {
            System.out.println(n);
        }

    }
}
