# UNION
-- unir dos consultas

SELECT nombre, apellido, departamento
FROM empleados AS e
 LEFT JOIN departamentos AS d
   ON e.idDepartamento = d.idDepartamento

UNION

SELECT nombre, apellido, departamento
FROM empleados AS e
 RIGHT JOIN departamentos AS d
    ON e.idDepartamento = d.idDepartamento;

/* investigar: Full Outer JOIN */