# Have to take from Ma'am's code !!!!!!
employees = {
    "emp1": {"Harikesh": 100000},
    "emp2": {"Hariom": 80000},
    "emp3": {"Hrishikesh": 75000}
}

def add_employee(emp_id, name, salary):

    employees[emp_id] = {name: salary}
    print(f"Added {name} with a salary of {salary}.")

def update_employee(emp_id, name, salary):
    if emp_id in employees:
        employees[emp_id] = {name: salary}
        print(f"Updated {name}'s salary to {salary}.")
    else:
        print(f"Employee ID {emp_id} not found.")

def remove_employee(emp_id):
    if emp_id in employees:
        del employees[emp_id]
        print(f"Removed employee with ID {emp_id} from the employee list.")
    else:
        print(f"Employee ID {emp_id} not found.")

def display_employees():
    print("Employee Salaries:")
    for emp_id, details in employees.items():
        for name, salary in details.items():
            print(f"{emp_id}: {name} - {salary}")

while True:
    print("\nEmployee Management System")
    print("1. Add a new employee")
    print("2. Update an employee's salary")
    print("3. Remove an employee")
    print("4. View all employees")
    print("5. Exit")
    choice = input("Enter your choice (1-5): ")

    if choice == '1':
        emp_id = input("Enter the employee ID: ")
        name = input("Enter the employee's name: ")
        salary = int(input("Enter the employee's salary: "))
        add_employee(emp_id, name, salary)
    elif choice == '2':
        emp_id = input("Enter the employee ID: ")
        name = input("Enter the employee's name: ")
        salary = int(input("Enter the new salary: "))
        update_employee(emp_id, name, salary)
    elif choice == '3':
        emp_id = input("Enter the employee ID to remove: ")
        remove_employee(emp_id)
    elif choice == '4':
        display_employees()
    elif choice == '5':
        print("Exiting the Employee Management System. Goodbye!")
        break
    else:
        print("Invalid choice. Please enter a number between 1 and 5.")