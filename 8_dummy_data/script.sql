-- Write your SQL code here
--Dummy Data 

-- Insert data into Menu  
INSERT INTO Menu (Menu_ID, Description, Cost, Category) VALUES  
(1, 'Cheeseburger', 10, 'Main Course'),  
(2, 'Caesar Salad', 7, 'Salad'),  
(3, 'Margherita Pizza', 12, 'Main Course'),  
(4, 'Chocolate Cake', 5, 'Dessert');  

-- Insert data into Menu_Ingredient  
INSERT INTO Menu_Ingredient (Menu_ID, Ingredient) VALUES  
(1, 'Beef Patty'),  
(1, 'Cheese'),  
(1, 'Lettuce'),  
(2, 'Romaine Lettuce'),  
(2, 'Caesar Dressing'),  
(3, 'Pizza Dough'),  
(3, 'Tomato Sauce'),  
(3, 'Mozzarella Cheese'),  
(4, 'Flour'),  
(4, 'Cocoa Powder');  

-- Insert data into Supplier  
INSERT INTO Supplier (Supplier_ID, Item_Description) VALUES  
(1, 'Beef'),  
(2, 'Vegetables'),  
(3, 'Dairy'),  
(4, 'Baking Supplies');  

-- Insert data into Supplier_Frequency  
INSERT INTO Supplier_Frequency (Supplier_ID, Frequency) VALUES  
(1, 7),  
(2, 14),  
(3, 30),  
(4, 60);  

-- Insert data into Supplier_Payment  
INSERT INTO Supplier_Payment (Supplier_ID, Payment_Method, Payment_Date, Payment_Status, Order_Status) VALUES  
(1, 1, '2024-11-01 10:00:00', 1, 1),  
(2, 2, '2024-11-05 10:00:00', 1, 1),  
(3, 1, '2024-11-10 10:00:00', 1, 1),  
(4, 2, '2024-11-15 10:00:00', 1, 1);  

-- Insert data into Reservation  
INSERT INTO Reservation (Reservation_ID, Table_ID, Customer_ID, Customer_Name, Customer_Contact, Capacity, Reservation_Date) VALUES  
(1, 1, 1, 'John Doe', '1234567890', 4, '2024-11-20 19:00:00'),  
(2, 2, 2, 'Jane Smith', '0987654321', 2, '2024-11-21 18:30:00'),  
(3, 3, 3, 'Alice Johnson', '5555555555', 6, '2024-11-22 20:00:00');  

-- Insert data into Department  
INSERT INTO Department (Department_ID, Department_Name, Head_of_Department_ID, Budget_Allocated) VALUES  
(1, 'Kitchen', NULL, 5000),  
(2, 'Service', NULL, 3000),  
(3, 'Management', NULL, 10000);  

-- Insert data into `Order`  
INSERT INTO `Order` (Order_ID, Customer_ID, Order_Date, Expected_Delivery_Date, Actual_Delivery_Date, Status, Total_Amount) VALUES  
(1, 1, '2024-11-15 10:00:00', '2024-11-20 10:00:00', NULL, 1, 50),  
(2, 2, '2024-11-16 10:00:00', '2024-11-21 10:00:00', NULL, 1, 30);  

-- Insert data into Payment  
INSERT INTO Payment (Payment_ID, Payment_Date, Order_ID, Amount, Payment_Method, Payment_Status) VALUES  
(1, '2024-11-15 11:00:00', 1, 50, 'Credit Card', 1),  
(2, '2024-11-16 11:00:00', 2, 30, 'Cash', 1);  

-- Insert data into Customer  
INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Contact, Street_Address, City, Postal_Code) VALUES  
(1, 'John Doe', '1234567890', '123 Elm St', 'Springfield', '12345'),  
(2, 'Jane Smith', '0987654321', '456 Oak St', 'Springfield', '12345'),  
(3, 'Alice Johnson', '5555555555', '789 Pine St', 'Springfield', '12345');  

-- Insert data into Delivery  
INSERT INTO Delivery (Delivery_ID, Customer_ID, Delivery_Type, Item_ID, Employee_ID, Delivery_Status, Scheduled_Date) VALUES  
(1, 1, 'Standard', 1, 1, 'Pending', '2024-11-20 10:00:00'),  
(2, 2, 'Express', 2, 2, 'Pending', '2024-11-21 10:00:00');  

-- Insert data into Employee  
INSERT INTO Employee (Employee_ID, Employee_Name, Position_ID, Hire_Date) VALUES  
(1, 'Bob Brown', 1, '2024-01-01'),  
(2, 'Sara White', 2, '2024-02-01');