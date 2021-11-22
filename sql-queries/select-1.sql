SELECT * FROM Products 
-- The SELECT statement is used to select data from a database. 
-- The data returned is stored in a result table, called the result-set.
-- * all columns demek

/*Yani veri tabanýnda bir deðiþiklik yapmayacaðým, olan veriden veriyi benim istediðim þartlarda bana ver demek.*/

-- Sadece ProductId ve ProductName sütunlarýný getir:
SELECT ProductId, ProductName FROM Products


-- Sütunlara farklý isimle çaðýrarak getir. (Alias)
SELECT ProductId as Id , ProductName as Name FROM Products


-- Sütunlara farklý isimle çaðýrarak getir. (Alias) (as kullanmadan) (ayný iþlem)
SELECT ProductId Id , ProductName Name FROM Products


-- Products tablosundan ProductId ve ProductName sütununu getir. (Farklý yol)
SELECT p.ProductID ,p.ProductName FROM Products p


-- Örneðin her bir product için bütün stoklarý satarsak ne kadar para kazanýrýz bunu öðrenmek istiyoruz
-- Yani her bir product'ýn UnitPrice sütunu ile UnitsInStock sütunu birbiriyle çarpýlmalý ve de çýkan sonuçlar bütün kayýtlar için toplanmalýdýr. 
SELECT p.ProductName, p.UnitsInStock * p.UnitPrice as Total FROM Products p


-- 2 metinsel ifade olan sütunlarý yanyana yazdýralým
SELECT p.ProductName + ' ' + p.QuantityPerUnit FROM Products p


-- Tabloda olmayan bir verinin getirilmesi
SELECT 9*8 as Sonuc