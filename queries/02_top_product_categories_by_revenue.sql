SELECT CategoryName,
        ROUND(SUM(od.UnitPrice * od.Quantity), 2) AS Revenue,
        COUNT(DISTINCT o.OrderID) AS OrderCount,
        COUNT(DISTINCT p.ProductID) AS ProductCount,
        ROUND(SUM(od.UnitPrice * od.Quantity) / 
            (SELECT SUM(UnitPrice * Quantity) FROM [Order Details]) * 100, 2) AS RevenueShare
FROM Orders o JOIN [Order Details] od ON od.OrderID = o.OrderID
            JOIN Products p on od.ProductID = p.ProductID
            JOIN Categories c on c.CategoryID = p.CategoryID
GROUP BY CategoryName
ORDER BY Revenue DESC;