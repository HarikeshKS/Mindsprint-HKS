num = int(input("Enter number brother: "))

if num > 0:
    if num % 2 == 0:
        print("Positive and even number bro!")
    else:
        print("Positive and odd number bro!")
elif num == 0:
    print("It's zero bro!")
else:
    print("Negative number bro!")
    if num < -10:
        print("Also less than -10!")