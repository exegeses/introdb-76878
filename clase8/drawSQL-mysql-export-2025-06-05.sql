CREATE TABLE `marcas`(
    `idMarca` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `marca` VARCHAR(50) NOT NULL
);
ALTER TABLE
    `marcas` ADD UNIQUE `marcas_marca_unique`(`marca`);

CREATE TABLE `categorias`(
    `idCategoria` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `categoria` VARCHAR(50) NOT NULL
);
ALTER TABLE
    `categorias` ADD UNIQUE `categorias_categoria_unique`(`categoria`);

CREATE TABLE `productos`(
    `idProducto` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `producto` VARCHAR(100) NOT NULL,
    `precio` DECIMAL(10, 2) UNSIGNED NOT NULL,
    `idMarca` TINYINT UNSIGNED NOT NULL,
    `idCategoria` TINYINT UNSIGNED NOT NULL,
    `descripcion` VARCHAR(500) NULL,
    `imagen` VARCHAR(50) NOT NULL,
    `activo` BOOLEAN NOT NULL
);
ALTER TABLE
    `productos` ADD UNIQUE `productos_producto_unique`(`producto`);

CREATE TABLE `proveedores`(
    `idProveedor` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `razonsocial` VARCHAR(100) NOT NULL,
    `cuit` INT NOT NULL,
    `telefono` INT NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `direccion` VARCHAR(100) NOT NULL
);
ALTER TABLE
    `proveedores` ADD UNIQUE `proveedores_razonsocial_unique`(`razonsocial`);

CREATE TABLE `productos_proveedores`(
    `idProducto` SMALLINT UNSIGNED NOT NULL,
    `idProveedor` TINYINT UNSIGNED NOT NULL
);
ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idcategoria_foreign`
        FOREIGN KEY(`idCategoria`) REFERENCES `categorias`(`idCategoria`);
ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idmarca_foreign`
        FOREIGN KEY(`idMarca`) REFERENCES `marcas`(`idMarca`);
ALTER TABLE
    `productos_proveedores` ADD CONSTRAINT `productos_proveedores_idproducto_foreign` FOREIGN KEY(`idProducto`) REFERENCES `productos`(`idProducto`);
ALTER TABLE
    `productos_proveedores` ADD CONSTRAINT `productos_proveedores_idproveedor_foreign` FOREIGN KEY(`idProveedor`) REFERENCES `proveedores`(`idProveedor`);