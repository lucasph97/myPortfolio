SELECT TOP (1000) DimProd.[ProductKey]
      --,[ProductAlternateKey]
      --,DimProd.[ProductSubcategoryKey]
	  ,DimProdSub.[EnglishProductSubcategoryName] AS ProductSubCategoryName
      ,DimProd.[WeightUnitMeasureCode]
      ,DimProd.[SizeUnitMeasureCode]
      ,DimProd.[EnglishProductName] AS ProductName
      --,[SpanishProductName]
      --,[FrenchProductName]
      ,DimProd.[StandardCost]
      ,DimProd.[FinishedGoodsFlag]
      ,DimProd.[Color]
      ,DimProd.[SafetyStockLevel]
      --,[ReorderPoint]
      ,DimProd.[ListPrice]
      ,DimProd.[Size]
      ,DimProd.[SizeRange]
      ,DimProd.[Weight]
      ,DimProd.[DaysToManufacture]
      ,DimProd.[ProductLine]
      ,DimProd.[DealerPrice]
      ,DimProd.[Class]
      ,DimProd.[Style]
      ,DimProd.[ModelName]
      --,[LargePhoto]
      --,[EnglishDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      , ISNULL(DimProd.[Status], 'Outlined') AS [Status]
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] DimProd
  JOIN [AdventureWorksDW2022].[dbo].DimProductSubcategory as DimProdSub
	ON DimProd.ProductSubcategoryKey = DimProdSub.ProductSubcategoryKey
  WHERE ProductKey IN
	(SELECT DISTINCT(FactSales.ProductKey) 
		FROM [AdventureWorksDW2022].[dbo].FactInternetSales AS FactSales)
ORDER BY ProductKey