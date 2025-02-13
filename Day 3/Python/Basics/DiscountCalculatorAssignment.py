purchaseAmount = int(input("Enter the purchase amount: "))
discountAmount = 0
finalPrice = 0

if purchaseAmount >= 500:
    discountAmount = purchaseAmount * (20/100)
elif purchaseAmount > 200 and purchaseAmount < 500:
    discountAmount = purchaseAmount * (10/100)

finalPrice = purchaseAmount - discountAmount
# 18% GST
finalPrice = finalPrice + finalPrice * (18/100)
print("You have to pay ", finalPrice)