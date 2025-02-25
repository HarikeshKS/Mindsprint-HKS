# Define a function that checks if a number is even or odd
function CheckEvenOdd {
    param (
        [int]$number
    )
    if ($number % 2 -eq 0) {
        return "$number is even"
    }
    else {
        return "$number is odd"
    }
}

# Create an array of numbers
$numbers = 1..10

# Loop through each number in the array using ForEach-Object
$numbers | ForEach-Object {
    $result = CheckEvenOdd -number $_
    Write-Output $result
}