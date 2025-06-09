-- proyecto academia
create table areas
(
    idArea tinyint unsigned auto_increment primary key,
    area varchar(50) not null
);

create table cursos
(
    idCurso smallint unsigned auto_increment,
    curso varchar(100) not null,
    matricula decimal(10,2) not null,
    idArea tinyint unsigned not null,
    nivel enum('Básico', 'Intermedio', 'Avanzado', 'Experto') not null,
    primary key (idCurso),
    unique (curso),
    foreign key (idArea) references areas (idArea)
);
alter table cursos
    ADD descripcion varchar(250);

create table alumnos
(
    idAlumno smallint unsigned auto_increment primary key,
    apellido varchar(50) not null,
    nombre varchar(50) not null,
    dni varchar(20) unique not null,
    email varchar(50) not null,
    fechaNacimiento date not null
);

create table cursos_alumnos
(
    idCurso smallint unsigned not null,
    idAlumno smallint unsigned not null,
    activo boolean default(1) not null,
    foreign key (idCurso) references cursos (idCurso),
    foreign key (idAlumno) references alumnos (idAlumno)
);
