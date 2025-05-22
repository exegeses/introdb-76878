# Modificación de registros de una tabla

> para modificar los datos de una tabla utilizamos el comando **UPDATE**
> debemos especificar un filtro utilizando la palabra reservada **WHERE** seguida de una condición.

> Sintaxis:  

    UPDATE nombreTabla  
      SET  
           nombreCampo = valor,  
           nombreCampo2 = valor2  
     WHERE condición;  

> Ejemplo práctico: 

    UPDATE empleados  
      SET  
           nombre = 'Richard',  
           dni = 29876542  
     WHERE id = 9;  

    UPDATE servicios  
      SET precio = precio * 1.05    
     WHERE departamento = 4;  

