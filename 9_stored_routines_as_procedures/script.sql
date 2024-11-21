
--Trigger to Retrieve Upcoming Reservations
DELIMITER $$ 

CREATE PROCEDURE GetUpcomingReservations (  
    IN startDate DATE,  
    IN endDate DATE  
)  
BEGIN  
    SELECT *  
    FROM Reservation  
    WHERE Reservation_Date BETWEEN startDate AND endDate  
    ORDER BY Reservation_Date;  
END //  

DELIMITER ;

-- Trigger to Retrieve Total Cost of Order
DELIMITER $$ 

CREATE PROCEDURE GetTotalCostOfOrder (  
    IN orderId INT  
)  
BEGIN  
    SELECT Total_Amount  
    FROM `Order`  
    WHERE Order_ID = orderId;  
END //  

DELIMITER ;