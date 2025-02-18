class Account {
    constructor(accNo, holderName, balance) {
        this.accNo = accNo;
        this.holderName = holderName;
        this.balance = balance;
    }
    getBalance() {
        return this.balance;
    }
    deposit(amount) {
        this.balance += amount;
        console.log(
            `${amount} is Credited to the account no. ******${this.accNo.slice(
                6
            )} Available Balance ${this.balance}`
        );
    }
    withdraw(amount) {
        if (this.balance > amount) {
            this.balance -= amount;
            console.log(
                `${amount} is Debited from the account no. ******${this.accNo.slice(
                    6
                )} Available Balance ${this.balance}`
            );
        } else {
            console.log("No sufficient balance available");
        }
    }
}

const acc1 = new Account("1700123789", "Harikesh Kumar Sharma", 100000);
acc1.deposit(10000);
acc1.withdraw(80000);
