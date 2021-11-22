SELECT * FROM Products 
-- The SELECT statement is used to select data from a database. 
-- The data returned is stored in a result table, called the result-set.
-- * all columns demek

/*Yani veri tabanında bir değişiklik yapmayacağım, olan veriden veriyi benim istediğim şartlarda bana ver demek.*/

-- Sadece ProductId ve ProductName sütunlarını getir:
SELECT ProductId, ProductName FROM Products


-- Sütunlara farklı isimle çağırarak getir. (Alias)
SELECT ProductId as Id , ProductName as Name FROM Products