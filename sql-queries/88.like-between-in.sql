/* 88. SQL Like - Between - In Ýle Çalýþmak */

/* Like Ýfadesiyle Çalýþmak */ 

SELECT * FROM Products

-- Ýsmi Chai olan ürünü getir: 
SELECT * FROM Products Where ProductName = 'Chai'

-- Mesela ürün adýný hatýrlayamadýk, ch karakterleri ile baþladýðýný
SELECT * FROM Products Where ProductName like 'Ch%'
-- Like ifadesi bu þekilde kullanýlýr. ch'tan sonrasý ne olursa olsun anlamýna gelir. 

-- Ürün adýnýn baþý önemli deðil ama a karakterleri ile bitiyorsa
SELECT * FROM Products Where ProductName like '%a'

-- Baþý sonu önemli deðil içerisinde ch geçen bütün ürünleri getir
SELECT * FROM Products Where ProductName like '%ch%'


/* Between ve In Ýfadeleriyle Çalýþmak */

-- Fiyatý 10 ile 50 arasýnda olan ürünler. 
Select * From Products Where UnitPrice between 10 and 50

-- Fiyatý 10 ile 50 arasýnda olan ürünleri fiyat olarak küçükten büyüðe sýrala. 
Select * From Products Where UnitPrice between 10 and 50 order by UnitPrice
-- between'de ilk deðer ve son deðer aralýða dahildir.

-- In ifadesi

--CategoryId'si 1 ya da 2 olan ürünler
Select *from Products where CategoryID in (1,2)


--CategoryId'si 1 ya da 2 olan ürünler
Select *from Products where CategoryID in (1,2) order by CategoryID