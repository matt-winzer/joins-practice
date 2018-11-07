# Intro to SQL Joins

## Objectives

* Explain the order & structure of join statements
* Write basic SQL joins: `one-to-many`
  - INNER join
  - LEFT join
  - FULL OUTER join
* Write basic SQL joins that only select certain fields
  - INNER join
  - LEFT join

## Instructions

1. Create a database called joins
2. Connect to joins database using psql
3. Run joins.sql file while connected to db:
  - `\i joins.sql`

## Resources

* [Learn - Joins Syntax](https://github.com/gSchool/sql-curriculum/blob/master/Joins.md#joins---syntax)
* [Visual Representation of SQL Joins](https://www.codeproject.com/Articles/33052/Visual-Representation-of-SQL-Joins)

## Notes

* Explain the order & structure of join statements
  - Reusable pattern for most joins:
```sql
SELECT * FROM left_table_name
JOIN_TYPE right_table_name
ON left_table.primary_key = right_table.foreign_key;
```

* Write basic SQL joins: `one-to-many`
  - INNER join
```sql
SELECT * FROM owner
INNER JOIN pet
ON owner.id = pet.owner_id;
```

* Write basic SQL joins: `one-to-many`
  - LEFT join
```sql
SELECT * FROM owner
LEFT JOIN pet
ON owner.id = pet.owner_id;
```

* Write basic SQL joins: `one-to-many`
  - BONUS: LEFT join of owners who DO NOT HAVE pets
```sql
SELECT * FROM owner
LEFT JOIN pet
ON owner.id = pet.owner_id
WHERE pet.id IS NULL;
```

* Write basic SQL joins: `one-to-many`
  - FULL OUTER join
```sql
SELECT * FROM owner
FULL OUTER JOIN pet
ON owner.id = pet.owner_id;
```

* Write basic SQL joins that only select certain fields
  - INNER join
```sql
SELECT owner.name, pet.name FROM owner
INNER JOIN pet
ON owner.id = pet.owner_id;
```

* BONUS: Write basic SQL joins that select certain fields and ALIAS them!
  - INNER join
```sql
SELECT owner.name AS owner_name, pet.name AS pet_name FROM owner
INNER JOIN pet
ON owner.id = pet.owner_id;
```



# SQL Joins: Many-to-Many

## Objectives

* Write many-to-many SQL joins
  - INNER JOIN all fields
  - INNER JOIN selected fields
  - INNER JOIN selected fields with aliases
* Write many-to-many SQL joins that return subsets of data
* Explain syntax and structure of many-to-many SQL joins

## Instructions

1. Create a database called many-joins
2. Connect to many-joins database using psql
3. Run joins.sql file while connected to db:
  - `\i many-joins.sql`

## Notes

* INNER JOIN all fields

* INNER JOIN selected fields
  - author name
  - author email
  - book title

* INNER JOIN selected fields with aliases
  - author id (aliased)
  - author name
  - book id (aliased)
  - book title

* INNER JOIN subset of data
  - All fields for 'Mark' and his book(s)

* INNER JOIN subset of data
  - All fields for 'Modern Romance' and its author(s)
  