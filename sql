Given the following data definition, write a query that returns the number of students whose first name is John.

TABLE students
   id INTEGER PRIMARY KEY,
   firstName VARCHAR(30) NOT NULL,
   lastName VARCHAR(30) NOT NULL

SELECT COUNT(firstName) FROM students WHERE firstName='John'
---------------------------
Information about pets is kept in two separate tables:

TABLE dogs
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL

TABLE cats
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
Write a query that select all distinct pet names.

SELECT name FROM dogs
UNION
SELECT name FROM cats
---------------------------
Given the following data definition, write a query that selects the names of employees that are not managers.

TABLE employees
  id INTEGER NOT NULL PRIMARY KEY
  managerId INTEGER REFERENCES employees(id)
  name VARCHAR(30) NOT NULL

SELECT name FROM employees WHERE id NOT IN (SELECT managerId FROM employees)
SELECT e.name FROM employees e inner join employees m on e.managerId = m.id
----------------------------
App usage data are kept in the following table:

TABLE sessions
  id INTEGER PRIMARY KEY,
  userId INTEGER NOT NULL,
  duration DECIMAL NOT NULL
Write a query that selects userId and average session duration for each user who has more than one session.

SELECT userId, AVG(duration) FROM sessions GROUP BY userId HAVING COUNT(*) > 1
