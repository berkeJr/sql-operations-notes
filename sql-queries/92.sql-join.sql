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
/* 
ürünün ismi: Products tablosunda
hangi tarihte sipariþ aldýk: Orders tablosunda
ne kadar para kazandýk: UnitPrice * Quantity: [Order Details] tablosunda
*/
Select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o 
on od.OrderID = o.OrderID

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
on od.OrderID = o.OrderID
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

/* left'in anlamý þu: soldaki tabloda olup saðdaki tabloda olmayalarý da getir. */ 


/* Right Join ile Çalýþmak*/

-- right join: saðdaki tabloda olup soldaki tabloda olmayanlarý da getir

-- Müþterimiz olup henüz satýþ yapmamýþlar 
Select * from Orders o right join Customers c 
on o.CustomerID = c.CustomerID 
where o.CustomerID is null 

/*Full Join ile Çalýþmak*/

/*
Peki full outer join ya da full join ne demek? Öncelikle inner join'de 2 tablodan eþleþenleri getiriyordu. 
left join'de soldaki tabloda olup saðda olmayanlarý getiriyordu. right join'de saðdaki tabloda olup soldaki 
tabloda olmayanlarý getiriyordu. full join'de ise inner join olanlarý da, left join olanlarý da, right join 
olanlarý da getiriyor.
*/

-- Sipariþi olan müþterilerin sayýsý: 830 kayýt. Not: Bir müþterinin birden fazla olabilir.
Select * from Customers c inner join Orders o
on c.CustomerID = o.CustomerID

-- Inner joinle gelenler + Müþteri olup sipariþi olmayanlarda geliyor. (830 + 2) = 830 kayýt
Select * from Customers c left join Orders o 
on c.CustomerID = o.CustomerID

-- Inner joinle gelenler + Sipariþi olup müþteri olmayanlar da geliyor. (830 + 0) = 830 kayýt
Select * from Customers c right join Orders o 
on c.CustomerID = o.CustomerID

-- Full join ise: inner + left + right = (830 + 2 + 0) = 832 kayýt
Select * from Customers c full join Orders o 
on c.CustomerID = o.CustomerID
