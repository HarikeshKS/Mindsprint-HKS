marks = int(input("Enter marks: "))

if marks >= 90 and marks <= 100:
    print("Your grade is A!")
elif marks >= 70 and marks <= 89:
    print("Your grade is B!")
elif marks >= 50 and marks <= 69:
    print("Your grade is C!")
elif marks >= 0 and marks < 50:
    print("Brother you failed in the exams, study something!")
else:
    print("Enter marks in range brother!")