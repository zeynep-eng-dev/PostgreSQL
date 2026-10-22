DROP TABLE IF EXISTS ogrenciler;
 CREATE TABLE ogrenciler(
ogrenci_id SERIAL PRIMARY KEY,
ogrenci_ad TEXT,
vize_notu INT
 );

 INSERT INTO ogrenciler(ogrenci_ad,vize_notu)
 VALUES
 ('Zeynep', 85),
('Ahmet', 65),
('Elif', 45),
('Can', 25);
 SELECT * FROM ogrenciler

 -- CASE WHEN kullanımı:Yazılım dilindeki if / else if / else mantığının SQL'deki birebir karşılığı şöyledir:
 SELECT 
 ogrenci_id,ogrenci_ad,
 CASE 
    WHEN vize_notu >=80 THEN 'harika'
	WHEN vize_notu >=60 THEN ' İYİ'
	WHEN vize_notu>=40 THEN 'sınırda'
	ELSE 'kaldı'
	END AS durum_etiketi 
	FROM ogrenciler;
 











 

 
 
 