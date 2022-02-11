create view vista_clientes as
select ClienteID, contacto, 
case
when fax is null or fax = "" then concat("TEL: ", clientes.Telefono)
else fax
end as fax_o_tel
from clientes;

select contacto, telefono from clientes where fax = "";
select * from vista_clientes where fax_o_tel like "TEL%";

create view vista_proveedores as
select proveedorID, compania, contacto, concat(direccion,", ", ciudad, ", ", codigoPostal, ", ", pais) as Dirección from proveedores;

select * from vista_proveedores;
select * from proveedores where Direccion like "%americanas%" and pais="Brasil";
select * from vista_proveedores where dirección like "%americanas%Brasil";

create view vista as
select ProductoID, productoNombre, round(precioUnitario) as Precio, unidadesStock, unidadesPedidas,
case
when UnidadesPedidas=0 then "Baja"
when UnidadesPedidas<UnidadesStock then "Media"
when UnidadesPedidas<2*UnidadesStock then "Urgente"
when UnidadesPedidas>2*UnidadesStock then "Super urgente"
end as Prioridad
from productos;

select prioridad, count(*), avg(precio) from vista where unidadesStock>5 group by prioridad;