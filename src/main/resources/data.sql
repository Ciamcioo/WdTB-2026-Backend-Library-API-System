-- Dane startowe aplikacji. Tabele tworzy Hibernate z encji, a ten plik Spring Boot uruchamia zaraz potem.
-- LAB 02: dopiszcie dane do swoich tabel (kolejność: najpierw tabele, na które wskazują klucze obce).
insert into user_account (email, display_name, role, created_at) values
    ('s566618@student.merito.pl',   'Jakub',   'USER',    current_timestamp),
    ('s492910@student.merito.pl',  'Maciej',  'USER',    current_timestamp),
    ('s000000@student.merito.pl',  'TMP',  'USER',    current_timestamp),
    ('firma@example.com',       'Firma', 'PARTNER', current_timestamp),
    ('admin@example.com',       'Admin', 'ADMIN',   current_timestamp);

-- insert into book (isbn, title, author, pages, publish_year, type) values
--     (9788375780635, 'Ostatnie życzenie',            'Andrzej Sapkowski',     332, 1993, 'FANTASY'),
--     (9788375780642, 'Miecz przeznaczenia',          'Andrzej Sapkowski',     384, 1992, 'FANTASY'),
--     (9788308049365, 'Solaris',                      'Stanisław Lem',         340, 1961, 'SCIENCE_FICTION'),
--     (9788308049372, 'Cyberiada',                    'Stanisław Lem',         312, 1965, 'SCIENCE_FICTION'),
--     (9788324031380, 'Lalka',                        'Bolesław Prus',         680, 1890, 'LITERARY_FICTION'),
--     (9788324031397, 'Quo vadis',                    'Henryk Sienkiewicz',    592, 1896, 'HISTORICAL_FICTION'),
--     (9788324031403, 'Krzyżacy',                     'Henryk Sienkiewicz',    720, 1900, 'HISTORICAL_FICTION'),
--     (9788381234567, 'Morderstwo w Orient Expressie', 'Agatha Christie',      256, 1934, 'CRIME'),
--     (9788381234574, 'Lśnienie',                     'Stephen King',          528, 1977, 'HORROR'),
--     (9788381234581, 'Milczenie owiec',              'Thomas Harris',         368, 1988, 'THRILLER'),
--     (9788381234598, 'Duma i uprzedzenie',           'Jane Austen',           416, 1813, 'ROMANCE'),
--     (9788381234604, 'Steve Jobs',                   'Walter Isaacson',       656, 2011, 'BIOGRAPHY'),
--     (9788381234611, 'Sapiens. Od zwierząt do bogów', 'Yuval Noah Harari',    544, 2011, 'DOCUMENTARY');

insert into location (name, street, postal_code, city, province, start_hour, close_hour) values
    ('Biblioteka Główna',      'ul. Fabryczna 29',        '53-609', 'Wrocław', 'dolnośląskie',  '08:00', '20:00'),
    ('Filia nr 1 - Krzyki',    'ul. Powstańców Śl. 120',  '53-332', 'Wrocław', 'dolnośląskie',  '10:00', '18:00'),
    ('Filia nr 2 - Śródmieście', 'ul. Piłsudskiego 52',   '50-032', 'Wrocław', 'dolnośląskie',  '09:00', '17:00'),
    ('Biblioteka Poznań',      'ul. Powstańców Wlkp. 5',  '61-895', 'Poznań',  'wielkopolskie', '08:00', '19:00');

-- insert into rent (id, user_id, book_isbn, start_date, end_date) values
--     (next value for rent_seq, 1, 9788375780635, date '2026-09-01', date '2026-09-29'),
--     (next value for rent_seq, 1, 9788308049365, date '2026-10-10', date '2026-11-07'),
--     (next value for rent_seq, 2, 9788324031397, date '2026-09-15', date '2026-10-13'),
--     (next value for rent_seq, 2, 9788381234574, date '2026-10-20', date '2026-11-17'),
--     (next value for rent_seq, 3, 9788381234598, date '2026-08-05', date '2026-09-02'),
--     (next value for rent_seq, 4, 9788381234611, date '2026-10-01', date '2026-10-29'),
--     (next value for rent_seq, 1, 9788375780642, date '2026-10-22', date '2026-11-19');

-- ======== LAB 03 ================


insert into library_card(user_id,  issue_date, expiring_date, location_id) values
                                                       (1, date '2025-01-01', date '2026-01-01', 2),
                                                       (3, date '2025-02-01', date '2026-02-01', 1),
                                                       (4, date '2025-03-01', date '2026-03-01', 4),
                                                       (2, date '2025-04-01', date '2026-04-01', 3),
                                                       (5, date '2025-05-01', date '2026-05-01', 2);

insert into author (first_name, last_name, birth_date, death_date) values
                                                   ('Andrzej', 'Sapkowski', date '1948-06-21', null),
                                                   ('Stanisław', 'Lem', date '1921-09-12', date '2006-03-27'),
                                                   ('Bolesław', 'Prus', date '1847-08-20', date '1912-05-19' ),
                                                   ('Henryk', 'Sienkiewicz', date '1846-05-05', date '1916-11-15'),
                                                   ('Agatha',  'Christie', date '1890-09-15', date '1976-01-12'),
                                                   ('Stephen', 'King', date '1947-09-21', null),
                                                   ('Thomas',  'Harris', date '1940-09-22', null),
                                                   ('Jane',  'Austen', date '1775-12-16', date '1817-07-18'),
                                                   ('Walter', 'Isaacson', date '1952-05-20', null),
                                                   ('Yuval Noah', 'Harari', date '1976-02-24', null);

insert into book (isbn, title, author_id, pages, publish_year, type) values
    (9788375780635, 'Ostatnie życzenie', 1, 332, 1993, 'FANTASY'),
    (9788375780642, 'Miecz przeznaczenia', 1, 384, 1992, 'FANTASY'),
    (9788308049365, 'Solaris', 2, 340, 1961, 'SCIENCE_FICTION'),
    (9788308049372, 'Cyberiada', 2, 312, 1965, 'SCIENCE_FICTION'),
    (9788324031380, 'Lalka', 3, 680, 1890, 'LITERARY_FICTION'),
    (9788324031397, 'Quo vadis', 4, 592, 1896, 'HISTORICAL_FICTION'),
    (9788324031403, 'Krzyżacy', 4, 720, 1900, 'HISTORICAL_FICTION'),
    (9788381234567, 'Morderstwo w Orient Expressie', 5, 256, 1934, 'CRIME'),
    (9788381234574, 'Lśnienie', 6, 528, 1977, 'HORROR'),
    (9788381234581, 'Milczenie owiec', 7, 368, 1988, 'THRILLER'),
    (9788381234598, 'Duma i uprzedzenie', 8, 416, 1813, 'ROMANCE'),
    (9788381234604, 'Steve Jobs', 9, 656, 2011, 'BIOGRAPHY'),
    (9788381234611, 'Sapiens. Od zwierząt do bogów', 10, 544, 2011, 'DOCUMENTARY');

insert into rent (user_id, start_date, end_date, is_returned) values
                                                                    (1, date '2026-09-01', date '2026-09-29', false),
                                                                    (1, date '2026-10-10', date '2026-11-07', false),
                                                                    (2, date '2026-09-15', date '2026-10-13', true),
                                                                    (2, date '2026-10-20', date '2026-11-17', false),
                                                                    (3, date '2026-08-05', date '2026-09-02', true),
                                                                    (4, date '2026-10-01', date '2026-10-29', false),
                                                                    (1, date '2026-10-22', date '2026-11-19', true);
