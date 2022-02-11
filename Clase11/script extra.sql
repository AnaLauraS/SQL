select * from clientes where pais="Brazil"or pais="Mexico";
select * from clientes where Compania like "A%";
select Ciudad, Contacto as "Apellido y nombre", titulo as Puesto from clientes where ciudad="Madrid";
select * from facturas where FacturaID between 10000 and 10500;
select * from facturas where FacturaID between 10000 and 10500 or ClienteID like "B%";
select * from facturas where CiudadEnvio="Vancouver" or EnvioVia=3;
select Nombre, apellido, EmpleadoID  from empleados where Apellido="Buchanan" or Nombre="Buchanan";
select empleadoID, facturaID from facturas where EmpleadoID=5;