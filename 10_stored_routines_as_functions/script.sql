-- Write your SQL code here
--1.Calculate Total Cost for an Order
DELIMITER //

CREATE FUNCTION calculate_order_total (order_id_in INT) 
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total_cost DECIMAL(10, 2) DEFAULT 0;
    SELECT SUM(m.price * oi.quantity) INTO total_cost 
    FROM Order_Item oi
    INNER JOIN Menu m ON oi.dish_id = m.dish_id
    WHERE oi.order_id = order_id_in;
    RETURN total_cost;
END //

DELIMITER ;

--2.Calculate Average Menu Item Cost by Category
DELIMITER //

CREATE FUNCTION calculate_average_menu_cost (category_in VARCHAR(50))
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE avg_cost DECIMAL(10, 2);
    SELECT AVG(price) INTO avg_cost FROM Menu WHERE category = category_in;
    RETURN avg_cost;
END //

DELIMITER ;