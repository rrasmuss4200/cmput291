# Lec 5: Entity-Relationship Modeling

## ER Model View
- the *world* is made up of
  - entities
  - relationships
  - attributes

Model is visualized by creating ER diagram

## Basics

- **entity**: a distinguishable object
  - ex: a person, thing or concept

- **entity set**: a set of entities of the same type
- Examples of entity sets:
  - students registered at UofA
  - flights offered by Air Canada
- Represented by a box in diagram

**Relationship**: represents the fact that certain entities are related together

- Represented by diamond in diagram

**Attribute**: describes a property of an entity or a relationship

- Represented by connecting lines in diagram

Ex:
- student: id, name, major
- Car: colour, VIN

**Key**: a minimal set of attributes that uniquely identify each entity in a set

**Key Constraint**: first thing to think about in ER diagramm

**Binary Relationships**:

- Many-to-many - an element in domain A may be associated to any number of entities in domain B and vice versa.
  - no constraints
  - Some elements may not be mapped at all
- Many-to-one - multiple elements in A go to one in B. Not other way around
  - each employee works in **AT MOST** one department
- One-to-one - each entity in A is mapped ot **AT MOST** one entity in B and vice versa
  - each employee can manaage at most one department and each department is managed by at most one employee

**Ternary Relationship**:

- Meaning: Supplier **s** supplies part **p** for project **r**
- Each part in project is supplied by unique supplier

### Participation Constraints

- Partial participation: Only some of the entities are participating in the relationship (skinny line)
- Total participation: All entities are a part of the relationship (bolded lines in diagram)

### Set-Valued Attributes

- Each employee can have one or more hobby
- attribute value can be a set
  - ex (12345, Joe, (hockey, music))