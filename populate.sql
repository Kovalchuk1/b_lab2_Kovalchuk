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

insert into channel(ch_name, ch_views,  ch_subscribers, id_genre, id_country) values
('T-Series', 201929, 225, 1, 1),
('Cocomelon - Nursery Rhymes', 138918, 143, 2, 2),
('SET India', 129200, 142.0, 3, 1),
('PewDiePie', 28525, 111.0, 4, 3),
('BLACKPINK', 26633, 81.4, 1, 4),
('5-Minute Crafts', 24134, 77.4, 5, 2),
('Justin Bieber', 28838, 70.0, 1, 5),
('Zee TV', 17672, 64.4, 3, 1 );