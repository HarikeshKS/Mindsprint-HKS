# SOLID Principles

## Single Responsibility Principle (SRP)

Every software component should have one and only one responsibility. This means a class, method, or module should only have one reason to change.

### Example in Java

```java
class Book {
    private String title;
    private String author;

    // Constructor, getters, and setters

    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }
}

class BookPrinter {
    public void print(Book book) {
        System.out.println(book.getTitle() + " by " + book.getAuthor());
    }
}
```

In this example, the `Book` class is only responsible for holding book data, while the `BookPrinter` class is responsible for printing the book details.

### Real-life Example

Consider a restaurant. The chef is responsible for cooking, while the waiter is responsible for serving food. Each has a single responsibility.

## Open/Closed Principle (OCP)

Software entities should be open for extension but closed for modification. This means you should be able to add new functionality without changing existing code.

### Example in Java

```java
abstract class Shape {
    abstract double area();
}

class Circle extends Shape {
    private double radius;

    Circle(double radius) {
        this.radius = radius;
    }

    @Override
    double area() {
        return Math.PI * radius * radius;
    }
}

class Rectangle extends Shape {
    private double length;
    private double width;

    Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }

    @Override
    double area() {
        return length * width;
    }
}
```

In this example, new shapes can be added by extending the `Shape` class without modifying existing code.

### Real-life Example

A plug-and-play device like a USB drive can be used with different computers without modifying the computer's hardware.

## Liskov Substitution Principle (LSP)

Objects of a superclass should be replaceable with objects of a subclass without affecting the correctness of the program.

### Example in Java

```java
class Bird {
    public void fly() {
        System.out.println("Flying");
    }
}

class Sparrow extends Bird {
    @Override
    public void fly() {
        System.out.println("Sparrow flying");
    }
}

class Ostrich extends Bird {
    @Override
    public void fly() {
        throw new UnsupportedOperationException("Ostrich can't fly");
    }
}
```

In this example, `Ostrich` violates LSP because it cannot fly, unlike other birds.

### Real-life Example

A square is a rectangle, but if you replace a rectangle with a square in a program that expects a rectangle, it might not work correctly if the program relies on the ability to change width and height independently.

## Interface Segregation Principle (ISP)

Clients should not be forced to depend on interfaces they do not use. This means creating smaller, more specific interfaces rather than a large, general-purpose one.

### Example in Java

```java
interface Printer {
    void print();
}

interface Scanner {
    void scan();
}

class MultiFunctionPrinter implements Printer, Scanner {
    @Override
    public void print() {
        System.out.println("Printing");
    }

    @Override
    public void scan() {
        System.out.println("Scanning");
    }
}

class SimplePrinter implements Printer {
    @Override
    public void print() {
        System.out.println("Printing");
    }
}
```

In this example, `Printer` and `Scanner` interfaces are separated, so a class can implement only the functionality it needs.

### Real-life Example

In a restaurant, a chef should not be required to serve food if their job is only to cook.

## Dependency Inversion Principle (DIP)

High-level modules should not depend on low-level modules. Both should depend on abstractions. Abstractions should not depend on details. Details should depend on abstractions.

### Example in Java

```java
interface Keyboard {
    void type();
}

class MechanicalKeyboard implements Keyboard {
    @Override
    public void type() {
        System.out.println("Typing on mechanical keyboard");
    }
}

class Computer {
    private Keyboard keyboard;

    Computer(Keyboard keyboard) {
        this.keyboard = keyboard;
    }

    public void type() {
        keyboard.type();
    }
}
```

In this example, `Computer` depends on the `Keyboard` interface, not a specific implementation, allowing for flexibility.

### Real-life Example

A power socket (high-level module) should depend on a plug interface (abstraction), not on the specific type of plug (low-level module).
