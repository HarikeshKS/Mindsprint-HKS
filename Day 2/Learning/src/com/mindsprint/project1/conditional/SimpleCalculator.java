package com.mindsprint.project1.conditional;
import java.util.Scanner;

public class SimpleCalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        boolean continueCalculation = true;

        while (continueCalculation) {
            System.out.println("Select an operation:");
            System.out.println("1. Addition (+)");
            System.out.println("2. Subtraction (-)");
            System.out.println("3. Multiplication (*)");
            System.out.println("4. Division (/)");
            System.out.println("5. Exit");

            int choice = scanner.nextInt();

            if (choice == 5) {
                continueCalculation = false;
                System.out.println("Exiting the calculator. Goodbye!");
                break;
            }

            System.out.println("Enter first number: ");
            double num1 = scanner.nextDouble();

            System.out.println("Enter second number: ");
            double num2 = scanner.nextDouble();

            double result;

            switch (choice) {
                case 1:
                    result = num1 + num2;
                    System.out.println("The result is: " + result);
                    break;
                case 2:
                    result = num1 - num2;
                    System.out.println("The result is: " + result);
                    break;
                case 3:
                    result = num1 * num2;
                    System.out.println("The result is: " + result);
                    break;
                case 4:
                    if (num2 != 0) {
                        result = num1 / num2;
                        System.out.println("The result is: " + result);
                    } else {
                        System.out.println("Error! Division by zero.");
                    }
                    break;
                default:
                    System.out.println("Error! Invalid choice.");
            }
        }
    }
}
