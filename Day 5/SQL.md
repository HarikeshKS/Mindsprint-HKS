# Introduction to Database

## Importance of Database
- Data Management
- Data Integrity
- Data Security
- Data Sharing
- Backup and Recovery
- Scalability
- Performance
- Automation

## Types of Databases
- Relational
    - MySQL
    - PostgreSQL
    - Oracle
    - MS SQL Server
- NoSQL
    - MongoDB (Document DB)
    - CouchDB (Document DB)
    - Cassandra (Wide Column DB)
    - Redis (Key-Value DB)
- Graph
    - Neo4j
    - OrientDB
- Time Series
    - InfluxDB
    - TimescaleDB
- Object-Oriented
    - db4o
    - ObjectDB
- NewSQL
    - Google Spanner
    - VoltDB
- In-Memory
    - Memcached
    - Redis

## DBMS Architecture
- 1 Tier - Everything at one place (e.g., local)
- 2 Tier - Client layer + Server layer
- 3 Tier - Presentation/Client Layer + Application Layer + Database Layer

## Data Models
### Types of Data Models
- Hierarchical Data Model
- Network Data Model
- Relational Data Model
- Entity-Relationship (ER) Model
- Object-Oriented Data Model
- Document Data Model
- Key-Value Data Model
- Column-Family Data Model
- Graph Data Model

### Entity-Relationship Model 
#### Components of an ER Model
- Entities
- Attributes
    - Types of Attributes
        - Simple
        - Composite
        - Derived
        - Multi-valued
- Relationships 
    - Types of Relationships
        - One to One
        - One to Many
        - Many to Many (Always involves a third table)

## Keys in Database
- Types of Keys
    - Primary Key
    - Candidate Key
    - Foreign Key
    - Super Key (A column that uniquely identifies any record in a table)
    - Composite Key (A key that consists of two or more columns to uniquely identify a record)

## Normalization 
> Reduce the redundancy!

### Normal Forms:
- 1NF (First Normal Form)
- 2NF (Second Normal Form)
- 3NF (Third Normal Form)
- BCNF (Boyce-Codd Normal Form)
- 4NF (Fourth Normal Form)
- 5NF (Fifth Normal Form)

## Relational Algebra: Basic Operations
- Selection
- Projection
- Union 
- Set Difference
- Cartesian Product
- Rename
- Intersection
- Join
# SQL

## SQL Subcategories

### Data Definition Language (DDL)
- **CREATE**: Used to create a new table, view, or other database objects.
- **ALTER**: Used to modify an existing database object, such as a table.
- **DROP**: Used to delete an existing database object.
- **TRUNCATE**: Used to remove all records from a table, including all spaces allocated for the records.

### Data Manipulation Language (DML)
- **INSERT**: Used to add new records to a table.
- **UPDATE**: Used to modify existing records in a table.
- **DELETE**: Used to remove records from a table.

### Data Control Language (DCL)
- **GRANT**: Used to give users access privileges to the database.
- **REVOKE**: Used to take back permissions granted to users.

### Data Query Language (DQL)
- **SELECT**: Used to query the database and retrieve data.

### Transaction Control Language (TCL)
- **COMMIT**: Used to save all changes made during the current transaction.
- **ROLLBACK**: Used to undo changes made during the current transaction.
- **SAVEPOINT**: Used to set a point within a transaction to which you can later roll back.

## Data Types in SQL

### Numeric Data Types
- **INT**: Used for integer values.
- **FLOAT**: Used for floating-point numbers.
- **DECIMAL**: Used for fixed-point numbers with a specified precision and scale.

### String Data Types
- **CHAR**: Used for fixed-length character strings.
- **VARCHAR**: Used for variable-length character strings.
- **TEXT**: Used for large text data.

### Date and Time Data Types
- **DATE**: Used for date values (year, month, day).
- **TIME**: Used for time values (hour, minute, second).
- **DATETIME**: Used for date and time values.
- **TIMESTAMP**: Used for date and time values, typically with time zone information.

### Boolean Data Type
- **BOOLEAN**: Used for true/false values.


# ACID Properties

## Atomicity
- Ensures that all operations within a transaction are completed successfully. If any operation fails, the entire transaction is rolled back.

## Consistency
- Ensures that a transaction brings the database from one valid state to another, maintaining database invariants.

## Isolation
- Ensures that transactions are executed in isolation from one another. Intermediate results within a transaction are not visible to other transactions until the transaction is complete.

## Durability
- Ensures that once a transaction is committed, it remains permanent, even in the case of a system failure.


# SQL STORE PROCEDURE
## Delimiter
In SQL, a delimiter is a character or sequence of characters that marks the end of a statement or a block of statements. The most common delimiter is the semicolon (`;`), which is used to separate individual SQL statements. However, in certain scenarios, especially when working with stored procedures, triggers, or complex scripts, you might need to change the default delimiter to avoid conflicts with the semicolons used within the statements.

### Changing the Delimiter in MySQL

In MySQL, we can change the delimiter using the `DELIMITER` command. This is particularly useful when defining stored procedures or functions that contain multiple SQL statements.

1. **Set a New Delimiter:**
   ```sql
   DELIMITER //
   ```

2. **Define a Stored Procedure:**
   ```sql
   CREATE PROCEDURE CreatePersonTable()
   BEGIN
       -- Drop the table if it exists
       DROP TABLE IF EXISTS persons;
       
       -- Create a new table
       CREATE TABLE persons (
           id INT AUTO_INCREMENT PRIMARY KEY,
           first_name VARCHAR(255) NOT NULL,
           last_name VARCHAR(255) NOT NULL
       );
       
       -- Insert data into the table
       INSERT INTO persons (first_name, last_name) VALUES ('John', 'Doe'), ('Jane', 'Doe');
       
       -- Select data from the table
       SELECT id, first_name, last_name FROM persons;
   END //
   ```

3. **Revert to the Default Delimiter:**
   ```sql
   DELIMITER ;
   ```

In this example, the delimiter is temporarily changed to `//` to allow the entire stored procedure to be treated as a single statement. After defining the procedure, the delimiter is reverted back to the default semicolon (`;`).

### Why Change the Delimiter?

Changing the delimiter is necessary when:
- **Defining Stored Procedures or Functions:** These often contain multiple SQL statements separated by semicolons.
- **Creating Triggers:** Similar to stored procedures, triggers can contain multiple statements.
- **Writing Complex Scripts:** Scripts that include multiple statements or nested blocks may require a different delimiter to avoid conflicts.

By changing the delimiter, you ensure that the SQL client or server correctly interprets the entire block of statements as a single unit, preventing syntax errors and ensuring proper execution.