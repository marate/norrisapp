DROP TABLE IF EXISTS Quotes, Authors;

CREATE TABLE IF NOT EXISTS Authors(Id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(25)) ENGINE=InnoDB;
CREATE TABLE IF NOT EXISTS Quotes(Id INT PRIMARY KEY AUTO_INCREMENT,
	AuthorId INT, Quote VARCHAR(100),
	FOREIGN KEY(AuthorId) REFERENCES Authors(Id) ON DELETE CASCADE)
		ENGINE=InnoDB;
	
INSERT INTO Authors(Id, Name) VALUES(1, 'Babs');
INSERT INTO Authors(Id, Name) VALUES(2, 'Lingoji');
INSERT INTO Authors(Id, Name) VALUES(3, 'Raju');
INSERT INTO Authors(Id, Name) VALUES(4, 'Faculty');
INSERT INTO Authors(Id, Name) VALUES(5, 'DBA');

INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(1, 1, 'I am DBA');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(2, 1, 'I am Faculty');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(3, 2, 'I am MT Editor');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(4, 2, 'I am English Trainer');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(5, 3, 'I am Runner');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(6, 4, 'I am Administrator');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(7, 4, 'I am Father');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(8, 5, 'I am MBA');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(9, 5, 'I am Working');