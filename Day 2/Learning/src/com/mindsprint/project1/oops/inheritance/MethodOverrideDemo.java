package com.mindsprint.project1.oops.inheritance;

class BaapPhone {
    public void call() {
        System.out.println("Baap's phone calling!");
    }
}

class BacchaPhone extends BaapPhone {
    @Override
    public void call() {
        super.call();
        System.out.println("Baccha's phone calling!");
    }

}

public class MethodOverrideDemo {
    public static void main(String[] args) {
        BacchaPhone shyam = new BacchaPhone();
        shyam.call();
    }
}

