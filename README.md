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
1NF

Removal of repeating groups Menu Entity Menu_ID (PK): INTEGER Description: VARCHAR(100) Cost: INTEGER Ingredient: VARCHAR(100) Category: VARCHAR(10) Supplier Entity Supplier_ID (PK): INTEGER Item_Description: VARCHAR(100) Supply_Frequency: TINYINT Payment_Method: VARCHAR(50) Payment_Date: TIMESTAMP Payment_Status: INTEGER Reservation Entity Reservation_ID (PK): INTEGER Table_ID: INTEGER Customer_ID: INTEGER Customer_Name: VARCHAR(100) Customer_Contact: VARCHAR(15) Capacity: INTEGER Reservation_Date: TIMESTAMP Department Entity Department_ID (PK): INTEGER Department_Name: VARCHAR(100) Head_of_Department_ID: INTEGER Budget_Allocated: INTEGER Order Entity Order_ID (PK): INTEGER Customer_ID: INTEGER Order_Date: TIMESTAMP Expected_Delivery_Date: TIMESTAMP Actual_Delivery_Date: TIMESTAMP Status: TINYINT Total_Amount: INTEGER Payment Entity Payment_ID (PK): INTEGER Payment_Date: TIMESTAMP Order_ID: INTEGER Amount: INTEGER Payment_Method: VARCHAR(50) Payment_Status: INTEGER Customer Entity Customer_ID (PK): INTEGER Customer_Name: VARCHAR(100) Customer_Contact: VARCHAR(15) Street_Address: VARCHAR(255) City: VARCHAR(255) Postal_Code: VARCHAR(255) Delivery Entity Delivery_ID (PK): INTEGER Customer_ID: INTEGER Delivery_Type: VARCHAR(30) Item_ID: INTEGER Employee_ID: INTEGER Delivery_Status: VARCHAR(20) Scheduled_Date: TIMESTAMP Employee Entity Employee_ID (PK): INTEGER Employee_Name: VARCHAR(100) Position_ID: INTEGER Hire_Date: TIMESTAMP

2NF Remove partial dependencies

Menu Entity Menu_ID (PK): VARCHAR Description: VARCHAR(100) Cost: INTEGER Ingredient: VARCHAR(100) Category: VARCHAR(10) Supplier Entity Supplier_ID (PK): VARCHAR(20) Item_Description: VARCHAR(100) Supply_frequence: TINYINT Payment_method: TINYINT Payment_date: TIMESTAMP Payment_Status: TINYINT Order_Status: TINYINT Reservation Entity Reservation_ID (PK): INTEGER Table_ID: INTEGER Customer_ID: INTEGER Customer_Name: VARCHAR(100) Customer_Contact: VARCHAR(15) Capacity: INTEGER Reservation_Date: TIMESTAMP

Department Entity Department_ID (PK): INTEGER Department_Name: VARCHAR(100) Head_of_Department_ID: INTEGER Budget_Allocated: INTEGER Order Entity Order_ID (PK): INTEGER Customer_ID: INTEGER Order_Date: TIMESTAMP Expected_Delivery_Date: TIMESTAMP Actual_Delivery_Date: TIMESTAMP Status: TINYINT Total_Amount: INTEGER

Payment Entity Payment_ID (PK): INTEGER Payment_Date: TIMESTAMP Order_ID: INTEGER Amount: INTEGER Payment_Method: VARCHAR(50) Payment_Status: INTEGER

Customer Entity Customer_ID (PK): INTEGER Customer_Name: VARCHAR(100) Customer_Contact: VARCHAR(15) Street_Address: VARCHAR(255) City: VARCHAR(255) Postal_Code: VARCHAR(255)

Delivery Entity Delivery_ID (PK): INTEGER Customer_ID: INTEGER Delivery_Type: VARCHAR(30) Item_ID: INTEGER Employee_ID: INTEGER Delivery_Status: VARCHAR(20) Scheduled_Date: TIMESTAMP

Employee Entity Employee_ID (PK): INTEGER Employee_Name: VARCHAR(100) Position_ID: INTEGER Hire_Date: TIMESTAMP

3NF Remove transitive dependencies (Affected relation: Supplier) Menu Entity Menu_ID (PK): INTEGER Description: VARCHAR(100) Cost: INTEGER Ingredient: VARCHAR(100) Category: VARCHAR(10)

Supplier Entity Supplier_ID (PK): INTEGER Item_Description: VARCHAR (100)

