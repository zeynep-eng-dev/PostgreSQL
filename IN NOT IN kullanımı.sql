 DROP TABLE IF  EXISTS ogrenciler;

 CREATE TABLE  ogrenciler(
 ogrenci_id SERIAL PRIMARY KEY,
 ogrenci_ad TEXT,
 vize_notu INT
 );

 INSERT INTO ogrenciler( ogrenci_ad,vize_notu)
 VALUES
    ('Zeynep', 85),
    ('Ahmet', 65),
    ('Elif', 45),
    ('Can', 25);
	SELECT * FROM ogrenciler


-- IN kullanımı: Belirtilen listedeki notlara sahip öğrencileri getirir
SELECT ogrenci_id, ogrenci_ad, vize_notu FROM ogrenciler
WHERE vize_notu  IN(85,45)

-- NOT IN kullanımı:Belirtilen liste DIŞINDAKİ notlara sahip öğrencileri getirir
SELECT ogrenci_id, ogrenci_ad, vize_notu FROM ogrenciler
WHERE vize_notu  NOT IN(85,45)
 