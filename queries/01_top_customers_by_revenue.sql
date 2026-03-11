SELECT 
    CompanyName,
    SUM(od.UnitPrice * od.Quantity) AS Revenue,
    COUNT(DISTINCT o.OrderID) AS OrderCount,
    ROUND(SUM(od.UnitPrice * od.Quantity) / COUNT(DISTINCT o.OrderID), 2) AS AvgOrderValue
FROM Customers c 
    JOIN Orders o ON c.CustomerID = o.CustomerID
    JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY c.CustomerID, CompanyName
ORDER BY Revenue DESC
LIMIT 10;
