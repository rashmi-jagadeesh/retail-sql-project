-- Q1: Total revenue (Completed orders only)
SELECT
    SUM(oi.Quantity * oi.UnitPrice) AS TotalRevenue
FROM Orders o
JOIN OrderItems oi ON o.OrderID = oi.OrderID
WHERE o.Status = 'Completed';

-- Q2: Top products by revenue
SELECT TOP 3
    p.ProductName,
    SUM(oi.Quantity * oi.UnitPrice) AS Revenue
FROM OrderItems oi
JOIN Products p ON oi.ProductID = p.ProductID
JOIN Orders o ON o.OrderID = oi.OrderID
WHERE o.Status = 'Completed'
GROUP BY p.ProductName
ORDER BY Revenue DESC;

-- Q3: Repeat customers (2+ completed orders)
SELECT
    c.CustomerID,
    c.FullName,
    COUNT(*) AS CompletedOrders
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.Status = 'Completed'
GROUP BY c.CustomerID, c.FullName
HAVING COUNT(*) >= 2
ORDER BY CompletedOrders DESC;
