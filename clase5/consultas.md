# Consulta en SQL

> Podemos realizar consultas a un servidor de base de datos y podemos realizar consultas a las tablas de una base de datos

## Consultas a Server

    -- listar todas las bases de datos de nuestro server  
    SHOW DATABASES;  

> La palabra reservada más importante o al menos la más utilizada para consultas es **SELECT**

    --ver cuál es la base de datos activa  
    SELECT DATABASE();  

## Consultas a tablas dentro de una bdd

    -- listar todas las tablas dentro una base de datos
    SHOW TABLES;  

    -- mostrar la estructura de una tabla  
    DESCRIBE nombreTabla;  

> Para realizar consultas a una tabla y que nos devuelva una lista de registros vamos a utilizar la palabra reservada **SELECT** acompañada de la palabra **FROM**

    SELECT * FROM nombreTabla;  
    SELECT * FROM personas;  
    SELECT * FROM productos;  

> En este tipo de consultas nos trae todos los registros de todas las columnas de la tabla solicitada

> Si nosotros queremos traer registros de 
> solamente algunas de las columnas (no todas) 
> vamos a tener que especificarlas luego de la palabra **SELECT** y separadas por comas

    SELECT nombreCol, nombreCol, nombreCol  
      FROM nombreTabla;  

> si queremos traer el nombre y el precio del producto sería:

    SELECT producto, precio    
      FROM productos;  

### Orden de resultados
> Para ordenar los resultados según una columna en particular tenemos el comando **ORDER BY** seguido de la columna de orden

    SELECT *  
      FROM marcas  
      ORDER BY idMarca;  

    SELECT producto, precio  
      FROM productos  
      ORDER BY precio;  

> El modificador **DESC** sirve para hacer un orden descendente

    SELECT producto, precio  
      FROM productos  
      ORDER BY precio DESC;  

> podemos utilizar dos criterios de orden

    SELECT producto, precio  
      FROM productos  
      ORDER BY idMarca, precio;  