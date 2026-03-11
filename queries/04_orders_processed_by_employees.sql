SELECT (FirstName || ' ' || LastName) AS EmployeeName,
    COUNT (DISTINCT o.OrderID) AS OrderCount,
    ROUND(SUM(od.UnitPrice * od.Quantity), 2) AS Revenue
FROM Employees e
    JOIN Orders o ON e.EmployeeID = o.EmployeeID
    JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY e.EmployeeID
ORDER BY OrderCount DESC;
