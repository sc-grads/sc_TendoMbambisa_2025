
--Fetch the name of the products and brand name	
SELECT [product_name]
      ,[brand_name]
  FROM [BikeStores].[production].[products] p
  INNER JOIN [BikeStores].[production].[brands] b
  ON p.brand_id =b.brand_id;

  --fetch all products and their brand names 
  SELECT [product_name]
      ,[brand_name]
  FROM [BikeStores].[production].[products] p
  LEFT JOIN [BikeStores].[production].[brands] b
  ON p.brand_id =b.brand_id;
  --fetch all brands and their product names
   SELECT [product_name]
      ,[brand_name]
  FROM [BikeStores].[production].[products] p
  RIGHT JOIN [BikeStores].[production].[brands] b
  ON p.brand_id =b.brand_id;