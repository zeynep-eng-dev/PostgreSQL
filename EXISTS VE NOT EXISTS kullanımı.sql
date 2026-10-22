DROP TABLE IF EXISTS ogrenciler;

CREATE TABLE ogrenciler (
    ogrenci_id SERIAL PRIMARY KEY,
    ogrenci_ad TEXT,
    vize_notu INT
);

INSERT INTO ogrenciler (ogrenci_ad, vize_notu)
VALUES
    ('Zeynep', 85),
    ('Ahmet', 65),
    ('Elif', 45),
    ('Can', 25);
--EXISTS:MANTIĞI Şu şartı sağlayan birileri var mı? Varsa onları getir.
SELECT * FROM ogrenciler 
-- 1. EXISTS ÖRNEĞİ
-- Tabloda vize notu 80'den büyük öğrenci VARSA tüm öğrencileri listele
--Tablonda vize notu 80'tan büyük olan en az bir öğrenci var mı diye kontrol edip, eğer varsa tüm öğrencileri listeleyen
SELECT * FROM ogrenciler
WHERE EXISTS (
    SELECT 1 
    FROM ogrenciler 
    WHERE vize_notu > 80
);


-- 2. NOT EXISTS ÖRNEĞİ
-- Tabloda vize notu 100 olan öğrenci YOKSA tüm öğrencileri listele
SELECT * FROM ogrenciler
WHERE NOT EXISTS (
    SELECT 1 
    FROM ogrenciler 
    WHERE vize_notu = 100
);