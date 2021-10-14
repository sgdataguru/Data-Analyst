SELECT SUM(AmountExcludingTax) AS TotalSales, YEAR(TransactionDate) AS TransactionYear, MONTH(TransactionDate) AS TransactionMonth, 1 AS KPIstatus, 50000000 AS KPIgoal
    FROM Sales.CustomerTransactions
    WHERE YEAR(TransactionDate) = 2016
    GROUP BY YEAR(TransactionDate), MONTH(TransactionDate)
    ORDER BY MONTH(TransactionDate)
;