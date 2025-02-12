package com.mindsprint.project1.oops.inheritance;

class Base {
    int num;

    Base(int num) {
        this.num = num;
    }
}

class Derived extends Base {
    Derived(int data) {
        super(data); // passing parameter to parent class constructor
    }
}

public class TestSuper {
    public static void main(String[] args) {
        Derived d = new Derived(77);
        System.out.println(d.num);
        // num is the variable declared in parent class
    }
}
