select * from facturas order by FechaFactura;
select * from facturas where PaisEnvio="USA" and EnvioVia!=3;
select * from facturas where ClienteID="GOURL";
select * from facturas where EmpleadoID in (2,3,5,8,9);