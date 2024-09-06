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