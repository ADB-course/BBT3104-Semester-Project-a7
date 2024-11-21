-- Write your SQL code here
--Tables without check constraints
CREATE TABLE Menu (  
    Menu_ID INT PRIMARY KEY,  
    Description VARCHAR(100),  
    Cost INT,  
    Category VARCHAR(100)  
) ENGINE=InnoDB;  

CREATE TABLE Menu_Ingredient (  
    Menu_ID INT,  
    Ingredient VARCHAR(100),  
    PRIMARY KEY (Menu_ID, Ingredient),  
    FOREIGN KEY (Menu_ID) REFERENCES Menu(Menu_ID)  
) ENGINE=InnoDB;  

CREATE TABLE Supplier (  
    Supplier_ID INT PRIMARY KEY,  
    Item_Description VARCHAR(100)  
) ENGINE=InnoDB;  

CREATE TABLE Supplier_Frequency (  
    Supplier_ID INT,  
    Frequency TINYINT,  
    PRIMARY KEY (Supplier_ID, Frequency),  
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)  
) ENGINE=InnoDB;  

CREATE TABLE Supplier_Payment (  
    Supplier_ID INT,  
    Payment_Method TINYINT,  
    Payment_Date TIMESTAMP,  
    Payment_Status TINYINT,  
    Order_Status TINYINT,  
    PRIMARY KEY (Supplier_ID, Payment_Date),  
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)  
) ENGINE=InnoDB;  

CREATE TABLE Reservation (  
    Reservation_ID INT PRIMARY KEY,  
    Table_ID INT,  
    Customer_ID INT,  
    Customer_Name VARCHAR(100),  
    Customer_Contact VARCHAR(15),  
    Capacity INT,  
    Reservation_Date TIMESTAMP  
) ENGINE=InnoDB;  

CREATE TABLE Department (  
    Department_ID INT PRIMARY KEY,  
    Department_Name VARCHAR(100),  
    Head_of_Department_ID INT,  
    Budget_Allocated INT  
) ENGINE=MyISAM;  

CREATE TABLE `Order` (  
    Order_ID INT PRIMARY KEY,  
    Customer_ID INT,  
    Order_Date TIMESTAMP,  
    Expected_Delivery_Date TIMESTAMP,  
    Actual_Delivery_Date TIMESTAMP,  
    Status TINYINT,  
    Total_Amount INT  
) ENGINE=InnoDB;  

CREATE TABLE Payment (  
    Payment_ID INT PRIMARY KEY,  
    Payment_Date TIMESTAMP,  
    Order_ID INT,  
    Amount INT,  
    Payment_Method VARCHAR(50),  
    Payment_Status INT,  
    FOREIGN KEY (Order_ID) REFERENCES `Order`(Order_ID)  
) ENGINE=InnoDB;  

CREATE TABLE Customer (  
    Customer_ID INT PRIMARY KEY,  
    Customer_Name VARCHAR(100),  
    Customer_Contact VARCHAR(15),  
    Street_Address VARCHAR(255),  
    City VARCHAR(255),  
    Postal_Code VARCHAR(255)  
) ENGINE=InnoDB;  

CREATE TABLE Delivery (  
    Delivery_ID INT PRIMARY KEY,  
    Customer_ID INT,  
    Delivery_Type VARCHAR(30),  
    Item_ID INT,  
    Employee_ID INT,  
    Delivery_Status VARCHAR(20),  
    Scheduled_Date TIMESTAMP,  
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)  
) ENGINE=InnoDB;  

CREATE TABLE Employee (  
    Employee_ID INT PRIMARY KEY,  
    Employee_Name VARCHAR(100),  
    Position_ID INT,  
    Hire_Date TIMESTAMP  
) ENGINE=InnoDB;