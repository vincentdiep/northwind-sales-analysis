SELECT ProductName,
	p.UnitPrice,
    SUM(od.UnitPrice * od.Quantity) AS Revenue,
    COUNT(DISTINCT o.OrderID) AS OrderCount,
    p.Discontinued
FROM Products p 
    JOIN [Order Details] od ON p.ProductID = od.ProductID
    JOIN Orders o ON o.OrderID = od.OrderID
GROUP BY p.ProductID
ORDER BY Revenue ASC
LIMIT 10;