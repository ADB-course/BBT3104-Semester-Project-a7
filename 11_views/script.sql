-- Write your SQL code here
-- Write your SQL code here

CREATE VIEW ReservationSummary AS
SELECT 
    r.reservation_id,
    c.customer_name, 
    c.customer_contact, 
    r.reservation_timeid
JOIN Tables t ON r.table_id = t.table_id;



-- View: Customer Order Summary
CREATE VIEW CustomerOrderSummary AS
SELECT 
    c.customer_name, 
    c.customer_contact,
    o.order_id, 
    o.order_timestamp, 
    o.total_amount,
    p.payment_date, 
    p.amount, 
    p.payment_method  --  Assuming PaymentMethod table linked to Payment 
FROM Order_Table o
JOIN Customers c ON o.customer_id = c.customer_id
