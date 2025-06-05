

DELIMITER //
CREATE PROCEDURE auditoria(
                            in idUsuario int,
                            in idProducto int,
                            in precio decimal(10,2)
                    )
BEGIN
    insert into auditorias
            VALUES
                ( default, idUsuario, idProducto, precio, default );
END
//
DELIMITER ;

-- llamado
call auditoria(12, 25, 100);



CREATE PROCEDURE update_data(IN uid INT, INOUT amount FLOAT)
BEGIN
    DECLARE uBalance FLOAT;
    SELECT balance INTO uBalance FROM accounts
    WHERE id=uid;
    IF amount > uBalance THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT="Insufficient balance";
    ELSE
        UPDATE accounts
        SET balance= uBalance-amount
        WHERE id=uid;
    END IF;
    SELECT balance into amount from accounts WHERE id= uid;
END //



call update_data(25, 4500)