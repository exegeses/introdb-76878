# Filtrado de resultados

> Filtrar resultados de una consulta significa que vamos a traer únicamente los registros que cumplan con una condición
> para implementar un filtro utilizamos la palabra reservada **WHERE** seguida de una condición

    SELECT campo, campo  
      FROM tabla  
      WHERE condición;  

> Practica: 
> nombre y precio del producto con un precio hasta 800

    SELECT producto, precio  
      FROM productos  
      WHERE precio <= 800;  

> Nombre y precio del producto con un precio entre 100 y 800  

    SELECT producto, precio  
      FROM productos  
      WHERE precio >= 100  
        AND precio <= 800;  

    SELECT producto, precio  
      FROM productos  
      WHERE precio BETWEEN 100 AND 800;    

> nombre y precio del producto de las marcas 7 y 13

    SELECT producto, precio  
      FROM productos  
      WHERE  idMarca = 7  
        OR   idMarca = 13;    

    SELECT producto, precio  
      FROM productos  
      WHERE  idMarca IN( 7, 13 );    

