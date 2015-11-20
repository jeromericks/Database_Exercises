USE codeup_test_db;

SELECT sales AS 'Sales' FROM albums;
UPDATE albums
SET sales = (sales * 10);
SELECT sales AS 'New Updated Sales' FROM albums;

ALTER TABLE albums
MODIFY COLUMN release_date INT;

SELECT name AS 'Name', release_date AS 'Albums released before 1980' FROM albums WHERE release_date < '1980';
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < '1980';
SELECT name AS 'Name', release_date AS 'Updated albums' FROM albums WHERE release_date < '1980';

SELECT name AS 'Album''s by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT name AS 'Album names', artist AS 'Updated artist names' FROM albums;