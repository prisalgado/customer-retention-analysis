-- Which customers made the highest number of purchases?

SELECT CustomerID,
COUNT(DISTINCT InvoiceNo) AS number_purchases
FROM ecommerce
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY number_purchases DESC;

-- Which customers generated the highest revenue per purchase?

SELECT CustomerID,
SUM(Quantity * UnitPrice) / COUNT(DISTINCT InvoiceNo) AS revenue_per_purchase
FROM ecommerce
WHERE CustomerID IS NOT NULL
AND Quantity > 0
GROUP BY CustomerID
ORDER BY revenue_per_purchase DESC;

-- Which customers show the strongest loyalty patterns?

SELECT CustomerID,
COUNT(DISTINCT InvoiceNo) AS purchase_frequency
FROM ecommerce
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY purchase_frequency DESC;