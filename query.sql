--Number of channels in each country
select country_name, count(id_country) as Кількість from channel
join country using(id_country)
group by country_name;


--The number of channels belongs to a certain genre
select genre_name, count(id_genre) as Кількість from channel
join genre using(id_genre)
group by genre_name;

--Channel views that are greater than the average number of views of all channels
select ch_name, ch_views from channel
where ch_views >= (select  avg(ch_views) from  channel)

