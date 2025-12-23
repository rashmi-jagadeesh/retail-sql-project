INSERT INTO Customers (CustomerID, FullName, Email, City, CreatedDate) VALUES
(1, 'Rashmi Mamidi', 'rashmi@example.com', 'London', '2025-01-10'),
(2, 'Jagadeesh Pinjala', 'jagadeesh@example.com', 'London', '2025-02-05'),
(3, 'Asha Rao', 'asha@example.com', 'Birmingham', '2025-02-20'),
(4, 'Kiran Kumar', 'kiran@example.com', 'Manchester', '2025-03-01');

INSERT INTO Products (ProductID, ProductName, Category, UnitPrice) VALUES
(101, 'Laptop Sleeve', 'Accessories', 19.99),
(102, 'Wireless Mouse', 'Accessories', 24.50),
(103, 'Mechanical Keyboard', 'Accessories', 69.00),
(104, 'Monitor 24 inch', 'Electronics', 149.99),
(105, 'USB-C Hub', 'Electronics', 39.99);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, Status) VALUES
(1001, 1, '2025-12-01', 'Completed'),
(1002, 2, '2025-12-03', 'Completed'),
(1003, 1, '2025-12-10', 'Completed'),
(1004, 3, '2025-12-11', 'Cancelled'),
(1005, 4, '2025-12-15', 'Completed');

INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 1001, 102, 1, 24.50),
(2, 1001, 105, 1, 39.99),
(3, 1002, 104, 1, 149.99),
(4, 1002, 101, 2, 19.99),
(5, 1003, 103, 1, 69.00),
(6, 1003, 102, 1, 24.50),
(7, 1004, 105, 1, 39.99),
(8, 1005, 104, 2, 149.99);
