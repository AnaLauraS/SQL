select count(*) from clientes;
select count(*), ciudad from clientes group by ciudad;
select sum(transporte) from facturas;
select sum(transporte), EnvioVia from facturas group by EnvioVia;
select count(*), clienteid from facturas group by ClienteID order by count(*) desc;
select count(*), clienteid from facturas group by ClienteID order by count(*) desc limit 5;
select count(*), PaisEnvio from facturas group by PaisEnvio order by count(*) limit 1;
select count(*), EmpleadoID from facturas group by EmpleadoID order by count(*) desc limit 1;
select count(*), ProductoID from facturadetalle group by ProductoID order by count(*) desc limit 1;
select sum(Cantidad*PrecioUnitario) as "Total facturado" from facturadetalle;
select sum(Cantidad*PrecioUnitario) as "Total facturado" from facturadetalle where ProductoID between 30 and 50;
select avg(PrecioUnitario), ProductoID from facturadetalle group by ProductoID;
select max(preciounitario) from facturadetalle;