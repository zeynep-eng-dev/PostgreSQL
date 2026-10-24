DROP TABLE IF EXISTS urunler;

CREATE TABLE urunler(
urun_id SERIAL PRIMARY KEY,
urun_adi text,
kategori text,
fiyat int,
stok_miktari int
);
INSERT INTO urunler(urun_adi,kategori, fiyat,stok_miktari)
VALUES
('Kablosuz Oyuncu Klavyesi', 'Elektronik', 125, 45),
('Mekanik Mini Klavye', 'Elektronik', 950, 10),
('Ergonomik Ofis Koltuğu', 'Mobilya', 340, 15),
('Ahşap Çalışma Masası', 'Mobilya', 210, 8),
('Bluetooth Kulaklık', 'Elektronik', 750, 120),
('Akıllı Telefon Standı', 'Aksesuar', 156, 200),
('Şarj Kablosu Tip-C', 'Aksesuar', 120, 350);

SELECT * FROM urunler

-- update komutu ile veri güncellem klavylerin fiyatuna zam yapalım
update urunler
set fiyat=fiyat*1.10
where kategori ='Elektronik' and urun_adi LIKE'klavye'

SELECT * FROM urunler


-- ın ve not ın kullanımı
select  urun_adi, kategori,fiyat from urunler
where kategori NOT IN('Aksesuar')

-- like ve ılıke kullanımı
select * from urunler
where urun_adi ILIKE '%klavye%';

-- case when kullanımı
select urun_adi,stok_miktari,
case
   when stok_miktari>100 then 'bol stok'
   when stok_miktari between 20 and 80  then 'orta sevıye'
   else 'kritik stok'
    end as stok_durum_aciklanmasi
   from urunler;

   -- group bu kullanımı kategorilere göre gruplanıdrma
   select kategori,
   count(*) as  toplam_urun_sayisi,
   round(avg(fiyat),2) as ortalam_fiyat,
   sum(stok_miktari) as toplam_stok
   from urunler
   group by kategori;


   --order by kullanımı(sıralama): tüm ürünler fiyata göre  en pahalıdan en ucuza sıralama
   select urun_adi, kategori,fiyat from urunler
   order by fiyat desc

   SELECT 
    kategori,
    SUM(stok_miktari) AS toplam_stok
FROM urunler
GROUP BY kategori
ORDER BY toplam_stok DESC;

   
   
















