# 🛒 Grocery Store Business Case

Welcome to the **Grocery Store Database Project** — a mini case study designed to explore relational database design and querying in a real-world business context. This project simulates the needs of a small, local grocery store owner and walks through the process of building a functional database solution from the ground up.

## 🧠 Project Context

Our client is the owner of a local grocery store and shared their requirements in a brief interview. Here's what they need to track:

- **Products**: Name, Description, Price, Quantity, Vendor  
- **Sales**: Client, Products, Total, Payment Format  
- **Clients**: Name, Contact Information  
- **Employees**: Name, Phone, Email, Address, DoB, Hours Worked/Week  
- **Vendors**: Name, Contact Information  

## 🛠️ Deliverables

- 📐 A **Functional Design Diagram** with keys, data types, and constraints  
- 🧱 SQL code to **build the database schema**  
- 🧾 Scripts to **insert 10 sample entries** into each table  
- 🔍 A few **JOIN and SELECT queries** to validate data relationships and structure  

## 🗺️ Project Journey

To bring this database to life, I followed a structured development process:

1. **ER Model Design**  
   - Outlined each entity and its attributes  
   - Identified primary keys and relationships  
   - Included cardinality and relationship types  

2. **ERD with Crow's Foot Notation**  
   - Created a visual diagram using Lucidchart  
   - Clearly represented one-to-many and many-to-many relationships  

3. **Relational Model Construction**  
   - Defined foreign keys and junction tables for many-to-many relationships  
   - Translated conceptual design into a normalized relational structure  

4. **Final Functional Design Diagram**  
   - Visual representation of the actual database structure  
   - Includes table names, keys, and how everything fits together  

5. **SQL Implementation**  
   - Used `CREATE TABLE` to build the schema  
   - Populated each table with 10 sample entries using `INSERT INTO`  
   - Ran `JOIN` and `SELECT` queries to test relationships and retrieve meaningful data  

This project is a great example of how we can take a basic business need and turn it into a structured, queryable data model — one SQL line at a time.

If you have feedback or suggestions, feel free to fork and play around — happy querying! 😄
