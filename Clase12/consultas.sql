select titulo from cancion where titulo like "%z%";
select titulo from cancion where titulo like "_a%s";
select titulo as Título, idestado as "ID Estado", fechacreacion as "Fecha creación" from playlist order by cantcanciones limit 1;
select nombreusuario, fecha_nac from usuario order by fecha_nac desc limit 10 offset 5;
select titulo from cancion order by cantreproduccion desc limit 5;
select titulo from album order by titulo;
select * from album where imagenportada is NULL order by titulo;
insert usuario (nombreusuario, nyap, password, fecha_nac, sexo, CP, Pais_idpais) values ("nuevousariodespotify@gmail.com", "Elmer Gomez", "S4321m", "1991-11-15", "Masculino", "B4129ATF", 2);
delete from cancion where idcancion in (6,7,8,9,11,12,13,14,15,18,19,20,21,22,23,24,25,79,85,130,133);
update artista set imagen="Imagen faltante" where imagen is NULL;