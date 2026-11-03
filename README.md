# Esports-Organization-Database
A MySQL relational database designed to manage esports rosters, employees, events, budgets, and payment records.
# Project Overview
This project is a relational database created using MySQL to manage information for a fictional esports organization modeled around FNATIC and its players. The database organizes employee information, esports rosters, tournament events, budget allocations, and payment records.

The project was developed to practice database design using SQL queries and develop an understanding of relational database management.

# Technology Used
- MySQL
- MySQL Workbench

# Database Structure
The database consists of six tables:
- Employee: Stores employee information including names, in-game names, and organizational roles.
- Roster: Stores the organization's esports teams and their respective games.
- Roster_Member: Connects the employees to rosters and identifies their team-specific roles.
- Event: Tracks esports events and the participating rosters.
- Budget: Stores budget allocations associated with employees.
- Payment: Stores fictional payment information and payment schedules.

# SQL Skills Demonstrated
This project demonstrates the use of:
- CREATE TABLE to define database tables.
- INSERT INTO to populate tables with records.
- SELECT and WHERE to retrieve specific information.
- JOIN to combine information from multiple tables.
- ORDER BY to organize query results.
- UPDATE to modify existing records.
- DELETE to remove records.

# How to Use
1. Install MySQL and MySQL Workbench.
2. Open MySQL Workbench and connect to a MySQL server.
3. Import the provided database SQL file.
4. Explore the tables and execute the included SQL scripts.

Note: Some examples modify or delete records. Ensure to run these on a test copy of the database.

# Disclaimer
This database was created for educational purposes and is not affiliated with FNATIC. Real esports player names and in-game names are used for reference. Organizational, address, and financial information is fictional and does not represent actual employee records.
