-- Script para crear la tabla
CREATE TABLE empleados (
   ID INT PRIMARY KEY AUTO_INCREMENT,
   APELLIDO VARCHAR(50) NOT NULL,
   NOMBRE VARCHAR(50) NOT NULL,
   DNI BIGINT NOT NULL UNIQUE,
   ALTA DATE NOT NULL
);

-- Script para insertar 20 registros de ejemplo
INSERT INTO empleados
    (APELLIDO, NOMBRE, DNI, ALTA)
    VALUES
    ('García', 'Javier', 25852410, '2008-12-12'),
    ('González', 'Mónica', 36520147, '2005-09-30'),
    ('Martínez', 'Vanesa', 35741951, '2006-06-21'),
    ('Álvarez', 'Fernando', 32912457, '2007-11-02'),
    ('Rodríguez', 'Carlos', 28456123, '2010-03-15'),
    ('Fernández', 'Laura', 31568742, '2009-07-22'),
    ('López', 'Miguel', 26789345, '2011-05-04'),
    ('Pérez', 'Silvia', 33987654, '2005-11-18'),
    ('Gómez', 'Ricardo', 29876543, '2007-02-28'),
    ('Sánchez', 'Patricia', 34512876, '2012-09-10'),
    ('Romero', 'Daniel', 27654321, '2006-12-05'),
    ('Torres', 'María', 35123789, '2013-01-20'),
    ('Díaz', 'Antonio', 30567891, '2008-04-17'),
    ('Ruiz', 'Carmen', 29345678, '2014-08-30'),
    ('Hernández', 'José', 36789012, '2007-05-25'),
    ('Jiménez', 'Ana', 28234567, '2009-10-14'),
    ('Moreno', 'Pablo', 33456789, '2010-11-30'),
    ('Muñoz', 'Elena', 31234567, '2012-02-08'),
    ('Alonso', 'Raúl', 27345678, '2013-06-15'),
    ('Gutiérrez', 'Lucía', 34567890, '2011-04-27');
