# consultas de coincidencia

> las consultas de coincidencia se utilizan para obtener registros que cumplan con una condición que utilice una cadena de caracteres
> eso quiere decir que nuestro filtro va a hacer que contenga cierta cadena de caracteres

> Vamos a traer nombre, precio, descripción de los productos que en la columna descripción contengan la palabra 'inalámbrico'

    SELECT producto, precio, descripcion  
      FROM productos  
      WHERE descripcion = 'inalámbrico'; 

> Utilizamos la palabra reservada **LIKE** (en vez del símbolo **=**) 
> en combinación con el carácter **%** (porcentaje) como una especie de comodín que podría ocupar 1 (uno), varios o hasta ningún carácter 

