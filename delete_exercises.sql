USE codeup_test_db;

DELETE 
FROM albums 
WHERE release_date > 1983;

DELETE
FROM albums 
WHERE genre LIKE '%soft rock%';

DELETE  
FROM albums 
WHERE artist = 'Michael Jackson';
