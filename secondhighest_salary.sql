SELECT  MAX(a.Salary) AS SecondHighestSalary
FROM    Employee AS a
WHERE   a.Salary < (SELECT  MAX(z.Salary)
                    FROM    Employee AS z)