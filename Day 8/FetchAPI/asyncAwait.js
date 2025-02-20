// Async Await demo

async function fetchData() {
    try {
        const response = await fetch(
            "https://jsonplaceholder.typicode.com/users"
        );
        const json = await response.json();
        console.log(response);
        console.log(json);
        // response
        //     .then((response) => response.json())
        //     .then((json) => console.log(json))
        //     .catch((err) => console.log(err))
        //     .finally(() => console.log("Promise executed"));
    } catch (error) {
        console.log("Error Occured: ", error);
    }
}
