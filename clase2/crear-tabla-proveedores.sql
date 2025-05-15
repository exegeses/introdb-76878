# script para la creación de la tabla proveedores

create table proveedores
(
    idProveedor int auto_increment primary key,
    razonsocial varchar(100) unique not null,
    cuit int not null,
    telefono int not null,
    email varchar(50) not null,
    direccion varchar(100) not null
);
