CREATE VIEW vw_OrderRevenue AS
SELECT
    o.OrderID,
    o.OrderDate,
    o.Status,
    o.CustomerID,
    SUM(oi.Quantity * oi.UnitPrice) AS OrderRevenue
FROM Orders o
JOIN OrderItems oi
    ON o.OrderID = oi.OrderID
GROUP BY o.OrderID, o.OrderDate, o.Status, o.CustomerID;
