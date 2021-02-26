USE Filmes;

INSERT INTO Generos(Nome)
VALUES ('Ação'),
	   ('Romance'),
	   ('Comédia');

INSERT INTO Filmes(Titulo,idGenero)
VALUES ('Rambo', 1),
	   ('Diários de uma Paixão', 2),
	   ('Todo Mundo em Pânico', 3);


UPDATE Generos
SET Nome = 'Aventura'
WHERE idGenero = 3;

UPDATE Filmes
SET Titulo = 'Jumanji'
WHERE idFilme = 3;


DELETE FROM Filmes
WHERE Titulo = 'Rambo';


INSERT INTO Filmes(Titulo,idGenero)
VALUES ('True Lies', 1);