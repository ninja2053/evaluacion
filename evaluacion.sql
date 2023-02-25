create database evaluacion;
use evaluacion;

create table `evaluacion` . `perfil`(
`id_perfil` int not null ,
`nombre_perfil` varchar(50) not null ,
`avatar_perfil` blob,
`fk_num_doc_usuario` varchar(15) not null ,
`fk_id_doc` varchar(15) not null ,
primary key (id_perfil)
);

create table `evaluacion`.`series_perfil`(
`fk_id_series` int not null ,
`fk_id_perfil` int not null ,
primary key (fk_id_series,fk_id_perfil)
);

create table `evaluacion`.`peliculas_perfil`(
`fk_id_peliculas` int not null ,
`fk_id_perfil` int not null ,
primary key (fk_id_peliculas,fk_id_perfil)
);

create table `evaluacion`.`peliculas` (
  `id_peliculas` int not null ,
  `nombre_peliculas` varchar(100) not null ,
  `duracion_pelicula` TIME not null ,
  `año_pelicula` year not null ,
  `sinopsis_pelicula` text not null ,
  `estado_pelicula` varchar(50) not null ,
  primary key (`id_peliculas`)
  );
  
create table `evaluacion`.`tipo_documento` (
  `id_documento` varchar(15) not null ,
  `siglas_documento` varchar(15) not null ,
  `nombre_tipo_doc` varchar(30) not null ,
  primary key (`id_documento`)
  );

create table `evaluacion`.`plan` (
  `id_plan` int not null ,
  `nombre_plan` varchar(25) not null ,
  `precio_plan` int not null ,
  `caracteristicas_plan` text not null ,
  primary key (`id_plan`)
  );
  
create table `evaluacion`.`tipo_pago` (
  `id_tipo_pago` int not null ,
  `nombre_tipo_pago` varchar(20) not null ,
  primary key (`id_tipo_pago`)
  );

create table `evaluacion`.`usuario` (
  `num_doc_usuario` varchar(15) not null ,
  `primer_nombre` varchar(50) not null ,
  `segundo_nombre` varchar(30) ,
  `primer_apellido` varchar(50) not null ,
  `segundo_apellido` varchar(50) NULL ,
  `email` varchar(100) not null ,
  `contraseña` varchar(100) not null ,
  `fk_id_doc` varchar(15) not null ,
  `fk_id_plan` int not null,
  primary key (`num_doc_usuario`, `fk_id_doc`)
  );
  
create table `evaluacion`.`factura` (
  `id_factura` int not null ,
  `fecha_factura` date not null ,
  `hora_factura` time not null ,
  `fk_num_doc_usuario` VARCHAR(15) not null ,
  `fk_id_doc` varchar(15) not null ,
  `fk_id_tipo_pago` int not null ,
  `fk_id_plan` int not null ,
  primary key (`id_factura`, `fk_num_doc_usuario`, `fk_id_doc`)
  );  

create table `evaluacion`.`series`(
	`id_serie` int not null ,
	`nombre_serie` varchar(100) not null  ,
	`numero_temporadas_serie` tinyint  ,
	`año_serie` year not null  ,
	`sipnosis_serie` text not null ,
	`calificacion_serie` float not null ,
	`estado_serie` varchar(50) not null ,
	primary key (id_serie)
); 

create table `evaluacion`.`categoria_serie`(
`fk_id_categoria` int not null ,
`fk_id_serie` int not null ,
primary key (fk_id_categoria,fk_id_serie)
);
  
create table `evaluacion`.`categoria`(
`id_categoria` int not null ,
`nom_categoria` varchar(75) not null ,
primary key (id_categoria)
);

create table `evaluacion`.`temporadas`(
`id_temporadas` int not null ,
`numero_temporadas` tinyint ,
`fk_id_serie` int not null ,
primary key (id_temporadas)
);
  
create table `evaluacion`.`capitulos`(
`id_capitulos` int not null ,
`nombre_capitulos` varchar(100) not null ,
`numero_capitulos` tinyint not null ,
`duracion_capitulos` time not null ,
`fk_id_temporadas` int not null ,
primary key (id_capitulos)
);
  
alter table usuario
add foreign key(fk_id_doc) references tipo_documento(id_documento);  
alter table usuario
add foreign key(fk_id_plan) references plan(id_plan);

alter table factura
add foreign key(fk_num_doc_usuario) references usuario(num_doc_usuario);
alter table factura
add foreign key(fk_id_tipo_pago) references tipo_pago(id_tipo_pago);
alter table factura
add foreign key(fk_id_plan) references plan(id_plan);

alter table perfil
add foreign key(fk_num_doc_usuario) references usuario(num_doc_usuario);



alter table peliculas_perfil
add foreign key(fk_id_peliculas) references peliculas(id_peliculas);
alter table peliculas_perfil
add foreign key(fk_id_perfil) references perfil(id_perfil);

alter table series_perfil
add foreign key(fk_id_series) references series(id_serie);
alter table series_perfil
add foreign key(fk_id_perfil) references perfil(id_perfil);

alter table categoria_serie
add foreign key(fk_id_categoria) references categoria(id_categoria);
alter table categoria_serie
add foreign key(fk_id_serie) references series(id_serie);
  
alter table temporadas
add foreign key(fk_id_serie) references series(id_serie);
  
alter table capitulos
add foreign key(fk_id_temporadas) references temporadas(id_temporadas);
