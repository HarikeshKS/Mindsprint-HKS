package com.mindsprint.project1.activity;

import java.util.Scanner;

class Account {
    private int accNumber;
    private String holderName;
    private int balance;

    public int getAccNumber() {
        return accNumber;
    }

    public void setAccNumber(int accNumber) {
        this.accNumber = accNumber;
    }

    public String getHolderName() {
        return holderName;
    }

    public void setHolderName(String holderName) {
        this.holderName = holderName;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }
}

interface AccountMethods {
    void withdraw(int amount);

    void deposit(int amount);
}

class SavingAccount extends Account implements AccountMethods {
    public SavingAccount(int accNumber, String holderName, int balance) {
        this.setAccNumber(accNumber);
        this.setHolderName(holderName);
        this.setBalance(balance);
    }

    @Override
    public void withdraw(int amount) {
        System.out.println("Withdraw of Rs." + amount + " is successful from your Savings Account.\n And Balance is: " + (this.getBalance() - amount));
    }

    @Override
    public void deposit(int amount) {
        System.out.println("Deposit of Rs." + amount + " is successful in your Savings Account.\n And Balance is: " + (this.getBalance() + amount));
    }
}

class CurrentAccount extends Account implements AccountMethods {
    public CurrentAccount(int accNumber, String holderName, int balance) {
        this.setAccNumber(accNumber);
        this.setHolderName(holderName);
        this.setBalance(balance);
    }

    @Override
    public void withdraw(int amount) {
        System.out.println("Withdraw of Rs." + amount + " is successful from your Current Account.\n And Balance is: " + (this.getBalance() - amount));
    }

    @Override
    public void deposit(int amount) {
        System.out.println("Deposit of Rs." + amount + " is successful in your Current Account.\n And Balance is: " + (this.getBalance() + amount));
    }
}

public class AccountExercise {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the choice for account (Saving/Current): ");
        String accChoice = sc.next();
        System.out.println("Enter Account number: ");
        int accNumber = sc.nextInt();
        System.out.println("Enter your name: ");
        String holderName = sc.next();

        if (accChoice.equalsIgnoreCase("Saving")) {
            SavingAccount sa = new SavingAccount(accNumber, holderName, 100000);
            System.out.println("Withdraw/Deposit: ");
            String operationChoice = sc.next();
            System.out.println("Enter amount to " + operationChoice + " here: ");
            int amount = sc.nextInt();
            if (operationChoice.equalsIgnoreCase("Withdraw")) {
                sa.withdraw(amount);
            } else if (operationChoice.equalsIgnoreCase("Deposit")) {
                sa.deposit(amount);
            }
        } else if (accChoice.equalsIgnoreCase("Current")) {
            CurrentAccount ca = new CurrentAccount(accNumber, holderName, 90000);
            System.out.println("Withdraw/Deposit: ");
            String operationChoice = sc.next();
            System.out.println("Enter amount to " + operationChoice + " here: ");
            int amount = sc.nextInt();
            if (operationChoice.equalsIgnoreCase("Withdraw")) {
                ca.withdraw(amount);
            } else if (operationChoice.equalsIgnoreCase("Deposit")) {
                ca.deposit(amount);
            }
        } else {
            System.out.println("Invalid account choice.");
        }
    }
}
