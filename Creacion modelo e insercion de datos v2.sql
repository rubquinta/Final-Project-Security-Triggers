/*
 si posee tablas creadas borrelas en este orden
y cree de nuevo segun este script
drop table visita;
drop table mejora;
drop table asesorias;
drop table profesional;
drop table chequeos;

drop table registro;
drop table asistentes;
drop table capacitacion;
drop table administrativo;
drop table usuario;
*/

drop table ventas;
drop table capacitacion1;
drop table capacitacion;
drop table table1;
/*
Creamos la tabla usuario
*/
 drop table usuario;
CREATE TABLE usuario (
    
    usurun NUMBER(10) CONSTRAINT usuario_pk Primary key,
    usunombres VARCHAR2(30) CONSTRAINT usuario_nn1 NOT NULL,
    usunacimiento VARCHAR2(50)  CONSTRAINT usuario_nn2 NOT NULL,
    tipoUsuario VARCHAR2(20)  CONSTRAINT usuario_nn3 NOT NULL
  
 );

 
 insert into usuario (usurun, usunombres, usunacimiento, tipoUsuario)
VALUES (441125555, 'Jefrrey', '1991-11-24', 'Cliente');

select usurun, usunombres, usunacimiento, tipoUsuario from usuario;

  /*
 Creamos la tabla  cliente con su llave foranea hacia usuario
 */
 drop table cliente;
create table cliente (
    rutcliente NUMBER(9) constraint cliente_pk primary key,
    clinombres varchar2(30) constraint cliente_nn1 not null,
    cliapellidos varchar2(50) constraint cliente_nn2 not null,
    clitelefono varchar2(20) constraint cliente_nn3 not null,
    cliafp varchar2(30),
    clisistemasalud varchar2(30),
    clidireccion varchar2(100)constraint cliente_nn4 not null,
    clicomuna varchar2(50)constraint cliente_nn5 not null,
    cliedad NUMBER(3)constraint cliente_nn6 not null 
);

select * from cliente;
select * from usuario;
Insert into cliente (rutcliente,clinombres,cliapellidos,clitelefono,cliafp,
clisistemasalud,clidireccion,clicomuna,cliedad)
values(245635537, 'Jeffrey Jose', 'Bustamante Contreras', 843454393, 
'Plan Vital','fonasaa','Av Los Chorros 434','Santiago',21);

Insert into cliente (rutcliente,clinombres,cliapellidos,clitelefono,cliafp,
clisistemasalud,clidireccion,clicomuna,cliedad)
values(258378431, 'Ruben Ramon', 'Quintana Franco', 941570896, 
'Modelo',2,'Lord Cochrane 635','Providencia',29);

Insert into cliente (rutcliente,clinombres,cliapellidos,clitelefono,cliafp,
clisistemasalud,clidireccion,clicomuna,cliedad)
values(22435294, 'Javiera Jacinta', 'Arismendi Astudillo', 934928491, 
'Modelo',1,'Calle Madrid','Valparaiso',31);
/*
 Creamos la tabla  capacitacion con su llave foranea hacia cliente
 */
create table Capacitacion(

    idCapaciTacion NUMBER(9) CONSTRAINT capa_pk PRIMARY KEY,
    rutCliente NUMBER(9) CONSTRAINT capa_nn1 NOT NULL,
    diaCapacitacion VARCHAR2(10) CONSTRAINT capa_nn2 NOT NULL,
    horaCapacitacion VARCHAR2(10) CONSTRAINT capa_nn3 NOT NULL,
    lugarCapacitacion VARCHAR2(15) CONSTRAINT capa_nn4 NOT NULL,
    duracionCapacitacion VARCHAR2(15) CONSTRAINT capa_nn5 NOT NULL,
    cantidadAsistentes NUMBER(15) CONSTRAINT capa_nn6 NOT NULL
    
    
);
Alter table capacitacion drop constraint

DROP TABLE CAPACITACION;

select * from capacitacion;

INSERT INTO CAPACITACION (idCapaciTacion, rutCliente, diaCapacitacion, 
horaCapacitacion, lugarCapacitacion, duracionCapacitacion,  cantidadAsistentes)
VALUES (001, 25837843, 'Lunes', '12:00', 'Santiago', '12horas', 20);

Insert into capacitacion
values (2,  TO_DATE('2020-10-30', 'YYYY-MM-DD') ,TO_DATE('15:30:20', 'HH24:MI:SS'),
'Prodencia', 15, 12, 258378431);

Insert into capacitacion
values (3, TO_DATE('2020-11-02', 'YYYY-MM-DD') ,TO_DATE('20:50:49', 'HH24:MI:SS'),
'renca', 200, 20, 22435294);
/*
 Creamos la tabla  asistentes con su llave foranea hacia capacitacion
 */
