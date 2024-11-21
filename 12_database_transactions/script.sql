-- Write your SQL code here
START TRANSACTION;  

-- Transaction 1: Add a new order   
INSERT INTO `Order` (Order_ID, Customer_ID, Order_Date, Expected_Delivery_Date, Status, Total_Amount)  
VALUES (1, 1, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY), 1, 100);  

--Transaction 2: Add a new payment
INSERT INTO Payment (Payment_ID, Payment_Date, Order_ID, Amount, Payment_Method, Payment_Status)  
VALUES (1, NOW(), 1, 100, 'Credit Card', 1);  

COMMIT;