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

-- Altere la tabla accidentes para agregarle mas informacion

ALTER TABLE Accidentes ADD Coste_choque INTEGER, ADD Descripcion_Choque VARCHAR(255);

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

-- Agregamos datos a las tablas correspondientes

-- Tabla Pilotos ''
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Max', 'Verstappen', '24', 'Red_Bull_Racing');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Sergio ', 'Perez', '33', 'Red_Bull_Racing');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Fernando', 'Alonso', '41', 'Aston_Martin');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Lewis', 'Hamilton', '38', 'Mercedes');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Carlos', 'sainz', '28', 'Ferrari');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Lance', 'Stroll', '25', 'Aston_Martin');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('George', 'Russell', '26', 'Mercedes');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Lando', 'Norris', '23', 'McLaren');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Nico', 'Hulkenberg', '28', 'Haas_F1_Team');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Charles', 'Leclerc', '25', 'Ferrari');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Valtteri ', 'Bottas', '31', 'Alfa_Romeo');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Esteban', 'Ocon', '25', 'Alpine');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Oscar', 'Piastri', '21', 'McLaren');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Pierre', 'Gasly', '25', 'Alpine');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Zhou', 'Guanyu', '23', 'Alfa_Romeo');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Yuki', 'Tsunoda', '22', 'Alphatauri');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Kevin', 'Magnusen', '27', 'Haas_F1_Team');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Alexander', 'Albon', '26', 'Williams');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Logan', 'Sargeant', '22', 'Williams');
INSERT INTO Pilotos (Nombre_piloto, Apellido_piloto, Edad_piloto, Marca_escuderia) VALUES ('Nyck', 'De_Vries', '26', 'Alphatauri');

-- Tabla Escuederias
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Oracle Red Bull Racing','RB19','Honda_RBPT', 'Max');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Oracle Red Bull Racing','RB19','Honda_RBPT', 'Sergio');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Alfa Romeo F1 Team Stake','	C43','Ferrari','Valtteri');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Alfa Romeo F1 Team Stake','C43','Ferrari','Zhou');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Aston Martin Aramco Cognizant F1 Team','AMR23','Mercedes','Ferando');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Aston Martin Aramco Cognizant F1 Team','AMR23','Mercedes','Lance');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('McLaren F1 Team','MCL60','Mercedes','Lando');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('McLaren F1 Team','MCL60','Mercedes','Oscar');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Williams Racing','FW45','FW45',' Alexander');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Williams Racing','FW45','FW45','Logan' );
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Scuderia AlphaTauri','AT04','Honda RBPT','Yuki');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Scuderia AlphaTauri','AT04','Honda RBPT','Nyck');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Scuderia Ferrari','SF-23','Ferrari','Charles');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Scuderia Ferrari','SF-23','Ferrari','Carlos');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Mercedes-AMG PETRONAS F1 Team','W14','Mercedes','Hamilton');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('Mercedes-AMG PETRONAS F1 Team','W14','Mercedes','George');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('BWT Alpine F1 Team','A523','Renault','Pierre');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('BWT Alpine F1 Team','A523','Renault','Esteban');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('MoneyGram Haas F1 Team','VF-23','Ferrari','Kevin');
insert into escuderias (Marca_escuderia,Chasis_auto,Motor_auto, Nombre_piloto) values ('MoneyGram Haas F1 Team','VF-23','Ferrari','Nico');


