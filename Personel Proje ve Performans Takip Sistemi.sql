--Üniversite Öğrenci Not Takip Sistemi
create table personel(
proje_id serial,
personel_ad text,
departman text,
tamamlanan_gorev int,
proje_butcesi numeric
);

select*from personel

INSERT INTO personel (personel_ad, departman, tamamlanan_gorev, proje_butcesi)
VALUES 
('Zeynep', 'Yazılım', 7, 45000),
('Ahmet', 'Yazılım', 4, 30000),
('Elif', 'Tasarım', 6, 25000),
('Can', 'Tasarım', 3, 20000),
('Mehmet', 'Pazarlama', 8, 50000),
('Ayşe', 'Pazarlama', 2, 15000);

 alter table personel
add column prim_durumu text;
select*from personel

update personel 
set prim_durumu='hak kazandı'
where tamamlanan_gorev>5;

select departman, sum(tamamlanan_gorev) from personel
group by departman--departmana göre gruplanır

select departman, max(proje_butcesi) as en_yuksek_butce 
from personel
group by departman
order by en_yuksek_butce desc;





