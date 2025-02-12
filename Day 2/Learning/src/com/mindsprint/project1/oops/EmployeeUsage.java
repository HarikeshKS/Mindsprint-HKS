package com.mindsprint.project1.oops;

public class EmployeeUsage {
    public static void main(String[] args) {
        Employee e1 = new Employee();
        System.out.println(e1);
        Employee e2 = new Employee();
        e2.setId(7);
        e2.setName("Thala");
        e2.setSalary(90000);
        System.out.println("Id: " + e2.getId() + "\nName: " + e2.getName() + "\nSalary: " + e2.getSalary());
    }
}
