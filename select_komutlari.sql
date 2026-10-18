--select komutları:
--1.Tablodaki Her şeyi Getir
select*from personel
--personel tablosundaki tüm sütunları ve bütün kayıtları ekrana döker.

--2.Sadece Belirli Sütunları Getir
SELECT ad, soyad, maas FROM personel;
--Sadece çalışanların adını, soyadını ve maaşını getirir, gereksiz kalabalığı önler.

--3.Şarta Göre Veri Getir (WHERE)
SELECT * FROM personel
WHERE sehir = 'Ankara';
--sadece şehri ankara olanları getirir

--4.Sıralama Yaparak Getir (ORDER BY)
SELECT ad, maas FROM personel
ORDER BY maas DESC;
--Maaşları büyükten küçüğe (DESC) olacak şekilde sıralayıp gösterir. Küçükten büyüğe isteseydin ASC yazabilirdin.

--5.Sınırlandırma Koy (LIMIT)
SELECT * FROM personel LIMIT 5;
--çıktıyı sadece ilk 5 satırla sınırlandırır.