-- Tabla Puntaje Pilotos ''
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (1,69,2,22,37,80,'Max');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (2,54,0,10,5,28,'Sergio');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (3,45,2,23,32,101,'Fernando');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (4,38,7,61,103,192,'Lewis');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (5,20,0,3,1,15,'Carlos');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (6,20,0,0,0,3,'Lance');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (7,18,0,5,1,1,'George');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (8,8,0,5,0,1,'Lando');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (9,6,0,2,0,0,'Niko');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (10,6,0,7,5,24,'Charles');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (11,4,0,19,10,67,'Vallteri');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (12,4,0,0,1,2,'Esteban');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (13,4,0,0,0,0,'Oscar');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (14,4,0,3,1,3,'Pierre');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (15,2,0,2,0,0,'Zhou');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (16,1,0,0,0,0,'Yuki');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (17,1,0,2,0,1,'Kevin');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (18,1,0,0,0,2,'Alexander');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (19,0,0,0,0,0,'Logan');
insert into puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto) values (20,0,0,0,0,0,'Nyck');

-- Tabla Puntajes Escuderia ''
insert into Puntajes_escuderia (id_escuderia, Puntos_escuderia, Campeonatos_constructores, Nombre_escuderia) values (1,123,5,'Oracle Red Bull Racing');
insert into Puntajes_escuderia (id_escuderia, Puntos_escuderia, Campeonatos_constructores, Nombre_escuderia) values (3,6,0,'Alfa Romeo F1 Team Stake'); 
insert into Puntajes_escuderia (id_escuderia, Puntos_escuderia, Campeonatos_constructores, Nombre_escuderia) values (5,65,0,'Aston Martin Aramco Cognizant F1 Team');
insert into Puntajes_escuderia (id_escuderia, Puntos_escuderia, Campeonatos_constructores, Nombre_escuderia) values (7,12,8,'McLaren F1 Team');
insert into Puntajes_escuderia (id_escuderia, Puntos_escuderia, Campeonatos_constructores, Nombre_escuderia) values (9,1,9,'Williams Racing');
insert into Puntajes_escuderia (id_escuderia, Puntos_escuderia, Campeonatos_constructores, Nombre_escuderia) values (11,1,0,'Scuderia AlphaTauri');
insert into Puntajes_escuderia (id_escuderia, Puntos_escuderia, Campeonatos_constructores, Nombre_escuderia) values (13,26,16,'Scuderia Ferrari');
insert into Puntajes_escuderia (id_escuderia, Puntos_escuderia, Campeonatos_constructores, Nombre_escuderia) values (15,56,8,'Mercedes-AMG PETRONAS F1 Team');
insert into Puntajes_escuderia (id_escuderia, Puntos_escuderia, Campeonatos_constructores, Nombre_escuderia) values (17,8,2,'BWT Alpine F1 Team');
insert into Puntajes_escuderia (id_escuderia, Puntos_escuderia, Campeonatos_constructores, Nombre_escuderia) values (19,70,0,'MoneyGram Haas F1 Team');

-- tabla pistas ''

INSERT INTO pistas (Nombre_pista) VALUES ('Bahrain International Circuit');
INSERT INTO pistas (Nombre_pista) VALUES ('Emilia Romagna Grand Prix');
INSERT INTO pistas (Nombre_pista) VALUES ('Autódromo Internacional do Algarve');
INSERT INTO pistas (Nombre_pista) VALUES ('Circuit de Barcelona-Catalunya');
INSERT INTO pistas (Nombre_pista) VALUES ('Monaco Grand Prix');
INSERT INTO pistas (Nombre_pista) VALUES ('Azerbaijan Grand Prix');
INSERT INTO pistas (Nombre_pista) VALUES ('Circuit Paul Ricard');
INSERT INTO pistas (Nombre_pista) VALUES ('Red Bull Ring');
INSERT INTO pistas (Nombre_pista) VALUES ('Silverstone Circuit');
INSERT INTO pistas (Nombre_pista) VALUES ('Hungaroring');
INSERT INTO pistas (Nombre_pista) VALUES ('Belgian Grand Prix');
INSERT INTO pistas (Nombre_pista) VALUES ('Dutch Grand Prix');
INSERT INTO pistas (Nombre_pista) VALUES ('Monza');
INSERT INTO pistas (Nombre_pista) VALUES ('Russian Grand Prix');
INSERT INTO pistas (Nombre_pista) VALUES ('Marina Bay Street Circuit');
INSERT INTO pistas (Nombre_pista) VALUES ('Suzuka Circuit');
INSERT INTO pistas (Nombre_pista) VALUES ('Circuit of the Americas');
INSERT INTO pistas (Nombre_pista) VALUES ('Autódromo Hermanos Rodríguez');
INSERT INTO pistas (Nombre_pista) VALUES ('São Paulo Grand Prix');
INSERT INTO pistas (Nombre_pista) VALUES ('Yas Marina Circuit');

