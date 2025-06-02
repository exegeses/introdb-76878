CREATE TABLE `empleados`
(
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `APELLIDO` varchar(50) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `DNI` bigint NOT NULL,
  `ALTA` date NOT NULL,
  `idDepartamento` tinyint unsigned DEFAULT NULL,
  `anotaciones` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `DNI` (`DNI`)
)
    ENGINE=InnoDB AUTO_INCREMENT=21
    DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

UPDATE empleados
SET idDepartamento = ((id - 1) % 5) + 1;



UPDATE empleados SET idDepartamento = 1 WHERE id BETWEEN 1 AND 4;
UPDATE empleados SET idDepartamento = 2 WHERE id BETWEEN 5 AND 8;
UPDATE empleados SET idDepartamento = 3 WHERE id BETWEEN 9 AND 12;
UPDATE empleados SET idDepartamento = 4 WHERE id BETWEEN 13 AND 16;
UPDATE empleados SET idDepartamento = 5 WHERE id BETWEEN 17 AND 18;