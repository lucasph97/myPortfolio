SELECT [CustomerKey]
      ,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
     ,([FirstName] + ' ') + LastName as Name
	  --,[FirstName]
      --,[MiddleName]
      --,[LastName]
      --,[NameStyle]
      , DATEDIFF(year,  [BirthDate], GETDATE()) AS Age
      ,CASE WHEN [MaritalStatus] = 'S' THEN 'Single' ELSE 'Married' END AS MaritalStatus
      --,[Suffix]
      ,CASE WHEN [Gender] = 'M' THEN 'Male' ELSE 'Female' END AS Gender
      --,[EmailAddress]
      ,[YearlyIncome]
      ,[TotalChildren]
      ,[NumberChildrenAtHome] AS ChildrenAtHome
      ,[EnglishEducation] AS Education
      --,[SpanishEducation]
      --,[FrenchEducation]
      ,[EnglishOccupation] AS Occupation
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      ,[HouseOwnerFlag]
      ,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase]
      ,[CommuteDistance]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer]
  ORDER BY [CustomerKey]
