USE Filmes;

INSERT INTO Generos(Nome)
VALUES ('A��o'),
	   ('Romance'),
	   ('Com�dia');

INSERT INTO Filmes(Titulo,idGenero)
VALUES ('Rambo', 1),
	   ('Di�rios de uma Paix�o', 2),
	   ('Todo Mundo em P�nico', 3);


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