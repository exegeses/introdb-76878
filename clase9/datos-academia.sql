INSERT INTO areas
    (area)
VALUES
     ('Programación'),
     ('Diseño Gráfico'),
     ('Marketing Digital'),
     ('Ciencia de Datos'),
     ('Idiomas');

INSERT INTO cursos
    (curso, matricula, idArea, nivel, descripcion)
VALUES
-- Programación
('Introducción a Python', 25000.00, 1, 'Básico', 'Aprende los fundamentos de Python desde cero'),
('Programación en PHP', 28000.00, 1, 'Intermedio', 'Desarrollo web con PHP y MySQL'),
('JavaScript Moderno', 30000.00, 1, 'Intermedio', 'ES6, React y desarrollo frontend'),
('Desarrollo Full Stack', 45000.00, 1, 'Avanzado', 'Completo stack de desarrollo web'),
('Programación en Java', 32000.00, 1, 'Intermedio', 'Programación orientada a objetos con Java'),

-- Diseño Gráfico
('Diseño de Logos e Identidad Visual', 22000.00, 2, 'Básico', 'Creación de marcas y identidades corporativas'),
('Adobe Photoshop Avanzado', 26000.00, 2, 'Avanzado', 'Técnicas avanzadas de retoque y composición'),
('Illustrator para Principiantes', 20000.00, 2, 'Básico', 'Diseño vectorial desde cero'),
('Diseño UX/UI', 35000.00, 2, 'Intermedio', 'Experiencia de usuario y interfaces'),

-- Marketing Digital
('SEO y Posicionamiento Web', 24000.00, 3, 'Intermedio', 'Optimización para motores de búsqueda'),
('Marketing para Redes Sociales', 21000.00, 3, 'Básico', 'Estrategias de marketing en plataformas sociales'),
('Google Ads y SEM', 27000.00, 3, 'Intermedio', 'Publicidad en buscadores y remarketing'),
('Email Marketing', 18000.00, 3, 'Básico', 'Campañas efectivas de email marketing'),

-- Ciencia de Datos
('Machine Learning', 40000.00, 4, 'Avanzado', 'Algoritmos de aprendizaje automático'),
('SQL para Análisis de Datos', 23000.00, 4, 'Básico', 'Consultas y análisis con bases de datos'),
('Python para Data Science', 38000.00, 4, 'Intermedio', 'Análisis de datos con Python y pandas'),
('Visualización de Datos', 29000.00, 4, 'Intermedio', 'Tableau, Power BI y herramientas de visualización');

INSERT INTO alumnos
    (apellido, nombre, dni, email, fechaNacimiento)
VALUES
 ('García', 'Juan Carlos', '12345678', 'juan.garcia@email.com', '1995-03-15'),
 ('López', 'María Elena', '23456789', 'maria.lopez@email.com', '1992-07-22'),
 ('Martínez', 'Pedro José', '34567890', 'pedro.martinez@email.com', '1998-11-08'),
 ('Rodríguez', 'Ana Sofía', '45678901', 'ana.rodriguez@email.com', '1994-05-30'),
 ('González', 'Luis Miguel', '56789012', 'luis.gonzalez@email.com', '1996-09-12'),
 ('Fernández', 'Carmen Rosa', '67890123', 'carmen.fernandez@email.com', '1993-01-25'),
 ('Sánchez', 'Diego Alejandro', '78901234', 'diego.sanchez@email.com', '1997-04-18'),
 ('Ramírez', 'Valeria Nicole', '89012345', 'valeria.ramirez@email.com', '1991-12-03'),
 ('Torres', 'Miguel Ángel', '90123456', 'miguel.torres@email.com', '1999-06-20'),
 ('Flores', 'Isabella Sofía', '01234567', 'isabella.flores@email.com', '1995-10-14'),
 ('Herrera', 'Sebastián Mateo', '11234567', 'sebastian.herrera@email.com', '1994-08-07'),
 ('Jiménez', 'Camila Andrea', '22345678', 'camila.jimenez@email.com', '1996-02-29'),
 ('Morales', 'Andrés Felipe', '33456789', 'andres.morales@email.com', '1998-05-11'),
 ('Castillo', 'Natalia Paz', '44567890', 'natalia.castillo@email.com', '1992-11-16'),
 ('Vargas', 'Fernando David', '55678901', 'fernando.vargas@email.com', '1997-07-04'),
 ('Mendoza', 'Alejandra Beatriz', '66789012', 'alejandra.mendoza@email.com', '1993-09-23'),
 ('Rojas', 'Carlos Eduardo', '77890123', 'carlos.rojas@email.com', '1995-12-31'),
 ('Peña', 'Sofía Valentina', '88901234', 'sofia.pena@email.com', '1991-03-08'),
 ('Silva', 'Matías Ignacio', '99012345', 'matias.silva@email.com', '1999-01-19'),
 ('Ortega', 'Lucía Fernanda', '00123456', 'lucia.ortega@email.com', '1994-04-26');

INSERT INTO cursos_alumnos
    (idAlumno, idCurso, activo)
VALUES
-- Algunos alumnos en múltiples cursos
(1, 1, 1),   -- Juan García - Introducción a Python
(1, 15, 1),  -- Juan García - SQL para Análisis de Datos
(2, 6, 1),   -- María López - Diseño de Logos
(2, 11, 1),  -- María López - Marketing Redes Sociales
(3, 2, 1),   -- Pedro Martínez - PHP
(3, 3, 1),   -- Pedro Martínez - JavaScript
(4, 9, 1),   -- Ana Sofía - Diseño UX/UI
(4, 10, 0),  -- Ana Sofía - SEO (inactiva)
(5, 14, 1),  -- Luis Miguel - Machine Learning
(6, 7, 1),   -- Carmen Fernández - Photoshop Avanzado
(7, 4, 1),   -- Diego Sánchez - Full Stack
(8, 11, 1),  -- Valeria Ramírez - Marketing Redes Sociales
(8, 12, 1),  -- Valeria Ramírez - Google Ads
(9, 1, 1),   -- Miguel Torres - Introducción a Python
(10, 8, 1),  -- Isabella Flores - Illustrator
(11, 16, 1), -- Sebastián Herrera - Python Data Science
(12, 6, 1),  -- Camila Jiménez - Diseño de Logos
(13, 2, 1),  -- Andrés Morales - PHP
(14, 13, 1), -- Natalia Castillo - Email Marketing
(15, 5, 1),  -- Fernando Vargas - Java
(16, 17, 1), -- Alejandra Mendoza - Visualización de Datos
(17, 10, 1), -- Carlos Rojas - SEO
(18, 9, 1),  -- Sofía Peña - Diseño UX/UI
(19, 3, 1),  -- Matías Silva - JavaScript
(20, 15, 1), -- Lucía Ortega - SQL
(1, 3, 1),   -- Juan García - JavaScript (segundo curso)
(5, 16, 1),  -- Luis Miguel - Python Data Science (segundo curso)
(10, 6, 0),  -- Isabella Flores - Diseño de Logos (inactiva)
(12, 11, 1), -- Camila Jiménez - Marketing Redes Sociales (segundo curso)
(17, 12, 1); -- Carlos Rojas - Google Ads (segundo curso)
