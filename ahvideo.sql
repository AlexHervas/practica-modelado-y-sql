create schema if not exists ahvideo;

set schema 'ahvideo';

create table if not exists socio (
    id_socio serial primary key,
    dni varchar(9) not null,
    nombre varchar(40) not null,
    apellidos varchar(50) not null,
    fecha_nacimiento date not null,
    telefono varchar(12) not null
);

create table if not exists correspondencia (
    id_socio integer primary key,
    codigo_postal varchar(5) not null,
    calle varchar(60) not null,
    numero integer not null,
    piso varchar(15),
    letra varchar(5)
);

create table if not exists pelicula (
    id_pelicula serial primary key,
    titulo varchar(60) not null,
    genero varchar(30) not null,
    director varchar(30) not null,
    sinopsis text not null
);

create table if not exists copia (
    id_copia serial primary key,
    id_pelicula integer not null
);

create table if not exists prestamo (
    id_prestamo serial primary key,
    id_copia integer not null,
    id_socio integer not null,
    fecha_alquiler date not null,
    fecha_devolucion date
);