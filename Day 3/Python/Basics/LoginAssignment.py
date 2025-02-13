def checkAdmin(email,password):
    if(email == "admin@gmail.com" and password == "admin@123"):
        print("Admin loggedin Successfully.")
    else:
        print("Not Admin!\nTry again!")


email = input("Enter your email: ")
password = input("Enter password: ")

checkAdmin(email, password)