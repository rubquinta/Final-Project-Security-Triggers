/*
Tabla capacitacion
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


/*
Tabla Usuario
*/

CREATE TABLE usuario (
    
    usurun NUMBER(10) CONSTRAINT usuario_pk Primary key,
    usunombres VARCHAR2(30) CONSTRAINT usuario_nn1 NOT NULL,
    usunacimiento VARCHAR2(50)  CONSTRAINT usuario_nn2 NOT NULL,
    tipoUsuario VARCHAR2(20)  CONSTRAINT usuario_nn3 NOT NULL
  
 );




/*
Tabla Cliente
*/
create table cliente (
    rutcliente NUMBER(9) constraint cliente_pk primary key,
    clinombres varchar2(30) constraint cliente_nn1 not null,
    cliapellidos varchar2(50) constraint cliente_nn2 not null,
    clitelefono varchar2(20) constraint cliente_nn3 not null,
    cliafp varchar2(30),
    clisistemasalud varchar2(30),
    clidireccion varchar2(100)constraint cliente_nn4 not null,
    clicomuna varchar2(50)constraint cliente_nn5 not null,
    cliedad NUMBER(3)constraint cliente_nn6 not null,
    cliente_runUsuario NUMBER(10) constraint cliente_nn7 not null
);
select * from CLIENTE;

/*
Tabla Administrativo
*/
 CREATE TABLE administrativo(
    admirun NUMBER(9) CONSTRAINT administrativo_pk PRIMARY KEY,
    admarea VARCHAR2(50) CONSTRAINT administrativo_nn1 NOT NULL,
    admeprevia VARCHAR2(50) CONSTRAINT administrativo_nn2 NOT NULL
    
 );
 


/*Tabla profesionales
*/

  CREATE TABLE profesional (
    profrun NUMBER(9) CONSTRAINT profesional_pk PRIMARY KEY,
    proftitulo VARCHAR2(50) CONSTRAINT profesional_nn1 NOT NULL, 
    proffechain VARCHAR2(70) CONSTRAINT profesional_nn3 NOT NULL
    
 );

 
  /*
 Creamos la tabla pagos con su llave foranea hacia cliente
 */
 
 CREATE TABLE pagos (
    idpagos NUMBER (9)CONSTRAINT pagos_pk PRIMARY KEY,
    fechapago VARCHAR2(20) CONSTRAINT pagos_nn1 NOT NULL,
    montopago number(20) CONSTRAINT pagos_nn2 NOT NULL,
    mespago VARCHAR2(11) CONSTRAINT pagos_nn3 NOT NULL,
    aniopago VARCHAR2(20) CONSTRAINT pagos_nn4 NOT NULL,
    idpagos_rutcliente NUMBER(9) CONSTRAINT pagos_nn5 NOT NULL 
 );
 
 
 
 /*Creo tabla visita
 */
 create table visita (
    idVisita NUMBER(9) CONSTRAINT visita_pk primary key,
    rutCliente NUMBER(9),
    fecha varchar2(50)  CONSTRAINT visita_nn1 not null,
    hora varchar2(50),
    lugar varchar2(50)  CONSTRAINT visita_nn2 not null,
    comentarios VARCHAR2 (250)  CONSTRAINT visita_nn3 not null
    
);




/*
Usuarios con accesos
*/
Create Table users (
usuario VARCHAR2(10) CONSTRAINT usuarios_pk PRIMARY KEY,
pass  VARCHAR2(100) CONSTRAINT usuarios_nn1 NOT NULL,
role VARCHAR2(10) CONSTRAINT usuarios_nn2 NOT NULL);

INSERT INTO users values ('cliente',
'$2a$10$Ix4qSfSIwLtonuKEHrSouuTGdzH3D8sm6eh9woB.ONfk.TjlalQRe',
'Cliente');

INSERT INTO users values ('admin',
'$2a$10$Ix4qSfSIwLtonuKEHrSouuTGdzH3D8sm6eh9woB.ONfk.TjlalQRe',
'Admin');

INSERT INTO users values ('admin',
'$2a$10$Ix4qSfSIwLtonuKEHrSouuTGdzH3D8sm6eh9woB.ONfk.TjlalQRe',
'Admin');

INSERT INTO users values ('pro',
'$2a$10$BCYRuLDH0u2UM0iZMOVKf.GdVm/8qKIY097l/yl/M2fKaAfDj4gv6',
'Pro');

/* seteamos de nuevo claves para admin (password admin) y para (cliente password cliente)*/
update users set pass = '$2a$10$aMnlq1aiMBwwjxqslatztefk2.Hmd.uDBJPCStIXIYe/LuDxdclv.' where usuario = 'cliente';
update users set pass = '$2a$10$Pu4QzWDdITnxEJH7MT6CGuKyrObmPDb7TfprBCbRxSbc9m.ff3BGq' where usuario = 'admin';


select usuario as username, pass as password, 1 as enabled from users ;

select usuario as username, role as authority from users;

/*Creap asesorias tabla*/

 CREATE TABLE asesorias (
    idasesorias NUMBER CONSTRAINT asesorias_pk PRIMARY KEY,
    asefecharealizacion VARCHAR2(150) CONSTRAINT asesorias_nn1 NOT NULL,
    asemotivo VARCHAR2(150) CONSTRAINT asesorias_nn2 NOT NULL,
    asesorias_idCliente NUMBER(9) NOT NULL ,
    asesorias_idpro NUMBER(9) NOT NULL 
 ); 
 
 /*
 Creamos la tabla  asistentes con su llave foranea hacia capacitacion
 */
create table asistentes (
    runasistente NUMBER(9) CONSTRAINT asistentes_pk primary key,
    asistnombrecompleto  varchar2(100)  CONSTRAINT asistentes_nn1 not null,
    asistedad NUMBER(3) CONSTRAINT asistentes_nn2 not null,
    asistcorreo varchar2(70),
    asisttelefono varchar2(20),
    capacitacion_idcapacitacion NUMBER(9) Not Null
   
);
