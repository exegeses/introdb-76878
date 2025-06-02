CREATE TABLE `departamentos`
(
 `idDepartamento` tinyint unsigned NOT NULL AUTO_INCREMENT,
 `departamento` varchar(100) NOT NULL,
 PRIMARY KEY (`idDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO departamentos
    (idDepartamento, departamento)
VALUES
      (1, 'Administración'),
      (2, 'Compras'),
      (3, 'Ventas'),
      (4, 'Atención al público'),
      (5, 'Gerencia general'),
      (6, 'Marketing');
