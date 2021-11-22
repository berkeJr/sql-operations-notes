SELECT * FROM Products 
-- The SELECT statement is used to select data from a database. 
-- The data returned is stored in a result table, called the result-set.
-- * all columns demek

/*Yani veri taban�nda bir de�i�iklik yapmayaca��m, olan veriden veriyi benim istedi�im �artlarda bana ver demek.*/

-- Sadece ProductId ve ProductName s�tunlar�n� getir:
SELECT ProductId, ProductName FROM Products


-- S�tunlara farkl� isimle �a��rarak getir. (Alias)
SELECT ProductId as Id , ProductName as Name FROM Products