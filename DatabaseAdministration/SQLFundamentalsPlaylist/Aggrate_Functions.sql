SELECT 
    SUM(list_price) AS SUM,
	AVG(list_price) AS AVG,
	MAX(list_price) AS Max,
	Min(list_Price) AS Min
  FROM [BikeStores].[sales].[order_items]

