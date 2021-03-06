/****** 

US Sales by Year  

select * from dbo.v_US_Sales

Note:  Special types like Money are not recognized by R and get corrupted in transformations.

drop view dbo.v_US_Sales 

******/

alter view dbo.v_US_Sales as 
SELECT  
	   Year([OrderDate]) as SalesYear
      ,cast([OrderDate] as datetime) as OrderDate
      ,[OrderQuantity]
      ,cast([UnitPrice] as integer) as UnitPrice
      ,cast([SalesAmount] as integer) as SalesAmount
      ,cast([TaxAmt] as integer) as TaxAmt
      ,cast([ShipDate] as datetime) as ShipDate
	  ,[SalesTerritoryGroup]
	  ,[SalesTerritoryRegion]
	  ,[SalesTerritoryCountry]
  FROM [AdventureworksDW2016].[dbo].[FactResellerSales]  s
  join [AdventureworksDW2016].[dbo].[DimSalesTerritory]  t
  on (s.SalesTerritoryKey = t.SalesTerritoryKey) 
  where [CurrencyKey] = 100
