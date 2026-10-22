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

SELECT * FROM ogrenciler 

--Transaction  nedir:BEGIN (veya BEGIN TRANSACTION): İşlemi (Transaction'ı) başlattığımız komuttur.COMMIT: İşlemlerin hepsi başarılı oldu, verileri veritabanına kalıcı olarak kaydet ve bitir demektir.
--ROLLBACK: İşlem sırasında bir hata çıktı veya vazgeçtik, yapılan tüm değişiklikleri geri al, tabloyu eski haline getir demektir.

-- 1. İşlemi başlatıyoruz
BEGIN;

-- Zeynep'in notunu 90 yapalım
UPDATE ogrenciler 
SET vize_notu = 90 
WHERE ogrenci_ad = 'Zeynep';

-- Ahmet'in notunu 70 yapalım
UPDATE ogrenciler 
SET vize_notu = 70 
WHERE ogrenci_ad = 'Ahmet';

-- Her şey yolunda gittiyse değişiklikleri kalıcılaştırıyoruz:
COMMIT;

-- Eğer bir hata fark etseydik veya vazgeçseydik şunu yazacaktık:
-- ROLLBACK;









