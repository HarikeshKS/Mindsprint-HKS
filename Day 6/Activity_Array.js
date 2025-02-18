// 1. Create and array of numbers and write a logic to remove duplicate numbers from an array.

let arr = [10, 20, 30, 40, 50, 60, 20, 40, 10];
let uniqueNumbers = arr.filter(
    (value, index, self) => self.indexOf(value) === index
);
console.log("Unique Numbers are: ", uniqueNumbers);

// 2. Create js file which take numbers from the user and calculate the average of all numbers.
// -------------------------> SEE ***--- Avg_Num.html ---*** file

// 3. Write a function that returns the largest number from an array.
function findLargestNumber(numbers) {
    return Math.max(...numbers);
}
const numbers = [1, 2, 3, 4, 5];
console.log(`Largest Number: ${findLargestNumber(numbers)}`);

// 4. Write a function that counts the number of vowels (a, e, i, o, u) in a given string.
function countVowels(str) {
    const vowels = ["a", "e", "i", "o", "u"];
    return str.split("").filter((char) => vowels.includes(char.toLowerCase()))
        .length;
}
const str = "Hello Brother";
console.log(`Number of vowels: ${countVowels(str)}`);

// 5. Write a function that finds duplicate elements in an array.
function findDuplicates(arr) {
    const duplicates = [];
    const seen = new Set();
    arr.forEach((item) => {
        if (seen.has(item) && !duplicates.includes(item)) {
            duplicates.push(item);
        }
        seen.add(item);
    });
    return duplicates;
}
const array = [1, 2, 3, 4, 2, 3, 5];
console.log(`Duplicates: ${findDuplicates(array)}`);

// STRINGS METHODS ACTIVITY
// 1. Create an array of Strings which contains the values like [“Mind”,”SpRInT”,”Pvt”,”Ltd”] then replace the array values with corresponding Uppercase values only.
// [“MIND”,”SPRINT”,”PVT”,”LTD”]

let strings = ["Mind", "SpRInT", "Pvt", "Ltd"];
let upperCaseStrings = strings.map((str) => str.toUpperCase());
console.log(upperCaseStrings);
