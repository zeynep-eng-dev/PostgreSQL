-- film arşivi
create table filmm(
film_adi text,
yonetmen text,
imdb_puani numeric,
izlenme_yili int
);
insert into filmm(film_adi,yonetmen,imdb_puani,izlenme_yili)
values
('teşkilat','ahmet kaya',1.2,1990),
('arka sokaklar','muhammet halil',6.2,1889),
('çoçuklar yalan söyelmez','meryem ada',2.3,2034),
('hayat güzel mi anne',' naze asya',7.6, 2024);
select*from filmm

insert into filmm(film_adi,yonetmen,imdb_puani,izlenme_yili)
values
('bu kadar mı','zeynep nuh',4.5,2026);

update filmm
set film_adi='çocuklar yalan söylemez'
where yonetmen='meryem ada';

select* from filmm
where  izlenme_yili > 2020
order by imdb_puani DESC;

select avg(imdb_puani)from filmm







