SELECT b.name as Department, a.name as Employee, a.salary as Salary
FROM Employee a, Department b
where a.DepartmentId  = b.Id 
and 3 > (select count(distinct(a2.salary)) 
from Employee a2 
where a2.salary > a.salary and a2.DepartmentId = a.DepartmentId)