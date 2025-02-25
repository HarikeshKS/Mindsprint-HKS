echo "Hello from Bash"

name="Harikesh Kumar Sharma"
salary=10000
echo "Hey $name, Welcome to the world of Bash Scripting"

echo "Your salary is $((salary*20))"

num1=10
num2=7


# Arrays
echo "Addition: $((num1+num2))"
numbers=(10 20 30 40 50 60)

echo "First element: ${numbers[0]}"
echo "Fourth element: ${numbers[3]}"

names=("Harikesh" "Kumar" "Sharma")

echo "First Name: ${names[0]}"

# Environment Variables
echo "Current User: $USER"
echo "Current whoami: $(whoami)"
echo "Home Directory: $HOME"

# Create constant variables

readonly PI=3.14159
echo "Value of PI: $PI"
PI=3.67

