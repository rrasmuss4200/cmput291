# CMPUT291: File and Database Management

This repo contains the work for the UofA course cmput291 Fall 2024.

We will cover:
* Unix tools and commands
* SQLite
* Mongo DB

## Lec 1

A *database* is a very large, integrated collections of data. It models real-world enterprise.
* Entities (ex: students, courses)
* Relationships (ex: Bob is taking cmput291)

### Relational Databases

A *relational database* stores data in a structured form. Uses rows and columns that make tables to represent data. This table is also called a relation.

### DBMS
A *Database Management System* is a software package designed to store and manage databases.

#### Why use it?

- Reduce redundancy
- less risk of inconsistency
- reduce application development time
- unform data administration
- **Data Independence**

### MVC Architecture
This is a non-database approach: *Model Vew Controlelr*
- Model is the database
Some problems can be:
- redundancy
- inconsistency
- incorrect data

### Database approach
All programs connect to the DBMS. The DBMS is an interface for the Integrated Database. The DBMS serves the purpose of a transaction managaer. It is in charge of handling the queries.

