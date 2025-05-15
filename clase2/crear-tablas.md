# Crear tablas en SQL

> Para crear una tabla dentro de una base de datos 
> utilizamos el comando **CREATE TABLE** 

> Nota: para poder interactuar con una base de datos 
> debemos activarla primero
> para activar la base de datos usamos el comando
 
    USE nombreBase;


> Sintaxis:

    CREATE TABLE nombreTabla  
    (  
        nombreCampo tipoDato características,    
        nombreCampo2 tipoDato características,   
        nombreCampo3 tipoDato características,   
        nombreCampox tipoDato características
    );  

> Ejemplo práctico: 

    CREATE TABLE personas  
    (  
        id int auto_increment primary key,    
        apellido varchar(50) not null,    
        nombre varchar(50) not null,    
        dni int unique not null,    
        alta date not null    
    );   

