package com.mindsprint.project1.oops.inheritance;

class Parent {
    public String name = "Testing123";

    public Parent() {
        System.out.println("Baap class constructor");
    }

    public void hello() {
        System.out.println("Hello from baap");
    }
}

class Child extends Parent {
    public Child() {
        super();
        System.out.println("Baccha class Constructor");
    }

    public void print() {
        System.out.println("Welcome: " + name);
    }
}

public class InheritanceDemo {
    public static void main(String[] args) {
        Child baccha = new Child();
        baccha.print();
        baccha.hello();
        System.out.println(baccha.name);
    }
}
