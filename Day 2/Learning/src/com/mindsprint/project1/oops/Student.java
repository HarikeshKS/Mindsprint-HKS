package com.mindsprint.project1.oops;

public class Student {
    int id;
    String name;
    String email;
    String address;

    public Student(int id, String name, String email, String address) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.address = address;
    }

    public Student(String name, String email, String address) {
        // calling the other constructor below ->
        this((int) Math.round(Math.random() * 100), name, email, address);
    }

    public Student() {
        super();
    }

    //other way ->
//    public Student(String name, String email, String address) {
//        this.id = (int) Math.round(Math.random() * 100;
//        this.name = name;
//        this.email = email;
//        this.address = address;
//    }
    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                '}';
    }

    public static void main(String[] args) {
        Student s1 = new Student();
        Student s2 = new Student("Brother", "bro@bro.in", "kahi to rahta hai");
        Student s3 = new Student(7, "Thala", "thala.ms@bro.in", "bade ghar me rahta hai");

        System.out.println(s1);
        System.out.println(s2);
        System.out.println(s3);
    }
}
