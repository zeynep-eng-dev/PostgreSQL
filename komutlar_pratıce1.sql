DROP TABLE IF EXISTS calisanlar;

CREATE TABLE calisanlar(
id SERIAL PRIMARY KEY,
 isim text,
 soyad text,
 bolum text,
 maas int,
 sehir text,
 unvan text
);
INSERT INTO calisanlar(isim,soyad,bolum,maas,sehir,unvan)
VALUES
('Ahmet', 'Yılmaz', 'Yazılım', 45000, 'İstanbul', 'Senior Developer'),
('Zeynep', 'Kaya', 'Yazılım', 52000, 'Erzurum', 'Lead Developer'),
('Mehmet', 'Demir', 'İnsan Kaynakları', 30000, 'Ankara', 'Uzman'),
('Ayşe', 'Çelik', 'Pazarlama', 28000, 'İzmir', 'Asistan'),
('Ali', 'Öztürk', 'Yazılım', 38000, 'Erzurum', 'Junior Developer'),
('Merve', 'Aydın', 'Finans', 35000, 'İstanbul', 'Uzman'),
('Can', 'Yıldız', 'Pazarlama', 31000, 'Ankara', 'Uzman');
 SELECT* FROM calisanlar

 -- bölümü yazılım veya pazarlama olmayan çalışanlar adını soyadını be bölümünü getiren sorguyu yaz
 select isim,soyad,bolum from calisanlar
 where bolum  NOT IN('Yazılım','Pazarlama'); -- burda da harf duyarlılığı vardır

 select * from calisanlar
 where sehir LIKE 'İst%';

 select isim,soyad, bolum from calisanlar
 group by bolum,

 select isim,soyad,bolum from calisanlar
 where bolum  NOT IN('Yazılım','Pazarlama');

 update calisanlar 
 set maas=CASE
     WHEN bolum='yazılım' THEN maas*115
	 when bolum='Pazarlama' THEN maas*110
	 ELSE  maas=105
END;

select* from calisanlar
--END AS durum_bilgisi; (Alias Kullanımı):
--UPDATE yaparken END ifadesinden sonra AS durum_bilgisi yazamazsın. AS sadece SELECT ile ekrana kolon basarken kullanılır. UPDATE işleminde END ile kapatıp noktayı veya noktalı virgülü koyman yeterlidir
 
 
 


 
 
 

