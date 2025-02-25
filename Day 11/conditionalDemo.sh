# Example 1: Check if a person is eligible to vote
echo "Enter your age: "
read age

if [ $age -ge 18 ]; then
    echo "You are eligible to vote."
else
    echo "You are not eligible to vote."
fi

# Example 2: Check if one number is greater than the other
echo "Enter first number: "
read num1

echo "Enter second number: "
read num2

if [ $num1 -gt $num2 ]; then
    echo "$num1 is greater than $num2."
else
    echo "$num1 is not greater than $num2."
fi