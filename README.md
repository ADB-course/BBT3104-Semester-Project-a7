[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/fbNyN1as)
# BBT3104: Advanced Database Sytems Semester Project

| **Key**                                                               | Value                                                                                                                                                                              |
|---------------|---------------------------------------------------------|
| **Name of Business Chosen for the Case Study**                                                       | CJ's Restaurant|
| **Industry**                                                       | Hospitality Industry|
| **Group Name**                                                               | A7 |
| **Semester Duration**                                                 | 19<sup>th</sup> August - 25<sup>th</sup> November 2024                                                                                                                       |

# Cause-and-Effect Diagram

![Screenshot 2024-11-21 205533](https://github.com/user-attachments/assets/45a4aade-6b2a-4270-868a-ad869626df15)

# Enhanced Entity Relationship Diagram (EERD)
![image](https://github.com/user-attachments/assets/0cc5482c-2b05-4162-875c-0c0e824435d1)
![image](https://github.com/user-attachments/assets/31934031-c0e7-4f06-b797-d8ec2c60be10)


# Database Schema
1NF: First Normal Form

Menu
Menu_ID (PK)
Description
Cost
Ingredient
Category
Supplier
Supplier_ID (PK)
Item_Description
Supply_Frequency
Payment_Method
Payment_Date
Payment_Status
Order_Status
Reservation
Reservation_ID (PK)
Table_ID
Customer_ID
Customer_Name
Customer_Contact
Capacity
Reservation_Date
Department
Department_ID (PK)
Department_Name
Head_of_Department_ID
Budget_Allocated
Order
Order_ID (PK)
Customer_ID
Order_Date
Expected_Delivery_Date
Actual_Delivery_Date
Status
Total_Amount
Payment
Payment_ID (PK)
Payment_Date
Order_ID
Amount
Payment_Method
Payment_Status
Customer
Customer_ID (PK)
Customer_Name
Customer_Contact
Street_Address
City
Postal_Code
Delivery
Delivery_ID (PK)
Customer_ID
Delivery_Type
Item_ID
Employee_ID
Delivery_Status
Scheduled_Date
Employee
Employee_ID (PK)
Employee_Name
Position_ID
Hire_Date


2NF: Second Normal Form

Menu
Menu_ID (PK)
Description
Cost
Category
Menu_Ingredient
Menu_ID (FK)
Ingredient
Supplier
Supplier_ID (PK)
Item_Description
Supplier_Frequency
Supplier_ID (FK)
Frequency
Supplier_Payment
Supplier_ID (FK)
Payment_Method
Payment_Date
Payment_Status
Order_Status
Reservation
Reservation_ID (PK)
Table_ID
Customer_ID
Customer_Name
Customer_Contact
Capacity
Reservation_Date
Department
Department_ID (PK)
Department_Name
Head_of_Department_ID
Budget_Allocated
Order
Order_ID (PK)
Customer_ID
Order_Date
Expected_Delivery_Date
Actual_Delivery_Date
Status
Total_Amount
Payment
Payment_ID (PK)
Payment_Date
Order_ID
Amount
Payment_Method
Payment_Status
Customer
Customer_ID (PK)
Customer_Name
Customer_Contact
Street_Address
City
Postal_Code
Delivery
Delivery_ID (PK)
Customer_ID
Delivery_Type
Item_ID
Employee_ID
Delivery_Status
Scheduled_Date
Employee
Employee_ID (PK)
Employee_Name
Position_ID
Hire_Date


3NF: Third Normal Form

Menu
Menu_ID (PK)
Description
Cost
Category
Menu_Ingredient
Menu_ID (FK)
Ingredient
Supplier
Supplier_ID (PK)
Item_Description
Supplier_Frequency
Supplier_ID (FK)
Frequency
Supplier_Payment
Supplier_ID (FK)
Payment_Method
Payment_Date
Payment_Status
Order_Status
Reservation
Reservation_ID (PK)
Table_ID
Customer_ID
Customer_Name
Customer_Contact
Capacity
Reservation_Date
Department
Department_ID (PK)
Department_Name
Head_of_Department_ID
Budget_Allocated
Order
Order_ID (PK)
Customer_ID
Order_Date
Expected_Delivery_Date
Actual_Delivery_Date
Status
Total_Amount
Payment
Payment_ID (PK)
Payment_Date
Order_ID
Amount
Payment_Method
Payment_Status
Customer
Customer_ID (PK)
Customer_Name
Customer_Contact
Street_Address
City
Postal_Code
Delivery
Delivery_ID (PK)
Customer_ID
Delivery_Type
Item_ID
Employee_ID
Delivery_Status
Scheduled_Date
Employee
Employee_ID (PK)
Employee_Name
Position_ID
Hire_Date


BCNF: Boyce-Codd Normal Form

Menu
Menu_ID (PK)
Description
Cost
Category
Menu_Ingredient
Menu_ID (FK)
Ingredient
Supplier
Supplier_ID (PK)
Item_Description
Supplier_Frequency
Supplier_ID (FK)
Frequency
Supplier_Payment
Supplier_ID (FK)
Payment_Method
Payment_Date
Payment_Status
Order_Status
Reservation
Reservation_ID (PK)
Table_ID
Customer_ID
Customer_Name
Customer_Contact
Capacity
Reservation_Date
Department
Department_ID (PK)
Department_Name
Head_of_Department_ID
Budget_Allocated
Order
Order_ID (PK)
Customer_ID
Order_Date
Expected_Delivery_Date
Actual_Delivery_Date
Status
Total_Amount
Payment
Payment_ID (PK)
Payment_Date
Order_ID
Amount
Payment_Method
Payment_Status
Customer
Customer_ID (PK)
Customer_Name
Customer_Contact
Street_Address
City
Postal_Code
Delivery
Delivery_ID (PK)
Customer_ID
Delivery_Type
Item_ID
Employee_ID
Delivery_Status
Scheduled_Date
Employee
Employee_ID (PK)
Employee_Name
Position_ID
Hire_Date


4NF: Fourth Normal Form

Menu
Menu_ID (PK)
Description
Cost
Category
Menu_Ingredient
Menu_ID (FK)
Ingredient
Supplier
Supplier_ID (PK)
Item_Description
Supplier_Frequency
Supplier_ID (FK)
Frequency
Supplier_Payment
Supplier_ID (FK)
Payment_Method
Payment_Date
Payment_Status
Order_Status
Reservation
Reservation_ID (PK)
Table_ID
Customer_ID
Customer_Name
Customer_Contact
Capacity
Reservation_Date
Department
Department_ID (PK)
Department_Name
Head_of_Department_ID
Budget_Allocated
Order
Order_ID (PK)
Customer_ID
Order_Date
Expected_Delivery_Date
Actual_Delivery_Date
Status
Total_Amount
Payment
Payment_ID (PK)
Payment_Date
Order_ID
Amount
Payment_Method
Payment_Status
Customer
Customer_ID (PK)
Customer_Name
Customer_Contact
Street








# System Architecture
N-tier architecture
![Screenshot 2024-11-21 210515](https://github.com/user-attachments/assets/f279fb39-35b1-47b4-827d-3038d09f2908)

