SELECT Dept_No,MIN(Salary),MAX(Salary),SUM(Salary),AVG(Salary),
Count(*) FROM Employee_Table WHERE Dept_No IN (10,30,50) GROUP  BY Dept_No  ORDER BY 2 HAVING Count(*)>2;