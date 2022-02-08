SELECT b.name as Department, a.name as Employee, a.salary as Salary
FROM Employee as a
JOIN Department as b
ON a.DepartmentId = b.Id
join(
 select max(Salary) as Salary, DepartmentId
from Employee
group by DepartmentId
) as mx
on a.sALARY= mx.Salary and a.DepartmentId= mx.DepartmentId;