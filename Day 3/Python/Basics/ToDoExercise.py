todos = []

def add_todo(todo):
    todos.append(todo)
    print(f"'{todo}' has been added to your todo list.")

def remove_todo(todo):
    if todo in todos:
        todos.remove(todo)
        print(f"'{todo}' has been removed from your todo list.")
    else:
        print(f"'{todo}' is not in your todo list.")

def get_all_todos():
    if todos:
        print("Your todo list:")
        for i, todo in enumerate(todos, start=1):
            print(f"{i}. {todo}")
    else:
        print("Your todo list is empty.")

while True:
    print("\nKya-kya karna hai ??? (TODO App)")
    print("1. Add a todo")
    print("2. Remove a todo")
    print("3. View all todos")
    print("4. Exit")
    choice = input("Enter your choice (1 to 4): ")

    if choice == '1':
        todo = input("Enter the todo: ")
        add_todo(todo)
    elif choice == '2':
        todo = input("Enter the todo to remove: ")
        remove_todo(todo)
    elif choice == '3':
        get_all_todos()
    elif choice == '4':
        print("Exiting brother!")
        break
    else:
        print("Invalid choice brother. Enter a number between 1 and 4 bro, what are you doing..?")