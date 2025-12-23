SELECT
    YEAR(o.OrderDate) AS SalesYear,
    MONTH(o.OrderDate) AS SalesMonth,
    SUM(oi.Quantity * oi.UnitPrice) AS Revenue
FROM Orders o
JOIN OrderItems oi
    ON o.OrderID = oi.OrderID
WHERE o.Status = 'Completed'
GROUP BY YEAR(o.OrderDate), MONTH(o.OrderDate)
ORDER BY SalesYear, SalesMonth;
