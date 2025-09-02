# Airline-Booking-Revenue-Database--SQL
A SQL-based project simulating an airline booking system, designed to showcase database design, query optimization, and business analytics.

Project structure
- schema.sql          &emsp;# Table creation with constraints & relationships
- data.sql            &emsp;&emsp;# Insert statements for mock/sample data
- queries.sql         &emsp;# Advanced SQL queries for analytics
- procedures.sql      &emsp;# Stored procedures & triggers
- README.md           &emsp;# Project documentation

## Database Schema
The database contains 5 core tables with relationships designed for normalization and efficiency:
note: The dataset contained in this project is artificially generated for practice purposes only.
* Airports – Stores airport codes, cities, and countries.
* Flights – Flight details including origin, destination, departure/arrival times, aircraft type, and seat capacity.
* Customers – Passenger information with loyalty program tiers.
* Bookings – Ticket bookings linked to customers and flights.
* Payments – Payment details for bookings, linked to transactions.

## ERD (Entity Relationship Diagram)
<img width="550" height="600" alt="image" src="https://github.com/user-attachments/assets/6bb26145-d2a9-41ba-b5a1-6a15ce80dfd5" />

## Business Questions Answered
The project demonstrates how SQL can drive business decision-making. Here are the top 5 insights derived from the database:

1. What are the top 5 most profitable routes by revenue? (Helps optimize route planning and pricing.)
2. Who are the top 5 customers by total spending? (Identifies high-value customers for loyalty programs.)
3. Which flights achieved the highest load factors? (Reveals efficiency in seat utilization.)
4. How much revenue does each loyalty tier generate? (Measures ROI of the customer loyalty program.)
5. Which payment methods are most preferred by customers? (Informs digital payment strategy and partnerships.)
