const person = {
    firstName: "Harikesh",
    lastName: "Sharma",
    email: "sharma@gmail.com",
    age: 21,
    address: {
        street: "ABC",
        city: "New York",
        zipcode: 123123,
        country: "US",
    },
    greeting: function () {
        console.log(`Welcome ${this.firstName} ${this.lastName}`);
    },
};

console.log(person);
console.log("Address: ", person.address);
person.greeting();
