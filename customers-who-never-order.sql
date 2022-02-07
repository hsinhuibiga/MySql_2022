
select name as customers from customers
left join Orders on Orders.customerId=Customers.id
where Orders.customerId is null;