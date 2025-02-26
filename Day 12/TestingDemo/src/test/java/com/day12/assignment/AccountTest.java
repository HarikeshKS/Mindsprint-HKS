package com.day12.assignment;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class AccountTest {
    private Account account;

    @BeforeEach
    public void setUp() {
        account = new Account();
        account.setAccNumber(12345);
        account.setHolderName("John Doe");
        account.setBalance(1000);
    }

    @Test
    public void testGetAccNumber() {
        assertEquals(12345, account.getAccNumber());
    }

    @Test
    public void testSetAccNumber() {
        account.setAccNumber(54321);
        assertEquals(54321, account.getAccNumber());
    }

    @Test
    public void testGetHolderName() {
        assertEquals("John Doe", account.getHolderName());
    }

    @Test
    public void testSetHolderName() {
        account.setHolderName("Jane Doe");
        assertEquals("Jane Doe", account.getHolderName());
    }

    @Test
    public void testGetBalance() {
        assertEquals(1000, account.getBalance());
    }

    @Test
    public void testSetBalance() {
        account.setBalance(2000);
        assertEquals(2000, account.getBalance());
    }

    @Test
    public void testDeposit() {
        account.deposit(500);
        assertEquals(1500, account.getBalance());
    }

    @Test
    public void testDepositNegativeAmount() {
        Exception exception = assertThrows(IllegalArgumentException.class, () -> {
            account.deposit(-500);
        });
        assertEquals("Deposit amount must be positive", exception.getMessage());
    }

    @Test
    public void testWithdraw() {
        account.withdraw(500);
        assertEquals(500, account.getBalance());
    }

    @Test
    public void testWithdrawInvalidAmount() {
        Exception exception = assertThrows(IllegalArgumentException.class, () -> {
            account.withdraw(1500);
        });
        assertEquals("Invalid withdraw amount", exception.getMessage());
    }

    @Test
    public void testWithdrawNegativeAmount() {
        Exception exception = assertThrows(IllegalArgumentException.class, () -> {
            account.withdraw(-500);
        });
        assertEquals("Invalid withdraw amount", exception.getMessage());
    }
}