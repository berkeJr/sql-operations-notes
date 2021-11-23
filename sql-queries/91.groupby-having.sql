 /* SQL GroupBy ve Having ile �al��mak */

 /* DISTINCT komutu */

 -- Distinct komutu bir kolondaki tekrarlayan kay�tlar� tekrarlamadan bir sefer getirmeye yarayan komuttur.
select * from Customers

-- �rne�in City ve Country kolonlar�nda tekrar eden kay�tlar var

-- Tekrar eden kay�tlar olmadan b�t�n �lkeler
Select Distinct(Country) from Customers

Select Distinct(Country) from Customers order by Country desc

-- �ki kolona g�re gruplama yani o iki kolon ayn� �ekilde tekrar etmesin
Select distinct Country, City from Customers order by Country


/* Group By �le �al��mak */

Select * from Customers

-- T�m �lkeler
Select Country from Customers

-- Distinct kullan�m� ile ayn� sonu�
Select Country from Customers group by Country

-- Hangi �lkeden toplam ka� tane var
Select Country, Count(*) from Customers group by Country

-- Hangi �lkeden toplam ka� tane var
Select Country, Count(*) as Total from Customers group by Country

-- City, Country ikili olarak ka� kere tekrar etmi�
Select Country, City, Count(*) as Total from Customers group by Country, City

/* Having �le �al��mak */
-- Peki y�neticimiz bizden Country ve City baz�nda birden fazla m��terimiz olan iller hangileri?
Select Country, City, Count(*) as Total from Customers group by Country, City having count(*) > 1

-- Country'ye g�re alfabetik olarak s�rala
Select Country, City, Count(*) as Total from Customers group by Country, City having count(*) > 1
order by Country

-- City'ye g�re alfabetik olarak s�rala
Select Country, City, Count(*) as Total from Customers group by Country, City having count(*) > 1
order by City

-- City'ye g�re alfabetik olarak s�rala ve �ehri Nantes'den farkl� olanlara uygula
Select Country, City, Count(*) as Total from Customers 
where City <> 'Nantes'
group by Country, City having count(*) > 1
order by City

