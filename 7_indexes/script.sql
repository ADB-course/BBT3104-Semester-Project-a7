-- Write your SQL code here
Menu:
Menu_ID (PK): B+ tree index
Description: B+ tree index
Cost: B+ tree index
Category: B+ tree index

 Menu_Ingredient:
Menu_ID (FK): B+ tree index
Ingredient: B+ tree index

Supplier:
Supplier_ID (FK): B+ tree index
Item_Description: B+ tree index

Supplier_Frequency:
Supplier_ID (FK): B+ tree index
Frequency: Hash index

Supplier_Payment:
Supplier_ID (FK): B+ tree index
Payment_Method: Hash index
Payment_Date: B+ tree
Payment_Status: Hash index
Order_Status: Hash index

Reservation:
Reservation_ID (PK): B+ tree
Table_ID: B+ tree
Customer_ID: B+ tree
Customer_Name: B+ tree
Customer_Contact: B+ tree
Capacity: B+ tree
Reservation_Date: B+ tree

Department:
Department_ID (PK): B+ tree
Department_Name: B+ tree
Head_of_Department_ID: B+ tree
Budget_Allocated: B+ tree

Order:
Order_ID (PK): B+ tree
Customer_ID: B+ tree
Order_Date: B+ tree
Expected_Delivery_Date: B+ tree
Actual_Deliveru_Date: B+ tree
Status: Hash
Total_Amount: B+ tree

Payment:
Payment_ID (PK): B+ tree
Payment_Date: B+ tree
Order_ID: B+ tree
Amount: B+ tree
Payment_Method: Hash
Payment_Status: Hash

Customer:
Customer_ID (PK): B+ tree
Customer_Name: B+ tree
Customer_Contact: B+tree
Street_Address: B+ tree
City: B+ tree
Postal_Code: B+ tree

Delivery:
Delivery_ID (PK): B+ tree
Customer_ID: B+ tree
Delivery_Type: Hash
Item_ID: B+ tree
Employee_ID: B+ tree
Delivery_Status: Hash
Scheduled_Date: B+ tree

Employee:
Employee_ID (PK): B+ tree
Employee_Name: B+ tree
Position_ID: B+ tree
Hire_Date: B+ tree
