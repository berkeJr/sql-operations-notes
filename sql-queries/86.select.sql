SELECT * FROM Products 
-- The SELECT statement is used to select data from a database. 
-- The data returned is stored in a result table, called the result-set.
-- * all columns demek

/*Yani veri taban�nda bir de�i�iklik yapmayaca��m, olan veriden veriyi benim istedi�im �artlarda bana ver demek.*/

-- Sadece ProductId ve ProductName s�tunlar�n� getir:
SELECT ProductId, ProductName FROM Products


-- S�tunlara farkl� isimle �a��rarak getir. (Alias)
SELECT ProductId as Id , ProductName as Name FROM Products


-- S�tunlara farkl� isimle �a��rarak getir. (Alias) (as kullanmadan) (ayn� i�lem)
SELECT ProductId Id , ProductName Name FROM Products


-- Products tablosundan ProductId ve ProductName s�tununu getir. (Farkl� yol)
SELECT p.ProductID ,p.ProductName FROM Products p


-- �rne�in her bir product i�in b�t�n stoklar� satarsak ne kadar para kazan�r�z bunu ��renmek istiyoruz
-- Yani her bir product'�n UnitPrice s�tunu ile UnitsInStock s�tunu birbiriyle �arp�lmal� ve de ��kan sonu�lar b�t�n kay�tlar i�in toplanmal�d�r. 
SELECT p.ProductName, p.UnitsInStock * p.UnitPrice as Total FROM Products p


-- 2 metinsel ifade olan s�tunlar� yanyana yazd�ral�m
SELECT p.ProductName + ' ' + p.QuantityPerUnit FROM Products p


-- Tabloda olmayan bir verinin getirilmesi
SELECT 9*8 as Sonuc