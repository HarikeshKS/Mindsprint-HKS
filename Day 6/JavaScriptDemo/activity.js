class Product {
    constructor(id, name, price, category) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.category = category;
    }
}

class Cart {
    constructor() {
        this.cart = [];
    }

    addItem(product) {
        const item = {
            id: Date.now(),
            product: {
                name: product.name,
                price: product.price,
            },
            quantity: 1,
        };
        this.cart.push(item);
    }

    removeItem(id) {
        this.cart = this.cart.filter((item) => item.id !== id);
    }

    updateItem(id) {
        const item = this.cart.find((item) => item.id === id);
        if (item) {
            item.quantity += 1;
        }
    }

    showTotalAmount() {
        return this.cart.reduce(
            (total, item) => total + item.product.price * item.quantity,
            0
        );
    }
}

const cart = new Cart();
cart.addItem(new Product(1, "Pen", 10, "Stationary"));

console.log(cart.cart);
console.log("Total Amount:", cart.showTotalAmount());
