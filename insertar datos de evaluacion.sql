insert into tipo_documento (id_documento, siglas_documento, nombre_tipo_doc) values 
(1, '144008806202713', 'CC'),
(2, '548598874580872', 'PAS'),
(3, '324815444905878', 'TI'),
(4, '711941732609084', 'NIT'),
(5, '611877165908291', 'NIP');


insert into plan (id_plan, nombre_plan, precio_plan, caracteristicas_plan) values 
(1, 'datos', '30000','datos ilimitados'),
(2, 'minutos', '20000','minutos ilimitados'),
(3, 'mixto', '40000','datos y minutos ilimitados');

insert into tipo_pago (id_tipo_pago, nombre_tipo_pago) values 
(1, 'Efectivo'),
(2, 'nequi'),
(3, 'daviplata');

insert into usuario (num_doc_usuario, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido,email,contraseña,fk_id_doc,fk_id_plan) values 
(3533536552505, 'carlos', 'suares',' veloz',' sanchez',' matteuxoquoisi-7290@yopmail.com','iVD5UC858g1%','1','1'),
(590689065762912, 'clarita', 'mendoza',' torres',' narvaez ','sesipaupruppau-8968@yopmail.com','lHl1Gb&&52Uu','2','2'),
(401905534508142, 'pepito', 'perez',' velosa',' galindo','gajeunniwusu-7693@yopmail.com','kJJy^H2L2*46','3','3');

insert into perfil (id_perfil, nombre_perfil, avatar_perfil,fk_num_doc_usuario, fk_id_doc) values 
(1, 'Win', 'null','3533536552505', 'null'),
(2, 'Ulrike','null' ,'590689065762912', 'null'),
(3, 'Marni', 'null','401905534508142', 'null');

insert into peliculas(id_peliculas, nombre_peliculas, duracion_pelicula, año_pelicula, sinopsis_pelicula,estado_pelicula) values 
(1, 'Moll Flanders'						, '01:24:00', '1987', 'Bruno, de ocho años, es el hijo mimado de un oficial nazi. Al ascender a su padre, la familia se ve obligada a abandonar su confortable casa de Berlín y trasladarse a una zona aislada donde el solitario chico no tiene nada que hacer ni nadie con quien jugar. Muerto de aburrimiento y atraído por la curiosidad, Bruno hace caso omiso a lo que su madre le dice: no debe ir más allá del jardín bajo ninguna circunstancia. Bruno se dirige hacia la ‘granja’ que se ve a la distancia y conoce a Shmuel, un chico de su edad que vive una extraña y paralela existencia al otro lado de una alambrada. El encuentro de Bruno con el chico del pijama de rayas lo lleva a adentrarse de la forma más inocente en el mundo de adultos que les rodea. Los dos niños entablan una profunda amistad cuyas consecuencias serán terribles ', 'activo'),
(2, 'Housekeeping'						, '02:27:00', '1994', 'El psicoanalista Frederick Starks recibe un anónimo que dice «Feliz aniversario, doctor. Bienvenido al primer día de su muerte.» Esta situación estresante lo obliga a emplear toda su astucia y rapidez para, en quince días, averiguar quién es el autor de esa amenazadora nota que promete hacerle la vida imposible. De no conseguir su objetivo, deberá elegir entre suicidarse o ser testigo de cómo, uno tras otro, sus familiares y conocidos mueren por obra de un psicópata decidido a llevar hasta el final su sed de venganza. ', 'Pronto'),
(3, 'Much Ado About Nothing'			, '01:51:00', '1993', 'Cuatro parejas de amigos que se conocen de toda la vida cenan juntos una noche. Uno de ellos propone un particular juego: todos deberán leer en voz alta los mensajes y atender las llamadas que reciban en sus móviles durante la cena. Pronto empiezan a descubrir que el juego no era una buena idea y se dan cuenta que, pese a los años, son unos completos desconocidos y que los secretos pueden arruinarlo todo. ', 'activo'),
(4, 'Under the Lighthouse Dancing'		, '01:34:00', '1997', 'Un misterioso personaje, que se hace llamar «El Profesor», planea el mayor de los atracos jamás ideado. Para llevar a cabo su minucioso plan, recluta a una banda formada por personas con  algo en común: no tienen nada que perder. El objetivo es atracar la Fábrica Nacional de Moneda y Timbre, con la intención de quedarse encerrados dentro y fabricar 2.400 millones de euros para repartir entre todos. Tras cinco meses de preparación para el gran atraco, por fin llega el día. Serán once días de encierro en la Fábrica de Moneda, rodeados de los cuerpos de élite de la policía y con 67 rehenes en su poder. ', 'inactivo'),
(5, 'Hitcher'							, '03:44:00', '1987', 'Brandon Lang tiene un sueño que le ha llevado desde las ligas infantiles hasta la universidad. Su visión es lo bastante fuerte para que aguante trabajar en un cubículo en una empresa de apuestas de Las Vegas mientras espera la carta que cambiará su vida. El único problema es que Brandon ya no vale como jugador de fútbol. Las lesiones que sufre en las rodillas han dado al traste con su sueño de jugar en la liga profesional.', 'activo'),
(6, 'Neil Young: Heart of Gold'			, '01:43:00', '2006', 'En la clasista Inglaterra de finales del siglo XVIII, las cinco hermanas Bennet, Elizabeth o Lizzy, Jane, Lydia, Mary y Kitty, han sido criadas por una madre cuya única fijación es encontrarles marido.', 'pronto'),
(7, 'Hunchback of Notre Dame'			, '02:32:00', '2002', 'Los alumnos  experimentan "en vivo" el proceso de creación de la "Pintura de acción". pintando un cuadro con pintura acrílica siguiendo la técnica que empleaba el pintor Jackson Pollock y grabarlo en video con un teléfono móvil o una cámara para mostrarlo en el blog del grupo. Es una de las tareas a realizar por los alumnos en "La pintura de Acción: Expresionismo Abstarcto"', 'activo'),
(8, 'Traveller'							, '01:41:00', '1997', 'En esta primera película, Harry Potter, de once años, descubre que es un mago y que debe ir a Hogwarts a comenzar sus estudios de hechicería y magia, pero su talento no viene solo, se acompaña de una maldición que lo dejará atado a Lord Voldemort, quien buscará su muerte hasta el final de la historia.', 'inactiva'),
(9, '(Absolutions) Pipilotti'			, '02:45:00', '1988', 'El capitán Barbossa le roba el barco al pirata Jack Sparrow y secuestra a Elizabeth, amiga de Will Turner. Barbossa y su tripulación son víctimas de un conjuro que los condena a vivir eternamente y a transformarse cada noche en esqueletos vivientes.', 'inactiva'),
(10, 'Pit and the Pendulum'				, '01:25:00', '1961', 'La primera película de Star Wars. La Alianza Rebelde se enfrenta contra el Imperio. En ese contexto, Luke conoce a Obi-Wan quien debe salvar a la Princesa Leia retenida por el Imperio tras robar los planos de la Estrella de la Muerte, un arma del Imperio capaz de destruir planetas enteros.', 'activo');

