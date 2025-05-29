# consultas con relaciones entre tablas

> si queremos consultar datos provenientes de dos o más tablas debemos relacionar esas tablas
> para lograrlo tenemos dos técnicas


## Table Relation 

> La técnica **Table Relation** se logra mencionando en el listado de las tablas (después del **FROM**) cada una de las tablas necesarias separadas por comas
> Y luego mediante un filtro (**WHERE**)
> igualamamos la clave foránea de la tabla principal
> con la clave primria de la tabla secundaria


> Sintaxis: 

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;  

> Ejemplo práctico: 

    SELECT producto, precio, marca  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, marca, categoria  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;   


> obtener nombre de la misión, destino, nombre de la agencia

    SELECT nombre_mision, destino, nombre_agencia, fecha_lanzamiento  
      FROM misiones, agencias  
      WHERE misiones.id_agencia = agencias.id_agencia;  

> obtener nombre de la misión, destino, nombre de la agencia, nombre pais

    SELECT nombre_mision, destino, nombre_agencia, nombre_pais, fecha_lanzamiento  
      FROM misiones, agencias, paises  
      WHERE misiones.id_agencia = agencias.id_agencia  
        AND  misiones.id_pais = paises.id_pais;  


## JOIN

> En la técnica **JOIN** no vamos a mencionar en el listado de las tablas (después del **FROM**) cada una de las tablas necesarias. 
> Sólo vamos a mencionar la tabla principal
> Vamos a utilizar la palabra reservada **JOIN** para mencionar la tabla secundaria

> Sintaxis:

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk;

> Ejemplo práctico:

    SELECT producto, precio, marca  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, marca, categoria  
      FROM productos 
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  


    SELECT nombre_mision, destino, nombre_agencia, fecha_lanzamiento
      FROM misiones  
      JOIN agencias  
        ON misiones.id_agencia = agencias.id_agencia;

    SELECT nombre_mision, destino, nombre_agencia, nombre_pais, fecha_lanzamiento
      FROM misiones  
      JOIN agencias  
        ON misiones.id_agencia = agencias.id_agencia
      JOIN paises 
        ON misiones.id_pais = paises.id_pais; 


