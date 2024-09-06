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

### Non-Database Approach
Each process has it's own data set. This created problems:
- inconsistency
- errors
- difficult to update

### Relational Databases

A *relational database* stores data in a structured form. Uses rows and columns that make tables to represent data. This table is also called a relation.

### DBMS
A *Database Management System* is a software package designed to store and manage databases.
This is just above the OS, below the application programs.

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
All programs connect to the DBMS. The DBMS is an interface for the Integrated Database. The DBMS serves the purpose of a transaction manager. It is in charge of handling the queries. It can handle multipe queries at once.

## Lec 2

### Three Schema Levels
**Schema**: visual, logical representation. A description of the data contents, structures, and other aspects.

**External schema**: what application programs and users see

**Conceptual schema**: description of the logical structure of data.

**Physical schema**: file structures and indexes being used.

### Example: Uni Database
- External Schema (View):
  - course_info(cid:char(8), enrollment:int)
- Conceptual Schema:
  - Table: Students(sid: char(8), name: char(16), login: char(8) ...)
  - Table: Courses(cid: char(8), cname: char(8) ...)
- Physical schema
  - Students is stored as an unordered file with file name data.txt
  - There is an index on the first column of students

### Data Independence
- Whatever happens to the data, shouldn't affect the application using it. Not affected by changes in storage structure and access strategy.
- *Logical independence*: protection from changes in logic
- *Physical independence*: protection from physical changes

### Functions of DBMS
### Data definition facilities:
- provides data definition language
- stores definitions in a user-accessible catalog

### Data manipulation facilities
- provides a query language for storing, retrieving data

### Facilities for integrity constraints
- does the validation check for integrity constraints
before updates,
- different kinds of constraints: (such as primary key)
### Provides concurrency control
- multiple users simultaneously access/update a
database.

### supports transactions
- a sequence of user operations to be performed as an
atomic action,
- all operations or none are performed.

### Provides database recovery
- whatever happens, don't lose data

### Query optimization
- find the best possible plan for executing a query

## Relational Databases (structured)
- organize data as a set of tables
- view each table as a set of rows
- Advantages:
  - simple
  - solid mathematical foundation
  - powerful query languages
  - efficient query optimizers

Cardinality/tuples: number of rows
Degree: number of columns

- Relation:
  - Instance: table content with rows and columns (attributes). Snapshot of database at particaular instant in time
  - Schema: table structure, with name and type of columns

- More formally, relation is a *set* of rows(tuples)

**Domain**: the set of values from which the values of an attribute(field) are drawn

### Querying Relations
- Simple and powerful querying of data
  - queries should be written intuitively, and the DBMS is responsible for efficient evaluation
  - precise semantics


**Students**

| sid   | name | login    | age | gpa |
| ----  | ---- | -----    | --- | --- |
| 10310 | Mary | mary@cs  | 19  | 3.6 |
| 10400 | Bob  | bob@phys | 20  | 3.2 |
| 1100  | Bob  | bob@math | 18  | 3.8 |

Query:

```@SQL
SELECT *
FROM Students S
WHERE S.age=18;
```
Output is whole row of the age 18 because of SELECT *

With enrolled table:
```@SQL
SELECT S.name, E.cid
FROM Students S, Enrolled E
WHERE S.sid=E.sid AND E.grade='A';
```