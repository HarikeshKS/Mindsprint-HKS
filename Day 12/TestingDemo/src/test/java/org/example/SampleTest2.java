package org.example;

import org.junit.jupiter.api.*;

public class SampleTest2 {
    @BeforeAll
    public static void testbeforeALl() {
        System.out.println("Before all the test cases!");
    }
    @AfterAll
    public static void testafterALl() {
        System.out.println("After all the test cases!");
    }
    @BeforeEach
    public void setup() {
        System.out.println("DB Connected");
    }
    @AfterEach
    public void tearDown() {
        System.out.println("DB Disconnected");
    }
    @Test
    public void myTest1() {
        System.out.println("Test 1 Executed");
    }
    @Test
    public void myTest2() {
        System.out.println("Test 2 Executed");
    }
}
