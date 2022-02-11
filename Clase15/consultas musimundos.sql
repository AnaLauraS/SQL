select * from canciones where milisegundos>120000;
select nombre from canciones where nombre like "a%" or nombre like "e%" or nombre like "i%" or nombre like "o%" or nombre like "u%";
select nombre, compositor from canciones where compositor <> "" order by nombre;
select count(*), compositor from canciones where compositor <> "" group by compositor;
select count(*), compositor from canciones where compositor <> "" group by compositor having count(*)>10;
select ciudad_de_facturacion, sum(total) from facturas group by ciudad_de_facturacion;
select ciudad_de_facturacion, sum(total) from facturas where pais_de_facturacion="Canada" or pais_de_facturacion="Canadá" group by ciudad_de_facturacion;
select ciudad_de_facturacion, sum(total) from facturas group by ciudad_de_facturacion having sum(total)>38;
select ciudad_de_facturacion, sum(total) from facturas group by pais_de_facturacion and ciudad_de_facturacion;
select min(milisegundos), max(milisegundos), avg(milisegundos) from canciones;
select min(canciones.milisegundos), max(canciones.milisegundos), avg(canciones.milisegundos), generos.nombre from canciones inner join generos on canciones.id_genero=generos.id group by canciones.id_genero;