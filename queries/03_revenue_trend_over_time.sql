SELECT strftime('%Y-%m', OrderDate) AS YearMonth,
	SUM(od.UnitPrice * od.Quantity) AS Revenue
FROM [Order Details] od
	JOIN Orders o ON od.OrderID = o.OrderID
GROUP BY YearMonth
ORDER BY YearMonth ASC;