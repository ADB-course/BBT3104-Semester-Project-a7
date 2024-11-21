-- Write your SQL code here
-- Temporal triggers
--Trigger for Expiring Reservations
DELIMITER //

CREATE PROCEDURE expire_reservations()
BEGIN
    UPDATE Reservations
    SET reservation_status = 'expired'
    WHERE reservation_status = 'active'
      AND reservation_time < DATE_SUB(NOW(), INTERVAL 30 MINUTE);
END //

DELIMITER ;

CREATE EVENT expire_reservations_event
ON SCHEDULE EVERY 15 MINUTE
STARTS CURRENT_TIMESTAMP
DO CALL expire_reservations();

--Trigger for Low Stock Notification
DELIMITER //

CREATE PROCEDURE check_low_stock()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE ingredient_id INT;
    DECLARE stock_level INT;
    DECLARE cur CURSOR FOR SELECT ingredient_id, stock_level FROM Ingredients WHERE stock_level < 10;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO ingredient_id, stock_level;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO Notifications (message) VALUES (CONCAT('Low stock alert: Ingredient ID ', ingredient_id, ' has only ', stock_level, ' units remaining.'));
    END LOOP;

    CLOSE cur;
END //

DELIMITER ;

CREATE EVENT check_stock_event
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_TIMESTAMP
DO CALL check_low_stock();