Supplier_Frequency Supplier_ID (FK): INTEGER Frequency: TINYINT

Supplier_Payment Supplier_ID (FK): INTEGER Payment_Method: TINYINT Payment_Date: TIMESTAMP Payment_Status: TINYINT Order_Status: TINYINT

Reservation Entity Reservation_ID (PK): INTEGER Table_ID: INTEGER Customer_ID: INTEGER Customer_Name: VARCHAR(100) Customer_Contact: VARCHAR(15) Capacity: INTEGER Reservation_Date: TIMESTAMP

Department Entity Department_ID (PK): INTEGER Department_Name: VARCHAR(100) Head_of_Department_ID: INTEGER Budget_Allocated: INTEGER

Order Entity Order_ID (PK): INTEGER Customer_ID: INTEGER Order_Date: TIMESTAMP Expected_Delivery_Date: TIMESTAMP Actual_Delivery_Date: TIMESTAMP Status: TINYINT Total_Amount: INTEGER

Payment Entity Payment_ID (PK): INTEGER Payment_Date: TIMESTAMP Order_ID: INTEGER Amount: INTEGER Payment_Method: VARCHAR(50) Payment_Status: INTEGER

Customer Entity Customer_ID (PK): INTEGER Customer_Name: VARCHAR(100) Customer_Contact: VARCHAR(15) Street_Address: VARCHAR(255) City: VARCHAR(255) Postal_Code: VARCHAR(255)

Delivery Entity Delivery_ID (PK): INTEGER Customer_ID: INTEGER Delivery_Type: VARCHAR(30) Item_ID: INTEGER Employee_ID: INTEGER Delivery_Status: VARCHAR(20) Scheduled_Date: TIMESTAMP

Employee Entity Employee_ID (PK): INTEGER Employee_Name: VARCHAR(100) Position_ID: INTEGER Hire_Date: TIMESTAMP

BCNF Ensure all determinants are candidate keys (No changes made from 3NF) Menu Entity Menu_ID (PK): INTEGER Description: VARCHAR(100) Cost: INTEGER Ingredient: VARCHAR(100) Category: VARCHAR(10)

Supplier Entity Supplier_ID (PK): INTEGER Item_Description: VARCHAR (100)

Supplier_Frequency Supplier_ID (FK): INTEGER Frequency: TINYINT

Supplier_Payment Supplier_ID (FK): INTEGER Payment_Method: TINYINT Payment_Date: TIMESTAMP Payment_Status: TINYINT Order_Status: TINYINT

Reservation Entity Reservation_ID (PK): INTEGER Table_ID: INTEGER Customer_ID: INTEGER Customer_Name: VARCHAR(100) Customer_Contact: VARCHAR(15) Capacity: INTEGER Reservation_Date: TIMESTAMP

Department Entity Department_ID (PK): INTEGER Department_Name: VARCHAR(100) Head_of_Department_ID: INTEGER Budget_Allocated: INTEGER

Order Entity Order_ID (PK): INTEGER Customer_ID: INTEGER Order_Date: TIMESTAMP Expected_Delivery_Date: TIMESTAMP Actual_Delivery_Date: TIMESTAMP Status: TINYINT Total_Amount: INTEGER

Payment Entity Payment_ID (PK): INTEGER Payment_Date: TIMESTAMP Order_ID: INTEGER Amount: INTEGER Payment_Method: VARCHAR(50) Payment_Status: INTEGER

Customer Entity Customer_ID (PK): INTEGER Customer_Name: VARCHAR(100) Customer_Contact: VARCHAR(15) Street_Address: VARCHAR(255) City: VARCHAR(255) Postal_Code: VARCHAR(255)

Delivery Entity Delivery_ID (PK): INTEGER Customer_ID: INTEGER Delivery_Type: VARCHAR(30) Item_ID: INTEGER Employee_ID: INTEGER Delivery_Status: VARCHAR(20) Scheduled_Date: TIMESTAMP

Employee Entity Employee_ID (PK): INTEGER Employee_Name: VARCHAR(100) Position_ID: INTEGER Hire_Date: TIMESTAMP

4NF Ensure every multi-determinant in a multi-valued dependency is a candidate key (Affected relation: Menu)

Menu Entity Menu_ID (PK): INTEGER Description: VARCHAR(100) Cost: INTEGER Category: VARCHAR(100)

Menu_Ingredient MEnu_ID(FK): INTEGER Ingredient: VARCHAR(100)

