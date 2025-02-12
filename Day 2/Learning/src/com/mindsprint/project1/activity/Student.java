package com.mindsprint.project1.activity;

public class Student {
    String name;
    int[] grades;

    public Student(String name, int[] grades) {
        this.name = name;
        this.grades = grades;
    }

    public void calculateAverage() {
        int sum = 0;
        for (int grade : grades) {
            sum += grade;
        }
        displayInfo(sum / grades.length);
    }

    public void displayInfo(int average) {
        System.out.println(this.name + ", " + average);
    }

    public static void main(String[] args) {
        Student s1 = new Student("Thala", new int[]{89, 65, 43, 21, 12});
        s1.calculateAverage();
    }
}