create table asistentes (
    idasistente NUMBER(9) CONSTRAINT asistentes_pk primary key,
    asistnombrecompleto  varchar2(100)  CONSTRAINT asistentes_nn1 not null,
    asistedad NUMBER(3) CONSTRAINT asistentes_nn2 not null,
    asistcorreo varchar2(70),
    asisttelefono varchar2(20),
    capacitacion_idcapacitacion NUMBER(9) CONSTRAINT asistentes_fk1 references capacitacion
   
);

/*
Se agregan datos en la tabla asistentes
*/

Insert into asistentes
values (1, 'Francisca Lastra', 26, 'franlastra@gmail.com', '935237462', 1);

Insert into asistentes
values (2, 'Jesus Ferrer', 32, 'jferrercolmenares@gmail.com', '9467253647', 3);

Insert into asistentes
values (3, 'Felipe Kessi', 33, 'kesillox@gmail.com', '914258735', 2);
/*
 Creamos la tabla  accidente con su llave foranea hacia cliente
 */
create table accidente (
    idaccidente NUMBER(9) CONSTRAINT accidente_pk primary key,
    accifecha date  CONSTRAINT accidente_nn1 not null,
    accihora date  CONSTRAINT accidente_nn2 not null,
    accilugar varchar2(150)  CONSTRAINT accidente_nn3 not null,
    acciorigen VARCHAR2 (100)  CONSTRAINT accidente_nn4 not null,
    acciconsecuencias VARCHAR2 (100),
    accidente_rutcliente NUMBER(9) CONSTRAINT accidente_fk1 references cliente
   
);

/*
Se agregan los datos de la tabla accidente
*/

Insert into accidente
values (1, TO_DATE('2020-02-02', 'YYYY-MM-DD') ,TO_DATE('8:15:00', 'HH24:MI:SS'),
'Viña del Mar', 'Automovilistico', 'Lesion brazo', 245635537);

Insert into accidente
values (2, TO_DATE('2020-07-12', 'YYYY-MM-DD') ,TO_DATE('09:19:00', 'HH24:MI:SS'),
'Concepcion', 'Moto', 'Lesion pierna', 258378431);

Insert into accidente
values (3, TO_DATE('2020-04-14', 'YYYY-MM-DD') ,TO_DATE('20:35:34', 'HH24:MI:SS'),
'Lo Barnechea', 'Bicicleta', 'Otro accidente ', 22435294);
/*
Creamos la tabla visita con su llave foranea hacia cliente
*/

create table visita (
    idvisita NUMBER(9) CONSTRAINT visita_pk primary key,
    visfecha date  CONSTRAINT visita_nn1 not null,
    vishora date,
    vislugar varchar2(50)  CONSTRAINT visita_nn2 not null,
    viscomentarios VARCHAR2 (250)  CONSTRAINT visita_nn3 not null,
    visita_rutcliente NUMBER(9) CONSTRAINT visita_fk1 references cliente
   
);

/*
Se agregan datos a tabla visita
*/

Insert into visita 
values (111, TO_DATE('2020-02-03', 'YYYY-MM-DD') ,TO_DATE('9:30:00', 'HH24:MI:SS'),
'Viña del Mar', 'Observaciones de lesiones de accidente', 245635537 );

Insert into visita 
values (112, TO_DATE('2020-07-13', 'YYYY-MM-DD') ,TO_DATE('12:11:00', 'HH24:MI:SS'),
'Concepcion', 'Observaciones lesiones del brazo', 258378431);

Insert into visita 
values (113, TO_DATE('2020-04-15', 'YYYY-MM-DD') ,TO_DATE('21:35:35', 'HH24:MI:SS'),
'Providencia', 'Bicicleta perdida total', 22435294);
/*
Creamos la tabla chequeos
*/

create table chequeos (
    idchequeos NUMBER(9) CONSTRAINT chequeos_pk primary key,
    nombrechequeos VARCHAR2 (50)  CONSTRAINT chequeos_nn1 not null
   
);

/*
Insertamos datos en la tabla chequeos
*/

Insert into chequeos
values ( 1, 'chequeo visita 1');
Insert into chequeos
values ( 2, 'chequeo visita 2');
Insert into chequeos
values ( 3, 'chequeo visita 3');

/*
Creamos la tabla cliente_chequeos con su llave foranea hacia chequeos y cliente
*/

