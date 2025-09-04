-- Airports
LOAD DATA LOCAL INFILE 'data/Airports.csv'
INTO TABLE Airports
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(airport_code, city, country);

-- Customers
LOAD DATA LOCAL INFILE 'data/Customers.csv'
INTO TABLE Customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(customer_id, name, age, loyalty_status);

-- Flights
LOAD DATA LOCAL INFILE 'data/Flights.csv'
INTO TABLE Flights
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(flight_id, origin, destination, departure_time, arrival_time, aircraft_type, total_seats);

-- Bookings
LOAD DATA LOCAL INFILE 'data/Bookings.csv'
INTO TABLE Bookings
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(booking_id, customer_id, flight_id, booking_date, seat_class, ticket_price, payment_status);

-- Payments
LOAD DATA LOCAL INFILE 'data/Payments.csv'
INTO TABLE Payments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(payment_id, booking_id, method, amount, status);
