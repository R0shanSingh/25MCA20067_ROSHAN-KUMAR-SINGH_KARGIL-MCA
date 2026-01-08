
CREATE TABLE Employee (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  department VARCHAR(50),
  managerId INT
);

--sample inputs
INSERT INTO Employee (id, name, department, managerId) VALUES
(1,'Roshan','IT',NULL),  
(2,'Sanchit','IT',1),
(3,'Swayam','IT',1),
(4,'Rittika','IT',1),
(5,'Riya','IT',1),
(6,'Rohan','IT',1);

--query
SELECT name FROM Employee WHERE id IN (SELECT managerId FROM Employee  GROUP BY managerId HAVING COUNT(managerId) > 4);
