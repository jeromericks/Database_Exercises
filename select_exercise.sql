USE codeup_test_db;


SELECT name AS 'The name of MJ''s album' 
FROM albums 
WHERE name = 'Thriller';

SELECT release_date AS 'The year the Eagles album was released' 
FROM albums 
WHERE name = 'Their Greatest Hits (1971–1975)';

SELECT genre AS 'The Genre of Various artists is'
FROM albums 
WHERE genre = 'Soundtrack';

SELECT name AS 'These are albums released in the 70''s' 
FROM albums 
WHERE release_date BETWEEN '1970' AND '1979';

SELECT sales AS 'These albums have less than' 
FROM albums 
WHERE artist < 'Eagles';

SELECT genre AS 'The Genre of Bob Marley & The Wailers album is' 
FROM albums 
WHERE genre = 'Reggae';  