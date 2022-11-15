%Hechos recabados
%----------------Personas que ven cada genéro de pelicula--------------
ve_pelicula(roberto,suspenso).
ve_pelicula(jaanai,suspenso).
ve_pelicula(abimael,suspenso).
ve_pelicula(leonardo,romance).
ve_pelicula(miguel,terror).

%-----------------Alimento consumido por las personas------------------
consume(roberto,palomitas).
consume(jaanai,palomitas).
consume(abimael,maruchan).
consume(leonardo,maruchan).
consume(miguel,ensalada).

%-----------Personas que cuentan con el servicio de netflix-----------
tiene_netflix(roberto,si).
tiene_netflix(jaanai,si).
tiene_netflix(abimael,si).
tiene_netflix(leonardo,si).
tiene_netflix(miguel,si).

%----Personas que usan audifonos para escuchar contenido multimeda----
usa_audifonos(roberto,no).
usa_audifonos(jaanai,si).
usa_audifonos(abimael,no).
usa_audifonos(leonardo,si).
usa_audifonos(miguel,si).

%-----------------Personas que disponen de tiempo libre----------------
tiempo_libre(roberto,no).
tiempo_libre(jaanai,no).
tiempo_libre(abimael,no).
tiempo_libre(leonardo,si).
tiempo_libre(miguel,no).

%---------------Personas que escuchan cada género musical---------------
escucha_musica(abelino,reggae).
escucha_musica(jose,rock).
escucha_musica(izmucaneth,reggae).
escucha_musica(rolando,rock).
escucha_musica(maldonado,regional).

%--------------Personas que cuentan con el servicio de Spotify------------
tiene_spotify(abelino,no).
tiene_spotify(jose,si).
tiene_spotify(izmucaneth,si).
tiene_spotify(rolando,no).
tiene_spotify(maldonado,si).

%--------------Personas que cuentan con audifonos------------
tiene_audifonos(abelino,no).
tiene_audifonos(jose,si).
tiene_audifonos(izmucaneth,si).
tiene_audifonos(rolando,si).
tiene_audifonos(maldonado,no).

%Reglas establecidas

%Alguien que ve peliculas de suspenso, disfruta de verlas con palomtias, tiene una cuenta de Netlfix y tiempo libre, tiene una tarde perfecta
tarde_perfecta(X) :- ve_pelicula(X,suspenso), consume(X,palomitas), tiene_netflix(X,si), tiempo_libre(X,si).

%Alguien que ve peliculas consumiendo una ensalada, tiene una vida saludable
vida_saludable(X) :- consume(X,ensalada).

%Alguien que escucha regional, tiene audifonos y la aplicación de Spotify, disfruta del camino a casa
disfruta_camino_a_casa(X) :- escucha_musica(X,rock), tiene_audifonos(X,si), tiene_spotify(X,si).

%Alguien que ve peliculas consumiendo maruchan, tiempo libre y netflix
es_feliz(X) :- consume(X,maruchan), tiempo_libre(X,si), tiene_netflix(X,si).

%Unicamente pueden ser amigos quienes tienen los mismos gustos (peliculas,botanas)
son_amigos(X,Y) :- consume(X,palomitas), consume(Y,palomitas), ve_pelicula(X,suspenso), 
ve_pelicula(Y,suspenso); consume(X,ensalada), consume(Y,ensalada), ve_pelicula(X,suspenso),
ve_pelicula(Y,suspenso); consume(X,maruchan), consume(Y,maruchan), ve_pelicula(X,suspenso), 
ve_pelicula(Y,suspenso); consume(X,palomitas), consume(Y,palomitas), ve_pelicula(X,terror),
ve_pelicula(Y,terror); consume(X,ensalada), consume(Y,ensalada), ve_pelicula(X,terror), 
ve_pelicula(Y,terror); consume(X,maruchan), consume(Y,maruchan), ve_pelicula(X,terror), 
ve_pelicula(Y,terror); consume(X,palomitas), consume(Y,palomitas), ve_pelicula(X,romance), 
ve_pelicula(Y,romance); consume(X,ensalada), consume(Y,ensalada), ve_pelicula(X,romance), 
ve_pelicula(Y,romance); consume(X,maruchan), consume(Y,maruchan), ve_pelicula(X,romance), 
ve_pelicula(Y,romance).
