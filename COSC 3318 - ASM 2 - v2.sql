USE Movies;
#1
SELECT title, year, studioName FROM movie;
#2
SELECT title, year, studioName FROM movie
WHERE title like “%wind”;
#3
SELECT moviestar.name, moviestar.address
FROM moviestar INNER JOIN movieexec ON moviestar.name = movieexec.name
WHERE gender LIKE "%m" AND netWorth < 10000000;
#4
select moviestar.name, moviestar.address, moviestar.birthdate 
from moviestar inner join starsin on moviestar.name = starsin.starName
where gender like '%m' and movieTitle like "wayne's world"
#5
select starsin.starName
from starsin 
inner join movie on movie.title = starsin.movietitle 
inner join moviestar on moviestar.name = starsin.starname
where studioName like "%Disney" and movieYear <= 1991;  
#6
Select movieexec.name, movieexec.address, movieexec.netWorth
from movieexec inner join studio 
where studio.presCertno = movieexec.certno and studio.name like "%Disney";
#7
Select length from movie where movie like “%Titanic”;

set @length_titanic := 194;
select title, year, length, genre, studioName
from movie
where length < @length_titanic;
#8
select netWorth from movieexec where name like "%george lucas";
NEW QUERY
set @networth_lucas := 15000000;
#9
select movieyear, movietitle, count(*) as starsinmovie
from starsin
group by movietitle, movieyear
having count(*)>0;
#10
elect name, producerCno, count(*) as starsinmovie
from movie inner join movieexec on movie.producerCNo = movieexec.certNo
group by movieexec.name, producerCno
having count(*) > 0;