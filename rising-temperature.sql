select a.id from Weather a
inner join Weather b
on DATEDIFF(a.recordDate, b.recordDate)=1 and a.temperature>b.temperature;