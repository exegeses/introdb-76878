create table precios
(
    simple float unsigned not null,
    doble double unsigned not null,
    exacto decimal(10,2) unsigned not null
);

insert into precios
    VALUES
        ( 12.56, 12.56, 12.56 ),
        ( 20.88, 20.88, 20.88 ),
        ( 30, 30, 30 ),
        ( 57.98, 57.98, 57.98 ),
        ( 75.36, 75.36, 75.36 ),
        ( 83.10, 83.10, 83.10 ),
        ( 22, 22, 22 );

-- demostración
SELECT SUM(simple), SUM(doble), SUM(exacto)
FROM precios;