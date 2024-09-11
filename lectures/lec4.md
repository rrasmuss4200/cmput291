# Lecture 4

## Enforcing Referential Integrity

- two keys declared
  - customerID - PK
  - PhoneNumber - accepts unique values

- ensure each customer can make a booking in the restaurant
- each booking must be assigned to a specific customer
- any customerID that exists in the booking table must also exist in the customer table

```SQL
CREATE TABLE Customer (CustomerID INT NOT NULL, PRIMARY KEY
FullName CHAR(50) NOT NULL, PhoneNumber INT NOT NULL UNIQUE);
```

### How do I make required changes in the customer table?

- In MySQL use ON DELETE CASCADE
- if a customer is deleted from customers table, all associated orders in the orders table will be automatically deleted as well
- ON UPDATE CASCADE
- if you change the customerID for a particular customer, all related customerID values in the orders table will automoatically be updated to reflect the new value
- add on these options to end of CREATE TABLE  section

## Virtual Tables (Creating views)
- views are virtual tables created from one or multiple tables depending on the requirement(s)
- purpose:
  - create a subset: focus on a subset of a tables data
  - combine data: combine data from multiple tables into one
- ex:
  - a table might have 7 colunms, but you only need data from 3

```SQL
CREATE VIEW customer_orders AS
SELECT  customers.customer_id, customers.name, orders.order_id
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
```

- customers JOIN ordres pulls from two different tables

# The Entity-Relationship Model

## Database Design Process

- E-R Modeling - Conceptual Schema Design
- Relational Model - Mapping to DBMS Data model
- Normal Forms - Scheme Refinement
- Tuning, index, selection - Physical Design

## Types of Data Models

1. Relational Data Model
2. Entity-Relationship Model
3. Hierarchical model
4. Dimensional Data model
5. Object-Oriented Data Model