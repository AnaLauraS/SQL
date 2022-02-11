select FacturaID, ProductoID, Cantidad from facturadetalle;
select FacturaID, ProductoID, Cantidad from facturadetalle order by Cantidad desc;
select FacturaID, ProductoID, Cantidad from facturadetalle where cantidad between 50 and 100 order by Cantidad desc;
select FacturaID as NroFactura, ProductoID as Producto, PrecioUnitario*Cantidad as Total from facturadetalle;