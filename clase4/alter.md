# modificaciones de estructura de una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTabla  
      CHANGE nombreOld nombreNew modificadores.

> Tener en cuenta que debemos repetir el tipo de datos, si no dará error
> Además si queremos que no sea nulo debemos especificarlo ya que si no se volverá nulo (permitirá vacío)

    ALTER TABLE empleados  
      CHANGE ALTA FECHA date not null;

## Cambiar tipo de datos o modificadores

    ALTER TABLE nombreTabla  
      MODIFY nombreCampo tipoDato;

    ALTER TABLE empleados  
      MODIFY id smallint unsigned auto_increment;  

    ALTER TABLE empleados  
      MODIFY apellido varchar(100) not null;  

## Agregar columna a una tabla

    ALTER TABLE nombreTabla  
      ADD nombreCampo tipoDato modificador;  

    ALTER TABLE empleados  
      ADD anotaciones varchar(1000);

## Eliminar una columna 

    ALTER TABLE nombreTabla  
      DROP nombreCampo;  

    ALTER TABLE empleados  
      DROP anotaciones;  
