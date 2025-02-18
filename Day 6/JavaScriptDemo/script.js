console.log("Hi from external file brother");
// Read Evaluate Print Loop - REPL

let fullname = "Harikesh Kumar Sharma";
const pi = 3.14;
let condition = true;

console.log("Name: ", fullname);
console.log("PI: ", pi);
console.log("Condition: ", condition);

console.log(typeof fullname);
console.log(typeof pi);
console.log(typeof condition);
console.log(typeof null);

result = [35, 60, 67, 56, 95];

console.log(result.every((num) => num >= 35)); // this for all
console.log(result.some((num) => num >= 90)); // this for any one or more

console.log([[1, 2], 3, 4, [7, 3]].flat()); // flattens the array

console.log(result.includes(67));

console.log("Harikesh Kumar Sharma".toLowerCase().indexOf("i"));
console.log("Harikesh Kumar Sharma".toLowerCase().lastIndexOf("h"));

const myArray = [10, 20, 30, 40, 50, 60, 70];
console.log(myArray.slice(2));
console.log(myArray.slice(2, 4));

// inserting new element in between
myArray.splice(3, 0, 99);
console.log(myArray);

// deleting element in between
myArray.splice(3, 1);
console.log(myArray);

// replacing 70 by 35
myArray.splice(6, 1, 35);
console.log(myArray);
