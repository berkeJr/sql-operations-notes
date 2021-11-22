SELECT * FROM Products

--Where ko�ulu

--CategoryId'si 1 olan �r�nler
SELECT * FROM Products Where CategoryId = 1

--10'dan fazla sto�u olan �r�nler
SELECT * FROM Products Where UnitsInStock>10

--10'dan b�y�k ya da 10'a e�it (en az 10 tane)
SELECT * FROM Products Where UnitsInStock>=10

--5'ten az sto�u olan �r�nler
SELECT * FROM Products Where UnitsInStock<5

--Stokta kalmam�� �r�nler
SELECT * FROM Products Where UnitsInStock=0

--And Kullan�m�
--Stokta hi� kalmayan ama UnitsInOrder>0 olan (sipari� edilen)
SELECT * FROM Products Where UnitsInStock=0 AND UnitsOnOrder>0

/* And ko�ulu �u anlama gelir: Where'den sonra yaz�lan 2 ko�ulun da tutmas� (sa�lanmas�) gerekir. */

-- Or ve Not ile �al��mak
-- Stokta olmayan ya da sipari�i verilmeyen �r�nler
SELECT * FROM Products Where UnitsInStock=0 or UnitsOnOrder=0

-- �smi Chai olan �r�n� bize getir.
SELECT * FROM Products Where ProductName = 'Chai'

-- �smi Chai olmayan �r�nleri bize getir.
SELECT * FROM Products Where NOT ProductName = 'Chai'

-- Chai d���nda olanlar ve stok adedi 0 olanlar
SELECT * FROM Products Where NOT ProductName = 'Chai' AND UnitsInStock=0


/* S�ralama Sorgular�yla �al��mak */

-- Veri Taban�ndaki s�ras�na g�re
SELECT * FROM Products  

-- ProductName s�tunundaki verileri alfabetik olarak s�ralar.(metinsel ifadeler i�in)
SELECT * FROM Products order by ProductName

-- ProductName s�tunundaki verileri alfabetik olarak tersten s�ralar.(metinsel ifadeler i�in)
SELECT * FROM Products order by ProductName desc

-- ProductName s�tunundaki verileri numerik olarak s�ralar.(say�sal ifadeler i�in) (k���kten b�y��e)
SELECT * FROM Products order by UnitPrice

-- ProductName s�tunundaki verileri numerik olarak s�ralar.(say�sal ifadeler i�in) (b�y�kten k����e)
SELECT * FROM Products order by UnitPrice desc

/* asc = ascending (artan)  /   dsc = descending (azalan) */

-- �nce fiyata g�re artan �ekilde s�ralar, ayn� fiyattaki �r�nleri alfabetik olarak s�ralar
SELECT * FROM Products order by UnitPrice, ProductName 

-- �nce fiyata g�re artan �ekilde s�ralar, ayn� fiyattaki �r�nleri alfabetik olarak tersten s�ralar
SELECT * FROM Products order by UnitPrice, ProductName desc