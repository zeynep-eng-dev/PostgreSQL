-- Tablo Oluşturma
CREATE TABLE ogrenciler (
    ogrenci_id SERIAL PRIMARY KEY,
    ogrenci_ad TEXT,
    bolum TEXT,
    vize_notu INT,
    final_notu INT
);

-- Veri Ekleme
INSERT INTO ogrenciler (ogrenci_ad, bolum, vize_notu, final_notu)
VALUES 
('Ahmet Yılmaz', 'Bilgisayar Müh.', 75, 85),
('ahmet demir', 'Yazılım Müh.', 60, 70),       -- Küçük harfli kayıt
('Ahmet Can', 'Endüstri Müh.', 45, 55),
('Mehmet Kaya', 'Bilgisayar Müh.', 80, 90),
('Muhammet Ali', 'Makine Müh.', 50, 65),
('Ayşe Öztürk', 'Yazılım Müh.', 90, 95),
('Ayla Şahin', 'Tıp', 85, 88),
('Caner Arslan', 'Hukuk', 40, 50),
('Canan Çelik', 'Psikoloji', 95, 100);

-- Tüm Tabloyu Listeleme
SELECT * FROM ogrenciler;


-- LIKE & ILIKE KULLANIM ÖRNEKLERİ
-- 1. LIKE: Büyük/Küçük harfe duyarlıdır.
-- 'A' ile başlayan isimler (Ahmet, Ayşe, Ayla vb.)
SELECT * FROM ogrenciler 
WHERE ogrenci_ad LIKE 'A%';

-- 2. Küçük 'ah' ile başlayanlar (Sadece 'ahmet demir' gelir)
SELECT * FROM ogrenciler 
WHERE ogrenci_ad LIKE 'ah%';

-- 3. 4 harfli, 'A' ile başlayıp 'a' ile biten ilk isimler (Ayla vb.)
SELECT * FROM ogrenciler 
WHERE ogrenci_ad LIKE 'A__a%';

-- 4. ILIKE: Büyük/Küçük harf duyarsızdır.
-- İçinde "ahmet" geçen tüm kayıtları (Ahmet Yılmaz, ahmet demir, Ahmet Can) getirir.
SELECT * FROM ogrenciler 
WHERE ogrenci_ad ILIKE '%ahmet%';

SELECT * FROM ogrenciler
WHERE ogrenci_ad  ILIKE '%ay';   --ay  ile biten her şey

SELECT * FROM ogrenciler
WHERE ogrenci_ad  ILIKE '%yaz%'; -- içinde yaz gecen her isim


SELECT * FROM ogrenciler
WHERE ogrenci_ad  ILIKE 'A_m_t'; --A ile başlasın, 5 harfli olsun, 3. harfi m, 5. harfi t olsun


















