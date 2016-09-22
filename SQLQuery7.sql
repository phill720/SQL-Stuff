--1
select *
from Customers

--2
select distinct Country
from Customers

--3
select *
from Customers
where CustomerID like 'Bl%'

--4
select top 100 *
from Orders

--5
select *
from Customers
where PostalCode in ('1010','3012','12209','05023')

--6
select *
from Orders
where ShipRegion is not NULL

--7
select *
from Orders
order by ShipCountry, ShipCity

--8
Insert into [dbo].[Customers]
           ([CustomerID]
           ,[CompanyName]
           ,[ContactName]
           ,[ContactTitle]
           ,[Address]
           ,[City]
           ,[Region]
           ,[PostalCode]
           ,[Country]
           ,[Phone]
           ,[Fax])
values('1243'
           ,'Grand Circ'
           ,'Chrispy'
           ,'Boss'
           ,'213 Popper'
           ,'Detroit'
           ,'Michigan'
           ,'48235'
           ,'United States'
		   ,'91827391'
		   ,'819273201'
		   )

--9
UPDATE [dbo].[Orders]
SET [ShipRegion] = 'EUROZone'
where ShipCountry = 'France'

--10
DELETE FROM [dbo].[Order Details]
      WHERE [Quantity] = 1

--11
Select Avg(quantity), Max(quantity), Min(Quantity)
from [order details]

--12
Select Avg(quantity), Max(quantity), Min(Quantity)
from [order details]
group by OrderID

--13
Select CustomerID
from orders
where orderID = '10290'

--14
select*
from orders
inner join customers on orders.CustomerID = customers.CustomerID

select*
from orders
left join customers on orders.CustomerID = customers.CustomerID

select*
from orders
right join customers on orders.CustomerID = customers.CustomerID

--15
select FirstName
from Employees
where ReportsTo is NULL

--16
select FirstName
from Employees
where ReportsTo = 2