Supplier Entity Supplier_ID (PK): INTEGER Item_Description: VARCHAR (100)

Supplier_Frequency Supplier_ID (FK): INTEGER Frequency: TINYINT

Supplier_Payment Supplier_ID (FK): INTEGER Payment_Method: TINYINT Payment_Date: TIMESTAMP Payment_Status: TINYINT Order_Status: TINYINT

Reservation Entity Reservation_ID (PK): INTEGER Table_ID: INTEGER Customer_ID: INTEGER Customer_Name: VARCHAR(100) Customer_Contact: VARCHAR(15) Capacity: INTEGER Reservation_Date: TIMESTAMP

Department Entity Department_ID (PK): INTEGER Department_Name: VARCHAR(100) Head_of_Department_ID: INTEGER Budget_Allocated: INTEGER

Order Entity Order_ID (PK): INTEGER Customer_ID: INTEGER Order_Date: TIMESTAMP Expected_Delivery_Date: TIMESTAMP Actual_Delivery_Date: TIMESTAMP Status: TINYINT Total_Amount: INTEGER

Payment Entity Payment_ID (PK): INTEGER Payment_Date: TIMESTAMP Order_ID: INTEGER Amount: INTEGER Payment_Method: VARCHAR(50) Payment_Status: INTEGER

Customer Entity Customer_ID (PK): INTEGER Customer_Name: VARCHAR(100) Customer_Contact: VARCHAR(15) Street_Address: VARCHAR(255) City: VARCHAR(255) Postal_Code: VARCHAR(255)

Delivery Entity Delivery_ID (PK): INTEGER Customer_ID: INTEGER Delivery_Type: VARCHAR(30) Item_ID: INTEGER Employee_ID: INTEGER Delivery_Status: VARCHAR(20) Scheduled_Date: TIMESTAMP

Employee Entity Employee_ID (PK): INTEGER Employee_Name: VARCHAR(100) Position_ID: INTEGER Hire_Date: TIMESTAMP

5NF Ensure each projection in a join dependency includes a candidate key of the original relation (No changes made from 4NF) Menu Entity Menu_ID (PK): INTEGER Description: VARCHAR(100) Cost: INTEGER Category: VARCHAR(100)

Menu_Ingredient MEnu_ID(FK): INTEGER Ingredient: VARCHAR(100)

Supplier Entity Supplier_ID (PK): INTEGER Item_Description: VARCHAR (100)

Supplier_Frequency Supplier_ID (FK): INTEGER Frequency: TINYINT

Supplier_Payment Supplier_ID (FK): INTEGER Payment_Method: TINYINT Payment_Date: TIMESTAMP Payment_Status: TINYINT Order_Status: TINYINT

Reservation Entity Reservation_ID (PK): INTEGER Table_ID: INTEGER Customer_ID: INTEGER Customer_Name:VARCHAR(100) Customer_Contact:VARCHAR(15) Capacity: INTEGER Reservation_Date: TIMESTAMP

Department Entity Department_ID (PK): INTEGER Department_Name: VARCHAR(100) Head_of_Department_ID: INTEGER Budget_Allocated: INTEGER

Order Entity Order_ID (PK): INTEGER Customer_ID: INTEGER Order_Date: TIMESTAMP Expected_Delivery_Date: TIMESTAMP Actual_Delivery_Date: TIMESTAMP Status: TINYINT Total_Amount: INTEGER

Payment Entity Payment_ID (PK): INTEGER Payment_Date: TIMESTAMP Order_ID: INTEGER Amount: INTEGER Payment_Method: VARCHAR(50) Payment_Status: INTEGER

Customer Entity Customer_ID (PK): INTEGER Customer_Name: VARCHAR(100) Customer_Contact: VARCHAR(15) Street_Address: VARCHAR(255) City: VARCHAR(255) Postal_Code: VARCHAR(255)

Delivery Entity Delivery_ID (PK): INTEGER Customer_ID: INTEGER Delivery_Type: VARCHAR(30) Item_ID: INTEGER Employee_ID: INTEGER Delivery_Status: VARCHAR(20) Scheduled_Date: TIMESTAMP

Employee Entity Employee_ID (PK): INTEGER Employee_Name: VARCHAR(100) Position_ID: INTEGER Hire_Date: TIMESTAMP





# System Architecture
N-tier architecture
![Screenshot 2024-11-21 210515](https://github.com/user-attachments/assets/f279fb39-35b1-47b4-827d-3038d09f2908)

