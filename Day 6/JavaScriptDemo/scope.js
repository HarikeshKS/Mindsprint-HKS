let name = "HKS";

function hello() {
    if (true) {
        let a = 10;
        const b = 30;
        var c = 40;

        console.log("Inside Function Let: ", a);
        console.log("Inside Function const: ", b);
        console.log("Inside Function var: ", c);
    }
    // console.log("Outside Function Let: ", a);
    // console.log("Outside Function const: ", b);
    console.log("Outside Function var: ", c);
}

hello();

function myFunc() {
    let a = 10;
    const b = 30;
    var c = 40;

    console.log("Inside Function Let: ", a);
    console.log("Inside Function const: ", b);
    console.log("Inside Function var: ", c);
}

myFunc();