create table cliente_chequeos (
    idclientechequeo NUMBER(9) CONSTRAINT cliente_chequeos_pk primary key,
    cliche_rutcliente NUMBER(9) CONSTRAINT cliente_chequeos_fk1 references cliente,
    cliche_idchequeos NUMBER(9) CONSTRAINT cliente_chequeos_fk2 references chequeos,    
    cliche_estadochequeo NUMBER(3) CONSTRAINT cliente_chequeos_nn1 not null,  
    constraint chestado_chequeo  CHECK (cliche_estadochequeo IN (1,2,3)),
    cliche_comentarios VARCHAR2 (100)
     
);

insert into cliente_chequeos 
values (1, 245635537, 1, 1, 'sin comentarios' );
insert into cliente_chequeos 
values (2, 258378431, 2, 3, 'no ha cumplido comentarios proximamente' );
insert into cliente_chequeos 
values (3, 22435294, 3, 2, 'cumple con comentarios proximamente' );

 /*
 Creamos la tabla  administrativo con su llave foranea hacia usuario
 */
 

 drop table administrativo;
 CREATE TABLE administrativo(
    admirun NUMBER(9) CONSTRAINT administrativo_pk PRIMARY KEY,
    admarea VARCHAR2(50) CONSTRAINT administrativo_nn1 NOT NULL,
    admeprevia VARCHAR2(50) CONSTRAINT administrativo_nn2 NOT NULL
    
 );
 
 
 /*
 Creamos la tabla profesional con su llave foranea hacia usuario
 */
  CREATE TABLE profesional (
    profrun NUMBER(9) CONSTRAINT profesional_pk PRIMARY KEY,
    proftitulo VARCHAR2(50) CONSTRAINT profesional_nn1 NOT NULL, 
    proffechain VARCHAR2(70) CONSTRAINT profesional_nn3 NOT NULL
    
 );

 truncate table cliente;
 
alter table cliente
enable validate
constraint CLIENTE_fk1;

alter table cliente
disable validate
constraint CLIENTE_fk1;

alter table cliente drop constraint CLIENTE_fk1 ;
 
 truncate table usuario;
 
 
 DROP TABLE PROFESIONAL;
 
 
 
 
 
 
  /*
 Creamos la tabla pagos con su llave foranea hacia cliente
 */
 
 CREATE TABLE pagos (
    idpagos NUMBER (9)CONSTRAINT pagos_pk PRIMARY KEY,
    fechapago date CONSTRAINT pagos_nn1 NOT NULL,
    montopago number(20) CONSTRAINT pagos_nn2 NOT NULL,
    mespago VARCHAR2(11) CONSTRAINT pagos_nn3 NOT NULL,
    anopago VARCHAR2(20) CONSTRAINT pagos_nn4 NOT NULL,
    idpagos_rutcliente NUMBER(9) CONSTRAINT pagos_fk1 references cliente 
 );

  /*
 Creamos la tabla asesorias con su llave foranea hacia profesional y su id autoincrementable para que sea unico
 */
 
 CREATE TABLE asesorias (
    idasesorias NUMBER CONSTRAINT asesorias_pk PRIMARY KEY,
    asefecharealizacion date CONSTRAINT asesorias_nn1 NOT NULL,
    asemotivo VARCHAR2(150) CONSTRAINT asesorias_nn2 NOT NULL,
    asesorias_idpro NUMBER(9) CONSTRAINT asesorias_fk1 references profesional,
    asesorias_idcliente NUMBER(9) CONSTRAINT asesorias_fk2 references cliente 
 );
 
 CREATE SEQUENCE asesorias_seq;
CREATE OR REPLACE TRIGGER asesorias_bir 
BEFORE INSERT ON asesorias
FOR EACH ROW 
WHEN (new.idasesorias IS NULL)
BEGIN 
    SELECT asesorias_seq.NEXTVAL 
    INTO :new.idasesorias
    FROM dual; 
END;
   /*
 Creamos la tabla mejora  con su llave foranea hacia profesional y cliente, su id autoincrementable para que sea unico
 */
 

create table mejora (
    idmejora NUMBER(9) CONSTRAINT mejora_pk primary key,
    mejora_idprofesional NUMBER(9) CONSTRAINT mejora_fk1 references profesional,
    mejora_idcliente NUMBER(9) CONSTRAINT mejora_fk2 references cliente,    
    mejora_titulomejora VARCHAR2(50) CONSTRAINT mejora_nn1 not null, 
    mejora_descripcion VARCHAR2 (150)CONSTRAINT mejora_nn2 not null,
    mejora_plazo date CONSTRAINT mejora_nn3 not null
     
);

CREATE SEQUENCE mejora_seq;
CREATE OR REPLACE TRIGGER mejora_bir 
BEFORE INSERT ON mejora
FOR EACH ROW 
WHEN (new.idmejora IS NULL)
BEGIN 
    SELECT mejora_seq.NEXTVAL 
    INTO :new.idmejora
    FROM dual; 
END;





