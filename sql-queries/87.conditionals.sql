SELECT * FROM Products

--Where koþulu

--CategoryId'si 1 olan ürünler
SELECT * FROM Products Where CategoryId = 1

--10'dan fazla stoðu olan ürünler
SELECT * FROM Products Where UnitsInStock>10

--10'dan büyük ya da 10'a eþit (en az 10 tane)
SELECT * FROM Products Where UnitsInStock>=10

--5'ten az stoðu olan ürünler
SELECT * FROM Products Where UnitsInStock<5

--Stokta kalmamýþ ürünler
SELECT * FROM Products Where UnitsInStock=0

--And Kullanýmý
--Stokta hiç kalmayan ama UnitsInOrder>0 olan (sipariþ edilen)
SELECT * FROM Products Where UnitsInStock=0 AND UnitsOnOrder>0

/* And koþulu þu anlama gelir: Where'den sonra yazýlan 2 koþulun da tutmasý (saðlanmasý) gerekir. */

-- Or ve Not ile çalýþmak
-- Stokta olmayan ya da sipariþi verilmeyen ürünler
SELECT * FROM Products Where UnitsInStock=0 or UnitsOnOrder=0

-- Ýsmi Chai olan ürünü bize getir.
SELECT * FROM Products Where ProductName = 'Chai'

-- Ýsmi Chai olmayan ürünleri bize getir.
SELECT * FROM Products Where NOT ProductName = 'Chai'

-- Chai dýþýnda olanlar ve stok adedi 0 olanlar
SELECT * FROM Products Where NOT ProductName = 'Chai' AND UnitsInStock=0


/* Sýralama Sorgularýyla Çalýþmak */

-- Veri Tabanýndaki sýrasýna göre
SELECT * FROM Products  

-- ProductName sütunundaki verileri alfabetik olarak sýralar.(metinsel ifadeler için)
SELECT * FROM Products order by ProductName

-- ProductName sütunundaki verileri alfabetik olarak tersten sýralar.(metinsel ifadeler için)
SELECT * FROM Products order by ProductName desc

-- ProductName sütunundaki verileri numerik olarak sýralar.(sayýsal ifadeler için) (küçükten büyüðe)
SELECT * FROM Products order by UnitPrice

-- ProductName sütunundaki verileri numerik olarak sýralar.(sayýsal ifadeler için) (büyükten küçüðe)
SELECT * FROM Products order by UnitPrice desc

/* asc = ascending (artan)  /   dsc = descending (azalan) */

-- Önce fiyata göre artan þekilde sýralar, ayný fiyattaki ürünleri alfabetik olarak sýralar
SELECT * FROM Products order by UnitPrice, ProductName 

-- Önce fiyata göre artan þekilde sýralar, ayný fiyattaki ürünleri alfabetik olarak tersten sýralar
SELECT * FROM Products order by UnitPrice, ProductName desc