-- tabla accidentes  ''

Insert into accidentes (id_accidente,id_pista, id_piloto, id_escuderia, coste_choque, Descripcion_choque) values ( 1,9,10,13,0,'Leclerc realizo un giro cerrado sobre Logan Sargeant y tocaron los ruedas, Leclerc quedo fuera de la carrera sin daños mayores');
insert into accidentes (id_accidente,id_pista, id_piloto, id_escuderia, coste_choque, Descripcion_choque) values (2,9,20,9,500.000,'Albon intentando sobrepasar a su compañero de escuderia lo toca por la derecha causando que ambos autos williams choquen contra la pared, causando la descalificacion de los dos corredores');


-- creacion de vistas

drop view Vista_Accidentes;

-- vista n1
CREATE VIEW Vista_Accidentes AS
SELECT pilotos.nombre_piloto, accidentes.descripcion_choque
FROM pilotos
JOIN accidentes ON pilotos.id_piloto = accidentes.id_piloto;


-- select de cada vista 

select * from Vista_Accidentes;


-- Dejo aca el script de las funciones por las dudas si no funciona o algun inconveniente ''


-- Esta funcion toma tres parametros para obtener una suma total de puntos de los pilotos y te retorna en "puntos totales" el resultado

CREATE DEFINER=`root`@`localhost` FUNCTION `SumarPuntos`(piloto1 INT, piloto2 INT, piloto3 INT) RETURNS int
    NO SQL
BEGIN
    declare puntosTotales INT;
    SET puntosTotales = 0;
    SELECT SUM(puntos_campeonato) INTO puntosTotales
    FROM Puntaje_pilotos 
    where id_piloto = piloto1 OR id_piloto = piloto2 OR id_piloto = piloto3;
    return puntosTotales;
END


-- Esta funcion toma el nombre de la escuderia seleccionada y al final te devuelve los puntos totales de la escuderia que se inserto 

CREATE DEFINER=`root`@`localhost` FUNCTION `Total_puntos_campeonato`(nombre_escuderia varchar(255)) RETURNS int
    NO SQL
BEGIN

	declare puntaje int (10);
    
    select sum(puntos_campeonato) into puntaje
    from puntaje_pilotos
    
    inner join pilotos
    on puntaje_pilotos.id_piloto = pilotos.id_piloto
	inner join escuderias
    on puntaje_pilotos.id_piloto = escuderias.id_piloto
    where nombre_escuderia = escuderias.Marca_escuderia;
    
    
    return puntaje;
END


-- stored procedure aca realice un insert en un procedure que inserta datos en la tabla puntaje pilotos

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarDatos`(
    id_piloto INT,
    puntos_campeonato INT,
    campeonatos_ganados VARCHAR(50),
    vueltas_rapidas INT,
    carreras_ganadas INT,
    carreras_podio INT,
    nombre_piloto VARCHAR(50)
    )
INSERT INTO Puntaje_pilotos (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, Nombre_piloto)
VALUES (id_piloto, puntos_campeonato, campeonatos_ganados, vueltas_rapidas, carreras_ganadas, carreras_podio, nombre_piloto)


-- Dejo los select de cada tabla para ir comprobando que todo este bien hecho

select * from pilotos;

select * from escuderias;

select * from puntaje_pilotos;

select * from Puntajes_escuderia;

select * from pistas;

select * from accidentes;