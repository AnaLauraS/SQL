select facturaID, empleados.apellido, empleados.nombre 
from facturas inner join empleados on facturas.empleadoID=empleados.empleadoId
where empleados.apellido ="Buchanan" or empleados.nombre="Buchanan";

select * from facturas
inner join correos on facturas.enviovia=correos.CorreoID
where correos.Compania="Speedy Express";

select facturaID, empleados.nombre, empleados.Apellido from facturas
inner join empleados on facturas.empleadoID=empleados.EmpleadoID;

select facturaID from facturas
inner join clientes on facturas.clienteID=clientes.ClienteID
where clientes.Titulo="Owner" and facturas.PaisEnvio="USA";

select * from facturas
inner join empleados on facturas.EmpleadoID=empleados.EmpleadoID
inner join facturadetalle on facturas.FacturaID=facturadetalle.FacturaID
where empleados.Apellido="Leverling" or facturadetalle.ProductoID=42;

select * from facturas
inner join empleados on facturas.EmpleadoID=empleados.EmpleadoID
inner join facturadetalle on facturas.FacturaID=facturadetalle.FacturaID
where empleados.Apellido="Leverling" and (facturadetalle.ProductoID=42 or facturadetalle.ProductoID=80);

select contacto, sum(facturadetalle.Cantidad*facturadetalle.PrecioUnitario) as "Importe total de compras" from clientes
inner join facturas on facturas.ClienteID=clientes.ClienteID
inner join facturadetalle on facturadetalle.FacturaID=facturas.FacturaID
group by clientes.ClienteID
order by sum(facturadetalle.Cantidad*facturadetalle.PrecioUnitario) desc limit 5;

select facturas.FacturaID, clientes.Contacto, facturas.FechaFactura, facturas.PaisEnvio, sum(facturadetalle.Cantidad*facturadetalle.PrecioUnitario) as Total from facturas
inner join clientes on facturas.ClienteID=clientes.ClienteID
inner join facturadetalle on facturadetalle.FacturaID=facturas.FacturaID
group by facturas.FacturaID
order by facturas.FechaFactura desc limit 10;