 /* SQL GroupBy ve Having ile Çalýþmak */

 /* DISTINCT komutu */

 -- Distinct komutu bir kolondaki tekrarlayan kayýtlarý tekrarlamadan bir sefer getirmeye yarayan komuttur.
select * from Customers

-- Örneðin City ve Country kolonlarýnda tekrar eden kayýtlar var

-- Tekrar eden kayýtlar olmadan bütün ülkeler
Select Distinct(Country) from Customers

Select Distinct(Country) from Customers order by Country desc

-- Ýki kolona göre gruplama yani o iki kolon ayný þekilde tekrar etmesin
Select distinct Country, City from Customers order by Country


/* Group By Ýle Çalýþmak */

Select * from Customers

-- Tüm ülkeler
Select Country from Customers

-- Distinct kullanýmý ile ayný sonuç
Select Country from Customers group by Country

-- Hangi ülkeden toplam kaç tane var
Select Country, Count(*) from Customers group by Country

-- Hangi ülkeden toplam kaç tane var
Select Country, Count(*) as Total from Customers group by Country

-- City, Country ikili olarak kaç kere tekrar etmiþ
Select Country, City, Count(*) as Total from Customers group by Country, City

/* Having Ýle Çalýþmak */
-- Peki yöneticimiz bizden Country ve City bazýnda birden fazla müþterimiz olan iller hangileri?
Select Country, City, Count(*) as Total from Customers group by Country, City having count(*) > 1

-- Country'ye göre alfabetik olarak sýrala
Select Country, City, Count(*) as Total from Customers group by Country, City having count(*) > 1
order by Country

-- City'ye göre alfabetik olarak sýrala
Select Country, City, Count(*) as Total from Customers group by Country, City having count(*) > 1
order by City

-- City'ye göre alfabetik olarak sýrala ve þehri Nantes'den farklý olanlara uygula
Select Country, City, Count(*) as Total from Customers 
where City <> 'Nantes'
group by Country, City having count(*) > 1
order by City

