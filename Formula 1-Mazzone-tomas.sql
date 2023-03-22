create database Formula1;

use Formula1;

-- tabla 1
create table Pilotos( 
Id_piloto int primary key auto_increment,
Id_escuderia int,
Nombre_piloto varchar (50) ,
Apellido_piloto varchar(50),
Edad_piloto int,
Marca_escuderia varchar(50)
);

-- tabla 2
create table Escuderias(
Id_escuderia int primary key auto_increment,
Id_piloto int,
Marca_escuderia Varchar(50),
Chasis_auto Varchar(50),
Motor_auto Varchar(50),
Nombre_piloto Varchar(50) 
);

-- tabla 3
create table Puntaje_pilotos(
id_piloto int,
puntos_campeonato int,
campeonatos_ganados Varchar(50),
vueltas_rapidas int,
carreras_ganadas int,
carreras_podio int,
Nombre_piloto Varchar(50)
);

-- tabla 4
create table Puntajes_escuderia(
Id_escuderia int,
Puntos_escuderia int,
Campeonatos_constructores int,
Nombre_escuderia Varchar(50)
);

-- tabla 5
create table Pistas(
Id_pista int primary key auto_increment,
Nombre_pista Varchar(50)
);

-- tabla 6
create table Accidentes(
id_accidente int primary key,
Id_pista int,
id_piloto int,
id_escuderia int
);



-- Altero las tablas para agregar las Fk 

-- tabla 3
alter table puntaje_pilotos add foreign key (id_piloto) references pilotos(id_piloto);

-- tabla 2
alter table escuderias add foreign key (id_piloto) references pilotos(id_piloto);

-- tabla 1
alter table pilotos add foreign key (id_escuderia) references escuderias(id_escuderia);

-- tabla 4
alter table Puntajes_escuderia add foreign key (id_escuderia) references escuderias(id_escuderia);

-- tabla 6
alter table Accidentes add foreign key (Id_pista) references Pistas(Id_pista);

alter table Accidentes add foreign key (id_escuderia) references escuderias(id_escuderia);

alter table Accidentes add foreign key (id_piloto) references pilotos(id_piloto);

