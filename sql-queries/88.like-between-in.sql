/* 88. SQL Like - Between - In �le �al��mak */

/* Like �fadesiyle �al��mak */ 

SELECT * FROM Products

-- �smi Chai olan �r�n� getir: 
SELECT * FROM Products Where ProductName = 'Chai'

-- Mesela �r�n ad�n� hat�rlayamad�k, ch karakterleri ile ba�lad���n�
SELECT * FROM Products Where ProductName like 'Ch%'
-- Like ifadesi bu �ekilde kullan�l�r. ch'tan sonras� ne olursa olsun anlam�na gelir. 

-- �r�n ad�n�n ba�� �nemli de�il ama a karakterleri ile bitiyorsa
SELECT * FROM Products Where ProductName like '%a'

-- Ba�� sonu �nemli de�il i�erisinde ch ge�en b�t�n �r�nleri getir
SELECT * FROM Products Where ProductName like '%ch%'


/* Between ve In �fadeleriyle �al��mak */

-- Fiyat� 10 ile 50 aras�nda olan �r�nler. 
Select * From Products Where UnitPrice between 10 and 50

-- Fiyat� 10 ile 50 aras�nda olan �r�nleri fiyat olarak k���kten b�y��e s�rala. 
Select * From Products Where UnitPrice between 10 and 50 order by UnitPrice
-- between'de ilk de�er ve son de�er aral��a dahildir.

-- In ifadesi

--CategoryId'si 1 ya da 2 olan �r�nler
Select *from Products where CategoryID in (1,2)


--CategoryId'si 1 ya da 2 olan �r�nler
Select *from Products where CategoryID in (1,2) order by CategoryID