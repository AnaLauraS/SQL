create view vi_punto1 as
select FacturaID,date_format(fechaFactura,"%d/%m/%Y") as Fecha_factura,date_format(fechaEnvio,"%d/%m/%Y") as Fecha_envio, round(transporte,2), concat(direccionEnvio, ", ", ciudadEnvio, ", ", codigoPostalEnvio, ", ", paisEnvio) as Destino from facturas;

#solucion del punto 3, referido al punto 2 que sale error.
alter view vi_punto1 as
select FacturaID,date_format(fechaFactura,"%d/%m/%Y") as Fecha_factura,date_format(fechaEnvio,"%d/%m/%Y") as Fecha_envio, round(transporte,2), concat(direccionEnvio, ", ", ciudadEnvio, ", ", codigoPostalEnvio, ", ", paisEnvio) as Destino, enviaVias as correo from facturas;

create view vi_ejercicio2 as
select productos.ProductoID, ProductoNombre, categorias.categorianombre, PrecioUnitario from productos
inner join categorias on categorias.CategoriaID=productos.CategoriaID;

#solucion del punto 3, referido al punto 2 que sale error, porque no tiene el dato de la factura y producto facturado.
alter view vi_ejercicio2 as
select productos.ProductoID, ProductoNombre, categorias.categorianombre, productos.PrecioUnitario, facturadetalle.facturaID from productos
inner join categorias on categorias.CategoriaID=productos.CategoriaID
inner join facturadetalle on facturadetalle.ProductoID=productos.ProductoID;

select * from vi_ejercicio2;