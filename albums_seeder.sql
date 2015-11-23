USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums(artist, name, release_date, sales, genre)

VALUES 	('Michael Jackson', 'Thriller', '1982', '43.3', 'Pop, rock, R&B'),
		('Eagles', 'Their Greatest Hits (1971–1975)', '1976', '32.2', 'Rock, soft rock, folk rock'),
		('Various artists', 'Grease: The Original Soundtrack from the Motion Picture', '1978', '42', 'Soundtrack'),
		('Bob Marley & The Wailers', 'Legend: The Best of Bob Marley & The Wailers', '1984', '34', 'Reggae');