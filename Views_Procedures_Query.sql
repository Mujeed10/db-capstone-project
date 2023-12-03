CREATE VIEW OrdersView AS
SELECT OrderID, Quantity, TotalCost
FROM orders
WHERE Quantity > 2;


SELECT cust.CustomerID, cust.LastName, orders.OrderID, orders.TotalCost, menu.Courses
FROM customerDetails cust INNER JOIN orders orders
ON cust.CustomerID = orders.customerID
INNER JOIN menu ON orders.OrderID = menu.OrderID 
WHERE TotalCost > 150  ORDER BY TotalCost;

SELECT MenuID
FROM Menu
WHERE Menu.OrderID = ANY (
    SELECT Orders.OrderID
    FROM Orders 
    GROUP BY Orders.OrderID
    HAVING COUNT(*) > 2
);


CREATE PROCEDURE GetMaxQuantity()
SELECT max(quantity) AS "MaxQuantityOrder" FROM orders





PREPARE GetOrderDetail FROM 
"SELECT OrderID, Quantity, TotalCost FROM Orders WHERE CustomerID = ?";

DELIMITER //

CREATE PROCEDURE CancelOrder(IN orderId INT)
BEGIN
    DELETE FROM Orders WHERE OrderID = orderId;
END //

DELIMITER ;


DELIMITER //
CREATE PROCEDURE LittleLemonDBCancelBooking(IN booking_id_to_cancel INT)
BEGIN
    -- Delete the booking record
    DELETE FROM `littlelemondm`.`Bookings`
    WHERE `BookingID` = booking_id_to_cancel;

    SELECT CONCAT('Booking ', booking_id_to_cancel, ' cancelled') AS 'Confirmation';
END;
//
DELIMITER ;


