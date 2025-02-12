package com.mindsprint.project1.loops;

public class NestedLoop {
    public static void main(String[] args) {
        int num = 1;
        for (int i = 0; i < 6; i++) {
            for (int j = 0; j < i; j++) {
                System.out.print(" " + num + " ");
                num++;
            }
            System.out.println();
        }
    }
}
