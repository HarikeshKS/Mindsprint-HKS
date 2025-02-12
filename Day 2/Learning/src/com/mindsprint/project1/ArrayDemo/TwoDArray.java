package com.mindsprint.project1.ArrayDemo;

public class TwoDArray {
    public static void main(String[] args) {
        int[][] array = new int[3][];
        int[][] array2 ={{1,2,3},{4,5,6}};

        for (int i = 0; i < array2.length; i++) {
            for (int j = 0; j < array2[i].length; j++) {
                System.out.print(array2[i][j] + "\t");
            }
            System.out.println();
        }

        // Using For Each Loop
        System.out.println("\nUsing FOR EACH LOOP");
        for (int[] arr : array2) {
            for (int num : arr) {
                System.out.print(num + "\t");
            }
            System.out.println();
        }
    }
}