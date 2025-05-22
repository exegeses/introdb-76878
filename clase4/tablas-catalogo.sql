# tablas proyecto catálogo

-- tabla marcas
create table marcas
(
    idMarca tinyint unsigned primary key auto_increment,
    marca varchar(50) unique not null
);

-- tabla categorias
create table categorias
(
    idCategoria tinyint unsigned primary key auto_increment,
    categoria varchar(50) unique not null
);

-- tablaproductos
create table productos
(
    idProducto smallint unsigned primary key auto_increment,
    producto varchar(100) not null unique,
    precio decimal(10,2) unsigned not null,
    idMarca tinyint unsigned not null,
    idCategoria tinyint unsigned not null,
    descripcion varchar(500),
    imagen varchar(50) not null,
    activo boolean not null,
    foreign key (idMarca) references marcas (idMarca),
    foreign key (idCategoria) references categorias (idCategoria)
);