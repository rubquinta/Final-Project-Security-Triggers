/* SQLINES DEMO *** n
*/

create table Capacitacion(

    idCapaciTacion BIGINT CONSTRAINT capa_pk PRIMARY KEY,
    rutCliente BIGINT CONSTRAINT capa_nn1 NOT NULL,
    diaCapacitacion VARCHAR(10) CONSTRAINT capa_nn2 NOT NULL,
    horaCapacitacion VARCHAR(10) CONSTRAINT capa_nn3 NOT NULL,
    lugarCapacitacion VARCHAR(15) CONSTRAINT capa_nn4 NOT NULL,
    duracionCapacitacion VARCHAR(15) CONSTRAINT capa_nn5 NOT NULL,
    cantidadAsistentes BIGINT CONSTRAINT capa_nn6 NOT NULL
    
    
);


/*
Tabla Usuario
*/

CREATE TABLE usuario (
    
    usurun BIGINT CONSTRAINT usuario_pk Primary key,
    usunombres VARCHAR(30) CONSTRAINT usuario_nn1 NOT NULL,
    usunacimiento VARCHAR(50)  CONSTRAINT usuario_nn2 NOT NULL,
    tipoUsuario VARCHAR(20)  CONSTRAINT usuario_nn3 NOT NULL
  
 );




/*
Tabla Cliente
*/
create table cliente (
    rutcliente BIGINT constraint cliente_pk primary key,
    clinombres varchar(30) constraint cliente_nn1 not null,
    cliapellidos varchar(50) constraint cliente_nn2 not null,
    clitelefono varchar(20) constraint cliente_nn3 not null,
    cliafp varchar(30),
    clisistemasalud varchar(30),
    clidireccion varchar(100)constraint cliente_nn4 not null,
    clicomuna varchar(50)constraint cliente_nn5 not null,
    cliedad SMALLINTconstraint cliente_nn6 not null,
    cliente_runUsuario BIGINT constraint cliente_nn7 not null
);
 

/* SQLINES DEMO *** ivo
*/
 CREATE TABLE administrativo(
    admirun BIGINT CONSTRAINT administrativo_pk PRIMARY KEY,
    admarea VARCHAR(50) CONSTRAINT administrativo_nn1 NOT NULL,
    admeprevia VARCHAR(50) CONSTRAINT administrativo_nn2 NOT NULL
    
 );
 


/* SQLINES DEMO *** s
*/

  CREATE TABLE profesional (
    profrun BIGINT CONSTRAINT profesional_pk PRIMARY KEY,
    proftitulo VARCHAR(50) CONSTRAINT profesional_nn1 NOT NULL, 
    proffechain VARCHAR(70) CONSTRAINT profesional_nn3 NOT NULL
    
 );

 
  /* SQLINES DEMO ***  pagos con su llave foranea hacia cliente
 */
 
 CREATE TABLE pagos (
    idpagos BIGINT CONSTRAINT pagos_pk PRIMARY KEY,
    fechapago VARCHAR(20) CONSTRAINT pagos_nn1 NOT NULL,
    montopago decimal(20) CONSTRAINT pagos_nn2 NOT NULL,
    mespago VARCHAR(11) CONSTRAINT pagos_nn3 NOT NULL,
    aniopago VARCHAR(20) CONSTRAINT pagos_nn4 NOT NULL,
    idpagos_rutcliente BIGINT CONSTRAINT pagos_nn5 NOT NULL 
 );
 
 
 
 
 /* SQLINES DEMO ***  */
 create table visita (
    idVisita BIGINT CONSTRAINT visita_pk primary key,
    rutCliente BIGINT,
    fecha varchar(50)  CONSTRAINT visita_nn1 not null,
    hora varchar(50),
    lugar varchar(50)  CONSTRAINT visita_nn2 not null,
    comentarios VARCHAR (250)  CONSTRAINT visita_nn3 not null
    
);




/* SQLINES DEMO *** sos
*/
Create Table users (
usuario VARCHAR(10) CONSTRAINT usuarios_pk PRIMARY KEY,
pass  VARCHAR(100) CONSTRAINT usuarios_nn1 NOT NULL,
role VARCHAR(10) CONSTRAINT usuarios_nn2 NOT NULL);
 

 

/* SQLINES DEMO *** bla*/

 CREATE TABLE asesorias (
    idasesorias DOUBLE PRECISION CONSTRAINT asesorias_pk PRIMARY KEY,
    asefecharealizacion VARCHAR(150) CONSTRAINT asesorias_nn1 NOT NULL,
    asemotivo VARCHAR(150) CONSTRAINT asesorias_nn2 NOT NULL,
    asesorias_idCliente BIGINT NOT NULL ,
    asesorias_idpro BIGINT NOT NULL 
 ); 
 
 /* SQLINES DEMO ***   asistentes con su llave foranea hacia capacitacion
 */
create table asistentes (
    runasistente BIGINT CONSTRAINT asistentes_pk primary key,
    asistnombrecompleto  varchar(100)  CONSTRAINT asistentes_nn1 not null,
    asistedad SMALLINT CONSTRAINT asistentes_nn2 not null,
    asistcorreo varchar(70),
    asisttelefono varchar(20),
    capacitacion_idcapacitacion BIGINT Not Null
   
);