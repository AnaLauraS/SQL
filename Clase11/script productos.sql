select CategoriaNombre, Descripcion from categorias;
select * from productos;
select * from productos where discontinuado = 1;
select * from productos where ProveedorID=8;
select * from productos where PrecioUnitario between 10 and 22;
select * from productos where UnidadesStock < NivelReorden;
select * from productos where UnidadesStock < NivelReorden and UnidadesPedidas = 0;