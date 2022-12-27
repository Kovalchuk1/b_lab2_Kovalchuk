
insert into country(id_country, country_name) values
(1, 'India'),
(2, 'US'),
(3, 'Japan'),
(4,'South Korea'),
(5, 'Canada');

insert into genre(id_genre, genre_name) values
(1, 'Music'),
(2, 'Education'),
(3, 'Entertainment'),
(4, 'Games'),
(5, 'Howto');

insert into viewss(id_views,  views_v, date_first, date_last) values
( 1, 86234, '2022-09-01', '2022-10-01'),
( 2, 80342, '2022-09-01', '2022-10-01'),
( 3, 23443, '2022-09-01', '2022-10-01'),
( 4, 4567, '2022-09-01', '2022-10-01'),
( 5, 3456, '2022-09-01', '2022-10-01'),
(6, 1456, '2022-09-01', '2022-10-01'),
(7, 978, '2022-09-01', '2022-10-01'),
( 8, 950,'2022-09-01', '2022-10-01');

insert into channel(ch_name,id_views, id_genre, id_country) values
('T-Series', 1, 1, 1),
('Cocomelon - Nursery Rhymes', 2, 2, 2),
('SET India', 3, 3, 1),
('PewDiePie', 4, 4, 3),
('BLACKPINK', 5, 1, 4),
('5-Minute Crafts', 6, 5, 2),
('Justin Bieber', 7, 1, 5),
('Zee TV', 8, 3, 1 );


select * from channel
select * from genre
select * from country
select * from viewss
