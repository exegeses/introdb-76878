#
/*
Tener nombre, apellido de los empleados
Nombre del departamento asignado
*/

SELECT nombre, apellido, departamento
FROM empleados AS e
 JOIN departamentos AS d
   ON e.idDepartamento = d.idDepartamento;

/*
    No trae los dos empleados que no tienen departamento asignado
*/

## Left Join  (prioridad a primera tabla)

SELECT nombre, apellido, departamento
FROM empleados AS e
LEFT JOIN departamentos AS d
    ON e.idDepartamento = d.idDepartamento;

## Right Join  (prioridad a segunda tabla)

SELECT nombre, apellido, departamento
FROM empleados AS e
 RIGHT JOIN departamentos AS d
   ON e.idDepartamento = d.idDepartamento;