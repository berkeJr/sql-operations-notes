/* Join'lerle �al��mak */

/* Inner Join ile �al��mak*/

Select * From Products

Select * From Categories

-- Products ve Categories tablolar�n�n Join'lerinden (ortak noktalar�ndan) se�
Select * from Products inner join Categories
on Products.CategoryID = Categories.CategoryID

-- Products ve Categories tablolar�n�n Join'lerinden (ortak noktalar�ndan) se�
-- Ayr�ca di�er sql sorgular�n� da ekleyebiliriz.
Select * from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice > 20

-- Products ve Categories tablolar�n�n Join'lerinden (ortak noktalar�ndan) se�
-- Ayr�ca di�er sql sorgular�n� da ekleyebiliriz. 
Select * from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice > 20
order by Products.UnitPrice

-- Products ve Categories tablolar�n�n Join'lerinden (ortak noktalar�ndan) se�
-- Ayr�ca di�er sql sorgular�n� da ekleyebiliriz.
Select * from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice > 20
order by Categories.CategoryID

-- Sorgumuzu bu �ekilde de k�saltabiliriz.
Select * from Products p inner join Categories c
on p.CategoryID = c.CategoryID
where p.UnitPrice > 20
order by c.CategoryID


/* Birden �ok Tabloyla Join */

/* 
�r�n�n ismi: Products
Hangi Tarihte Sipari� Ald�k: Orders
Ne kadar para kazand�k: [Order Details]
*/ 

Select * From Products

Select * from Orders

Select * from [Order Details]

-- Peki bu 3 tabloyu nas�l join ederiz?

-- 2 tablo join hat�rlayal�m (ortak kolonlar se�ilir.)
Select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID 


-- 3 tablo join
/* 
�r�n�n ismi: Products tablosunda
hangi tarihte sipari� ald�k: Orders tablosunda
ne kadar para kazand�k: UnitPrice * Quantity: [Order Details] tablosunda
*/
Select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o 
on od.OrderID = o.OrderID

/*
Products ile Order Details'i birle�tiren: ProductId
Order Details ile Orders'� birle�tiren: OrderId
Bu sorgu sonras� sadece e�le�enler gelir. 
*/


-- Biz asl�nda ProductName, OrderDate, ve Kazan�'�(Quantity * Unit Price) merak ediyorsak
Select p.ProductName, o.OrderDate, od.quantity * od.UnitPrice as Total 
from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o 
on od.OrderID = o.OrderID
order by p.ProductName, o.OrderDate

/* Left Join �le �al��mak */

-- Mesela sat���n� daha �nce hi� yapmad���m�z �r�nler nelerdir? Yani biz sto�umuzda hangi �r�n� satam�yoruz?
-- Yani satamad���m�z �r�nleri g�rmek istiyoruz. 

-- inner'� hat�rlayal�m
select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
-- bu bize e�le�en b�t�n hepsini getirir.

select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID
where od.ProductID is null 
-- bo� kay�t geldi, yani satamad���m�z hi� bir �r�n yok. 

-- Hi� sat�� yapamad���m�z m��terilerimizi g�rmek istiyorsak:
select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null 
-- 2 tane kay�t geldi, yani 2 m��teriye daha �nce hi� sat�� yapamam���z

/* left'in anlam� �u: soldaki tabloda olup sa�daki tabloda olmayalar� da getir. */ 


/* Right Join ile �al��mak*/

-- right join: sa�daki tabloda olup soldaki tabloda olmayanlar� da getir

-- M��terimiz olup hen�z sat�� yapmam��lar 
Select * from Orders o right join Customers c 
on o.CustomerID = c.CustomerID 
where o.CustomerID is null 

/*Full Join ile �al��mak*/

/*
Peki full outer join ya da full join ne demek? �ncelikle inner join'de 2 tablodan e�le�enleri getiriyordu. 
left join'de soldaki tabloda olup sa�da olmayanlar� getiriyordu. right join'de sa�daki tabloda olup soldaki 
tabloda olmayanlar� getiriyordu. full join'de ise inner join olanlar� da, left join olanlar� da, right join 
olanlar� da getiriyor.
*/

-- Sipari�i olan m��terilerin say�s�: 830 kay�t. Not: Bir m��terinin birden fazla olabilir.
Select * from Customers c inner join Orders o
on c.CustomerID = o.CustomerID

-- Inner joinle gelenler + M��teri olup sipari�i olmayanlarda geliyor. (830 + 2) = 830 kay�t
Select * from Customers c left join Orders o 
on c.CustomerID = o.CustomerID

-- Inner joinle gelenler + Sipari�i olup m��teri olmayanlar da geliyor. (830 + 0) = 830 kay�t
Select * from Customers c right join Orders o 
on c.CustomerID = o.CustomerID

-- Full join ise: inner + left + right = (830 + 2 + 0) = 832 kay�t
Select * from Customers c full join Orders o 
on c.CustomerID = o.CustomerID
