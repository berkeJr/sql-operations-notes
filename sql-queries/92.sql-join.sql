/* Join'lerle Çalýþmak */

/* Inner Join ile Çalýþmak*/

Select * From Products

Select * From Categories

-- Products ve Categories tablolarýnýn Join'lerinden (ortak noktalarýndan) seç
Select * from Products inner join Categories
on Products.CategoryID = Categories.CategoryID

-- Products ve Categories tablolarýnýn Join'lerinden (ortak noktalarýndan) seç
-- Ayrýca diðer sql sorgularýný da ekleyebiliriz.
Select * from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice > 20

-- Products ve Categories tablolarýnýn Join'lerinden (ortak noktalarýndan) seç
-- Ayrýca diðer sql sorgularýný da ekleyebiliriz. 
Select * from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice > 20
order by Products.UnitPrice

-- Products ve Categories tablolarýnýn Join'lerinden (ortak noktalarýndan) seç
-- Ayrýca diðer sql sorgularýný da ekleyebiliriz.
Select * from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice > 20
order by Categories.CategoryID

-- Sorgumuzu bu þekilde de kýsaltabiliriz.
Select * from Products p inner join Categories c
on p.CategoryID = c.CategoryID
where p.UnitPrice > 20
order by c.CategoryID


/* Birden Çok Tabloyla Join */

/* 
Ürünün ismi: Products
Hangi Tarihte Sipariþ Aldýk: Orders
Ne kadar para kazandýk: [Order Details]
*/ 

Select * From Products

Select * from Orders

Select * from [Order Details]

-- Peki bu 3 tabloyu nasýl join ederiz?

-- 2 tablo join hatýrlayalým (ortak kolonlar seçilir.)
Select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID 

-- 3 tablo join
Select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o 
on od.OrderID = o.OrderID
/* 
	
*/


/*
Products ile Order Details'i birleþtiren: ProductId
Order Details ile Orders'ý birleþtiren: OrderId
Bu sorgu sonrasý sadece eþleþenler gelir. 
*/


-- Biz aslýnda ProductName, OrderDate, ve Kazanç'ý(Quantity * Unit Price) merak ediyorsak
Select p.ProductName, o.OrderDate, od.quantity * od.UnitPrice as Total 
from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o 
on o.OrderID = od.OrderID
order by p.ProductName, o.OrderDate

/* Left Join Ýle Çalýþmak */

-- Mesela satýþýný daha önce hiç yapmadýðýmýz ürünler nelerdir? Yani biz stoðumuzda hangi ürünü satamýyoruz?
-- Yani satamadýðýmýz ürünleri görmek istiyoruz. 

-- inner'ý hatýrlayalým
select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
-- bu bize eþleþen bütün hepsini getirir.

select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID
where od.ProductID is null 
-- boþ kayýt geldi, yani satamadýðýmýz hiç bir ürün yok. 

-- Hiç satýþ yapamadýðýmýz müþterilerimizi görmek istiyorsak:
select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null 
-- 2 tane kayýt geldi, yani 2 müþteriye daha önce hiç satýþ yapamamýþýz

/* left'in anlamý þu: soldaki tabloda olup saðdaki tabloda olmayanlarý da getir. */ 
