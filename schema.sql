CREATE TABLE Airports (
    airport_code VARCHAR(5) PRIMARY KEY,
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE Flights (
    flight_id INT PRIMARY KEY,
    origin VARCHAR(5) REFERENCES Airports(airport_code),
    destination VARCHAR(5) REFERENCES Airports(airport_code),
    departure_time TIMESTAMP,
    arrival_time TIMESTAMP,
    aircraft_type VARCHAR(50),
    total_seats INT
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    loyalty_status VARCHAR(20)
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    flight_id INT REFERENCES Flights(flight_id),
    booking_date DATE,
    seat_class VARCHAR(20),
    ticket_price DECIMAL(10,2),
    payment_status VARCHAR(20)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    booking_id INT REFERENCES Bookings(booking_id),
    method VARCHAR(20),
    amount DECIMAL(10,2),
    status VARCHAR(20)
);
