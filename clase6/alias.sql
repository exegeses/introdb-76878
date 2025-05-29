# alias en SQL

/*
    Podemos re nombrar el enunciado de una columna
    con el motivo  qué quede mejor en un reporte
    Nota: no se cambia definitivamente el nombre de la columna
    sino que es renombrada sólo para el reporte
    Implementamos un alias con la palabra reservada **AS**
    (se puede omitir)
*/

SELECT
        producto AS Producto,
        precio AS Contado,
        precio * 1.05 AS Lista,
        marca AS Marca,
        categoria AS Categoría
FROM productos
     JOIN marcas
      ON productos.idMarca = marcas.idMarca
     JOIN categorias
      ON productos.idCategoria = categorias.idCategoria;

-- también podemos asignar alias a los nombres de las tablas

SELECT
    producto AS Producto,
    precio AS Contado,
    precio * 1.05 AS Lista,
    marca AS Marca,
    categoria AS Categoría
FROM productos AS p
     JOIN marcas AS m
      ON p.idMarca = m.idMarca
     JOIN categorias AS c
      ON p.idCategoria = c.idCategoria;