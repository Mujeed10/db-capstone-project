ALTER TABLE `littlelemondm`.`staffinformation`
ADD COLUMN `Name` VARCHAR(255);


INSERT INTO `CustomerDetails` (`CustomerID`, `FirstName`, `LastName`, `PhoneNumber`)
VALUES
(1, 'MOLCQUEOE', 'YBH', '2633708237'),
(2, 'VTB', 'UCQJMH', '3362136248'),
(3, 'THHGCH', 'KNBAF', '4675625193'),
(4, 'BOHEWDBHBK', 'FJBQGWF', '5991062985'),
(5, 'LPLGEJ', 'WZL', '0338189570');

INSERT INTO `littlelemondm`.`staffinformation` (`StaffID`, `Position`,`HireDate`, `GrossSalary`, `Name`)
VALUES
(1, 'Cashier', '2021-01-08', 32979, 'John'),
(2, 'Chef', '2018-11-15',39662,  'Maria'),
(3, 'Manager','2019-04-12', 52369,  'Zoe'),
(4, 'Cashier', '2019-11-22',34281,  'Ethan'),
(5, 'Waiter', '2022-02-06',29247,  'Zoe');

INSERT INTO `littlelemondm`.`OrderDeliveryStatus` (`StatusID`, `DeliveryDate`, `DeliveryStatus`)
VALUES
(1, '2023-09-01', 'Out for delivery'),
(2, '2023-09-02', 'Pending'),
(3, '2023-09-02', 'Preparing'),
(4, '2023-09-02', 'Preparing'),
(5, '2023-09-02', 'Preparing');


INSERT INTO `littlelemondm`.`Orders` (OrderID, OrderDate, Quantity, StatusID, CustomerID, TotalCost)
VALUES
(1, '2023-09-02', 4, 2, 1, 205),
(2, '2023-09-02', 5, 1, 4, 171),
(3, '2023-09-01', 4, 3, 3, 207),
(4, '2023-09-01', 3, 1, 2, 366),
(5, '2023-09-02', 2, 2, 1, 459);

INSERT INTO `littlelemondm`.`Menu` (MenuID, Starters, Cuisines, Courses, Dessert, OrderID, BookingID, StaffID)
VALUES
(1, 'Bruschetta', 'Indian', 'Main Course', 'Brownie', 1, 4, 2),
(2, 'Bruschetta', 'Italian', 'Entree', 'Cheesecake', 3, 1, 3),
(3, 'Spring Rolls', 'French', 'Main Course', 'Ice Cream', 5, 2, 1),
(4, 'Soup', 'Chinese', 'Main Course', 'Brownie', 2, 2, 1),
(5, 'Spring Rolls', 'American', 'Main Course', 'Pudding', 4, 3, 3);






