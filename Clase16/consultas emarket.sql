select facturas.facturaID, facturas.fechaFactura, facturas.EnvioVia, clientes.contacto, categorias.CategoriaNombre, productos.ProductoNombre, facturadetalle.PrecioUnitario, facturadetalle.cantidad from facturas
inner join facturadetalle on facturadetalle.FacturaID=facturas.FacturaID
inner join clientes on facturas.ClienteID=clientes.ClienteID
inner join productos on productos.ProductoID=facturadetalle.ProductoID
inner join categorias on productos.CategoriaID=categorias.CategoriaID;

select productos.ProductoNombre, categorias.CategoriaNombre from productos
right join categorias on productos.CategoriaID=categorias.CategoriaID;

select clientes.contacto from clientes
left join facturas on facturas.ClienteID=clientes.ClienteID
where facturas.ClienteID is null;

select productos.ProductoNombre, categorias.CategoriaNombre, proveedores.contacto from productos
inner join categorias on categorias.CategoriaID=productos.CategoriaID
left join proveedores on proveedores.ProveedorID=productos.ProveedorID;

select categorias.CategoriaNombre, avg(productos.PrecioUnitario) as "valor promedio" from categorias
inner join productos on productos.CategoriaID=categorias.CategoriaID
group by categorias.CategoriaID;

select clientes.Contacto, max(facturas.FechaFactura) as "última factura" from clientes
left join facturas on facturas.ClienteID=clientes.ClienteID
group by clientes.ClienteID;

select correos.Compania, count(*) from facturas
right join correos on correos.CorreoID=facturas.EnvioVia
group by correos.CorreoID;