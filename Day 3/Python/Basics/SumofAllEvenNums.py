start = int(input("Enter starting number: "))
end = int(input("Enter ending number: "))
sum = 0
for i in range(start,end+1):
    if i%2 == 0:
        sum += i
print("Sum of all the even numbers in the range is: ",sum)