select name, ListPrice, Color, ProductSubcategoryID from product where ListPrice<100;

select employeeid, CONCAT(contact.FirstName, " ", contact.lastname) as Nombre, vacationHours from employee
inner join contact on contact.ContactID=employee.ContactID
where VacationHours>90;

select Name, ListPrice, round(ListPrice*1.21,2) as Precio_con_IVA from product where ListPrice>0;

select ProductID, name, ListPrice from product where ProductID in (776, 777, 778);

select distinct LastName, FirstNAme from contact order by LastName, FirstName;

select product.ProductID, sum(orderQty), round(sum(LineTotal),2) from salesorderdetail 
inner join product on product.ProductID=salesorderdetail.ProductID
group by product.ProductID;

select min(ListPrice), ProductSubcategoryID from product group by ProductSubcategoryID;

select salesorderdetail.SalesOrderID, round(sum(salesorderdetail.LineTotal),2) as Total from salesorderdetail group by SalesOrderID having Total>10000;

# no sé a qué se refiere con BussinewssEntityID