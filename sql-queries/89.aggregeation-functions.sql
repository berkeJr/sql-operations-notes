/* 89.Aggregeation Fonksiyonlarýyla Çalýþmak */

/* Count Fonksiyonu ve Detaylarý */

SELECT * FROM Products

SELECT * FROM Customers

SELECT * FROM [Order Details]

-- Products tablomuzda kaç adet kayýt var? 
Select Count(*) From Products

-- Products tablomuzda kaç adet kayýt var? 
Select Count(*) as TotalProducts From Products

-- Products tablomuzda kaç adet kayýt var? 
Select Count(*) as [Total Products] From Products

-- Toplam kaç tane ürün ismi var 
select Count(ProductName) as Total from Products

-- Customers tablomuzda kaç tane kayýt var? = Kaç müþterimiz var? 
Select Count(*) as Total from Customers -- 91

-- Customers tablomuzda toplam kaç tane Region var
Select Count(Region) from Customers  -- 31 

-- Count Fonksiyonlarý Null Deðerleri Saymaz


/* Min - Max - Rand - Sum - Avg Fonksiyonlarý ile Çalýþmak */

-- Min fonksiyonu
-- Bizde en ucuz ürün fiyatý nedir?
Select Min(UnitPrice) from Products  -- 2.50 (Birden fazla 2.50 varsa da tek bir sonuç döndürür.)

-- Bizde en pahalý ürün fiyatý nedir?
Select Max(UnitPrice) from Products  -- 263.50

-- Bizde Average Unit Price nedir?
Select Avg(UnitPrice) from Products  -- 28,8663

-- Order Details tablosunda her bir üründen bir tane satsaydýk toplam ne kadar para kazanýrdýk
Select Sum(UnitPrice) from [Order Details]

-- Order Details tablosunda her bir üründen bir tane satsaydýk toplam ne kadar para kazanýrdýk
Select Sum(UnitPrice) as [Total Earnings] from [Order Details]

-- Order Details tablosunda bütün sipariþlerden toplam ne kadar para kazandýk
Select Sum(UnitPrice * Quantity) as [Total Earnings] from [Order Details]

-- Rand() fonksiyonu bize rastgele sayý üretmeye yarýyor. 
Select Rand()