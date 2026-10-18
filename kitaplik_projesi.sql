
CREATE TABLE kitaplikk(
    kitap_adi text,
    yazar text,
    yayim_yili int
);

-- 3. Verilerimizi ekleyelim 
INSERT INTO kitaplikk(kitap_adi, yazar, yayim_yili)
VALUES 
('aşk ve gurur', 'zeynep', 2025),
('küçük beden', 'meryem nuh', 2026),
('siyah ve beyaz', 'zafer', 2026),
('imkansızım', 'naze', 2027);

-- 4. Sorgularımızı çalıştıralım
SELECT * FROM kitaplikk;

SELECT kitap_adi, yazar FROM kitaplikk;

SELECT * FROM kitaplikk 
WHERE yayim_yili > 2025;

--2025b ile 2027 arasındakı olan kitapları getir 
select*from  kitaplikk
where yayim_yili between 2025 and 2026

--tablodakı kitap sayısı bulmak
select count(yayim_yili) from kitaplikk

--tabloya yenı bir şey ekleme
alter table kitaplikk
add column stok_sayisi integer;
select*from kitaplikk

-- stok sayısnı tümm kitapr için 10 yapalım
-- update burda güncellem yapar
update kitaplikk
set stok_sayisi=10;

-- seçtğimiz bir kitap stok sayısnı değişitme,
update kitaplikk
set stok_sayisi=4 
where kitap_adi='aşk ve gurur';

select *from kitaplikk

-- tabloya id sütün ekleme 
alter table kitaplikk
add column id serial;

--aggregate fonksıyonlar
select sum(stok_sayisi) from kitaplikk
select min(stok_sayisi) from kitaplikk
select max(stok_sayisi)from kitaplikk

-- disitnct ile kayıtları sınırlandırmak



















