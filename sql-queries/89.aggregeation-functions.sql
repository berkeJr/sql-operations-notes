/* 89.Aggregeation Fonksiyonlar�yla �al��mak */

/* Count Fonksiyonu ve Detaylar� */

SELECT * FROM Products

SELECT * FROM Customers

SELECT * FROM [Order Details]

-- Products tablomuzda ka� adet kay�t var? 
Select Count(*) From Products

-- Products tablomuzda ka� adet kay�t var? 
Select Count(*) as TotalProducts From Products

-- Products tablomuzda ka� adet kay�t var? 
Select Count(*) as [Total Products] From Products

-- Toplam ka� tane �r�n ismi var 
select Count(ProductName) as Total from Products

-- Customers tablomuzda ka� tane kay�t var? = Ka� m��terimiz var? 
Select Count(*) as Total from Customers -- 91

-- Customers tablomuzda toplam ka� tane Region var
Select Count(Region) from Customers  -- 31 

-- Count Fonksiyonlar� Null De�erleri Saymaz


/* Min - Max - Rand - Sum - Avg Fonksiyonlar� ile �al��mak */

-- Min fonksiyonu
-- Bizde en ucuz �r�n fiyat� nedir?
Select Min(UnitPrice) from Products  -- 2.50 (Birden fazla 2.50 varsa da tek bir sonu� d�nd�r�r.)

-- Bizde en pahal� �r�n fiyat� nedir?
Select Max(UnitPrice) from Products  -- 263.50

-- Bizde Average Unit Price nedir?
Select Avg(UnitPrice) from Products  -- 28,8663

-- Order Details tablosunda her bir �r�nden bir tane satsayd�k toplam ne kadar para kazan�rd�k
Select Sum(UnitPrice) from [Order Details]

-- Order Details tablosunda her bir �r�nden bir tane satsayd�k toplam ne kadar para kazan�rd�k
Select Sum(UnitPrice) as [Total Earnings] from [Order Details]

-- Order Details tablosunda b�t�n sipari�lerden toplam ne kadar para kazand�k
Select Sum(UnitPrice * Quantity) as [Total Earnings] from [Order Details]

-- Rand() fonksiyonu bize rastgele say� �retmeye yar�yor. 
Select Rand()