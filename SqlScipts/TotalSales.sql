SELECT SUM(AmountExcludingTax) AS TotalSales
	, SUM(TaxAmount) AS TaxCollected
	, YEAR(TransactionDate) AS TransactionYear
	, MONTH(TransactionDate) AS TransactionMonth
FROM Sales.CustomerTransactions
GROUP BY YEAR(TransactionDate), MONTH(TransactionDate)
;