package com.mindsprint.project1.oops.abstraction;

abstract class Test {
    public void display() {
    }
}

public class AbstractionDemo extends Test {
    @Override
    public void display() {
        super.display();
        System.out.println("Implementd Baap's method");
    }

    public static void main(String[] args) {
        Test t = new AbstractionDemo();
        t.display();
    }
}