insert into peliculas_perfil (fk_id_peliculas, fk_id_perfil) values 
(1, 1),
(2, 2),
(3, 3);

insert into categoria (id_categoria,nom_categoria ) values 
(1, 'Action Western'),
(2, 'Crime	Drama'),
(3, 'Documentary'),
(4, 'Comedy Drama	Romance'),
(5, 'Comedy Drama	Musical'),
(6, 'Comedy Drama	Sci-Fi'),
(7, 'Horror Sci-Fi'),
(8, 'Comedy'),
(9, 'Comedy Horror'),
(10, 'Comedy Drama'),
(11, 'Drama'),
(12, 'Drama	Mystery Thriller'),
(13, 'Drama	Mystery'),
(14, 'Action Sci-Fi'),
(15, 'Crime	Thriller'),
(16, 'Comedy'),
(17, 'Drama	War'),
(18, 'Comedy Romance'),
(19, 'Drama	Mystery Sci-Fi');

insert into series (id_serie, nombre_serie, numero_temporadas_serie, año_serie, sipnosis_serie, calificacion_serie, estado_serie) values 
(1,  'Arcane', 						'3', '2021', 'null', '9.0', 'activo'),
(2,  'Ataque a los titanes', 		'7', '2013', 'null', '9.0', 'activo'),
(3,  'Planeta azul',				'5', '2001', 'null', '9.0', 'activo'),
(4,  'The Office', 					'4', '2005', 'null', '9.0', 'activo'),
(5,  'Firefly', 					'6', '2002', 'null', '9.0', 'activo'),
(6,  'Planeta humano', 				'4', '2011', 'null', '9.0', 'activo'),
(7, 'Nathan al rescate', 			'4', '2011', 'null', '9.0', 'activo'),
(8,  'Planeta helado', 				'5', '2006', 'null', '8.9', 'activo'),
(9,  'Death Note', 					'4', '2015', 'null', '8.9', 'inactiva'),
(10,  'Better Call Saul', 			'7', '1981', 'null', '8.9', 'inactiva'),
(11, 'The Civil War', 				'4', '2014', 'null', '8.9', 'activo'),
(12, 'True Detective', 				'2', '2011', 'null', '8.9', 'inactiva'),
(13, 'Hunter x Hunter', 			'5', '2021', 'null', '8.9', 'activo'),
(14, 'La granja de Clarkson', 		'1', '1989', 'null', '8.9', 'inactiva'),
(15, 'Seinfeld', 					'5', '2018', 'null', '8.9', 'activo'),
(16, 'Sahsiyet', 					'2', '1989', 'null', '8.8', 'inactiva'),
(17, 'El decálogo', 				'6', '2021', 'null', '8.8', 'inactiva'),
(18, 'The Beatles: Get Back', 		'2', '2014', 'null', '8.8', 'activo'),
(19, 'Fargo', 						'3', '1998', 'null', '8.8', 'inactiva'),
(20, 'Cowboy Bebop', 				'4', '2013', 'null', '8.8', 'activo'),
(21, 'Only Fools and Horses',		'9', '1990', 'null', '8.9', 'activo');


insert into categoria_serie (fk_id_categoria, fk_id_serie) values 
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10');

insert into temporadas (id_temporadas, numero_temporadas, fk_id_serie) values 
(1, '1', '1'),
(2, '2', '2'),
(3, '3', '3'),
(4, '4', '4'),
(5, '5', '5'),
(6, '6', '6'),
(7, '7', '7'),
(8, '8', '9');


INSERT INTO series_perfil (`fk_id_series`, `fk_id_perfil`) VALUES 
('1', '1'),
('2', '2'),
('3', '3');


insert into capitulos (id_capitulos, nombre_capitulos, numero_capitulos, duracion_capitulos, fk_id_temporadas) values 
('1',  'su señoria', '1',  '00:56:55',	'1'),
('2',  'su señoria', '2',  '01:03:13',	'2'),
('3',  'su señoria', '3',  '00:57:59',  '3'),
('4',  'su señoria', '4',  '00:58:30', 	'4'),
('5',  'su señoria', '5',  '00:55:23',	'5'),
('6',  'su señoria', '6',  '00:58:41', 	'6'),
('7',  'su señoria', '7',  '01:04:18', 	'7');

