# List to store movies (each movie is a dictionary)
movies = []

# Set to store unique theaters
theaters = set()

# Tuple for fixed ticket pricing
ticket_prices = (250, 500, 800)

# Dictionary to store customer bookings (customer name as key, list of booked movies as value)
customers = {}

# Function to add a new movie
def add_movie(title, genre, showtime):
    movie = {"title": title, "genre": genre, "showtime": showtime}
    movies.append(movie)
    print(f"Movie '{title}' added successfully.")

# Function to remove a movie
def remove_movie(title):
    for movie in movies:
        if movie["title"] == title:
            movies.remove(movie)
            print(f"Movie '{title}' removed successfully.")
            return
    print(f"Movie '{title}' not found.")

# Function to add a new theater
def add_theater(theater_name):
    if theater_name in theaters:
        print(f"Theater '{theater_name}' already exists.")
    else:
        theaters.add(theater_name)
        print(f"Theater '{theater_name}' added successfully.")

# Function to add a new customer
def add_customer(name):
    if name not in customers:
        customers[name] = []
        print(f"Customer '{name}' added successfully.")
    else:
        print(f"Customer '{name}' already exists.")

# Function to book a movie ticket
def book_ticket(customer_name, movie_title):
    if customer_name not in customers:
        print(f"Customer '{customer_name}' not found. Please add the customer first.")
        return

    for movie in movies:
        if movie["title"] == movie_title:
            customers[customer_name].append(movie_title)
            print(f"Ticket booked for '{customer_name}' to watch '{movie_title}'.")
            return

    print(f"Movie '{movie_title}' not available.")

# Function to print all stored data
def print_data():
    print("\nMovies Available:")
    for movie in movies:
        print(f"  - {movie['title']} ({movie['genre']}) at {movie['showtime']}")

    print("\nTheaters Available:")
    for theater in theaters:
        print(f"  - {theater}")

    print("\nTicket Pricing:")
    print(f"  - Prices: {ticket_prices}")

    print("\nCustomer Bookings:")
    for customer, bookings in customers.items():
        print(f"  - {customer}: {', '.join(bookings) if bookings else 'No bookings yet'}")

# Example usage
add_movie("Inception", "Sci-Fi", "7:00 PM")
add_movie("The Dark Knight", "Action", "9:00 PM")

add_theater("PVR Cinemas")
add_theater("INOX")

add_customer("Alice")
add_customer("Bob")

book_ticket("Alice", "Inception")
book_ticket("Bob", "The Dark Knight")

print_data()