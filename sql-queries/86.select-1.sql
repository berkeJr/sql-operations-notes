SELECT * FROM Products 
-- The SELECT statement is used to select data from a database. 
-- The data returned is stored in a result table, called the result-set.
-- * all columns demek

/*Yani veri tabanýnda bir deðiþiklik yapmayacaðým, olan veriden veriyi benim istediðim þartlarda bana ver demek.*/

-- Sadece ProductId ve ProductName sütunlarýný getir:
SELECT ProductId, ProductName FROM Products


-- Sütunlara farklý isimle çaðýrarak getir. (Alias)
SELECT ProductId as Id , ProductName as Name FROM Products