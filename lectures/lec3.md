# Lec 3: SQL

SQL is used for CRUD operations:
- C -> create
- R -> read
- U -> update
- D -> delete

**RDBMS**: MySQL, PostgreSQL, Oracle

## DDL (Data Definition Language) of SQL
- Create
- Alter
- Drop
- Truncate
- Rename

## DML (Data Manipulation Language)
- Insert
- Update
- Delete
- Merge

## DCL (Data Control Language)
- Grant
- Revoke

## TCL (Transaction Control Language)
- Commit
- Rollback
- Save point

## DQL (Data Query Language)
- **SELECT**

## Creating Relations in SQL
```SQL
CREATE TABLE Students
(sid: CHAR(5),
name: CHAR(10),
login: CHAR(15),
age: INT,
gpa: FLOAT);
```

Type is specified by programmer and enforced by the DBMS

**Adding and deleting Tuple**
```SQL
INSERT INTO Students (sid, name, login, age, gpa)
VALUES (11010, 'Andrew', 'andrew@cs', 18, 3.3);
```

**Delete all tuples that satisfy condition**
```SQL
DELETE
FROM Students
WHERE name = 'Bob';
```

## Integrity Constraints (IC's)

- Conditions that hold for *any* instance of the database
- A legal instance of a relation is one that satisfies all specified ICs
- If the DBMS checks ICs, stored data is more fathful to real-world meaning

## Keys

- used to *uniquely* identify an individual record of data
- used to ensure the
  - integrity
  - efficiency
  - proper structure

- Help identify rows in a table
- enforce relationships between tables
- optimize database operations like searching, sorting, and filtering

### Superkey

- a combination of *one or more* attributes that unqiuely identifues a row in a table
- it must always guarantee uniqueness for the entire table (Uniqueness)
- Ex. *StudentID* on it's own, or (*StudentID, LastName)* -> still a superkey but includes unnecessary attributes (non-minimal).

### Candidate Key

- a *minimal* superkey that can *uniquely* identify each row in a table without any extraneous attributes
- a table can have multiple candidate keys, bit one of them is chosen as the primary key
  - unique for every row, no redundant columns
  - minimal
  - can have more than one candidate key in a table

- Every cand. key and primary key is a superkey, but not every superkey is a candidate key.

### Primary Key

- a column or set of columns in table that uniquely identifies each row in that table
- no 2 rows can have same primary key
- it cannot contain NULL values
- must be unique for each record
- can be a single attribute
- or a combination of attributes (all attributes must be necessary)
- there is only one primary per table

### Foreign Key

- a column or a set of columns in one table that refernces the primary key of another table
- it establishes and enforces a relationship between the two tables
- creates a link between two tabkes by ensuring that the value of the foreign key column corresponds to an existing value in the primary key column of the referenced table
- enforces referential integrity
