select nombre, apellido from artista
inner join artista_x_pelicula on artista.id=artista_x_pelicula.artista_id;
select pelicula.titulo, count(*) from artista_x_pelicula
inner join pelicula on pelicula.id = artista_x_pelicula.pelicula_id
group by pelicula.titulo having count(*)>1;
select nombre, apellido from artista;
select titulo from pelicula 
left join artista_x_pelicula on artista_x_pelicula.pelicula_id=pelicula.id
where isnull(artista_x_pelicula.pelicula_id);
select nombre, apellido from artista 
left join artista_x_pelicula on artista_x_pelicula.artista_id=artista.id
where isnull(artista_x_pelicula.artista_id);
select nombre, apellido, count(*) from artista
inner join artista_x_pelicula on artista.id=artista_x_pelicula.artista_id
group by artista.id having count(*)>1;
select titulo from pelicula;