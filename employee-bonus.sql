select b.name, a.bonus
from Employee b left join Bonus a
on a.empId = b.empId
where a.bonus < 1000 or a.bonus is null;