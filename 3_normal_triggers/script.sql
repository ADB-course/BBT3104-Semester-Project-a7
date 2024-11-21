-- Write your SQL code here
-- normal triggers

--trigger 1
DELIMITER //

CREATE TRIGGER check_stock_before_order
BEFORE INSERT ON Orders
FOR EACH ROW
BEGIN
    DECLARE insufficient_stock BOOLEAN DEFAULT FALSE;
    DECLARE ingredient_stock INT;

    DECLARE done INT DEFAULT FALSE;
    DECLARE cur CURSOR FOR 
        SELECT i.stock_level 
        FROM DishIngredients di
        JOIN Ingredients i ON di.ingredient_id = i.ingredient_id
        WHERE di.dish_id = NEW.dish_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO ingredient_stock;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Check if sufficient stock for each ingredient
        IF ingredient_stock < (SELECT quantity FROM DishIngredients WHERE dish_id = NEW.dish_id AND ingredient_id = (SELECT ingredient_id FROM DishIngredients WHERE dish_id = NEW.dish_id LIMIT 1)) THEN
            SET insufficient_stock = TRUE;
            LEAVE read_loop;
        END IF;
    END LOOP;

    CLOSE cur;

    IF insufficient_stock THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient stock for this order.';
    END IF;
END; //

DELIMITER ;

--trigger 2
DELIMITER //

CREATE TRIGGER check_stock_before_order_update
BEFORE UPDATE ON Orders
FOR EACH ROW
BEGIN
    DECLARE insufficient_stock BOOLEAN DEFAULT FALSE;
    DECLARE ingredient_stock INT;

    DECLARE done INT DEFAULT FALSE;
    DECLARE cur CURSOR FOR 
        SELECT i.stock_level 
        FROM DishIngredients di
        JOIN Ingredients i ON di.ingredient_id = i.ingredient_id
        WHERE di.dish_id = NEW.dish_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO ingredient_stock;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Check if sufficient stock for each ingredient
        IF ingredient_stock < (SELECT quantity FROM DishIngredients WHERE dish_id = NEW.dish_id AND ingredient_id = (SELECT ingredient_id FROM DishIngredients WHERE dish_id = NEW.dish_id LIMIT 1)) THEN
            SET insufficient_stock = TRUE;
            LEAVE read_loop;
        END IF;
    END LOOP;

    CLOSE cur;

    IF insufficient_stock THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient stock for this order.';
    END IF;
END; //

DELIMITER ;