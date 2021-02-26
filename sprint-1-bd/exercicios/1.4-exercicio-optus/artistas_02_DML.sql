USE Artistas;

INSERT INTO Artistas(Nome)
VALUES ('Tame Impala'),('ACDC'),('Coldplay'),('Taylor Swift');

INSERT INTO Estilos(Nome)
VALUES ('Indie'),('Rock'),('Pop'),('Grunge'),('Folk');

INSERT INTO Usuarios(Nome,Email,Senha,Permissao)
VALUES ('Felipe', 'f@uol.com', '123', 'admnistrador'),
	   ('Ivo', 'i@gmail.com', '456', 'comum'),
	   ('Márcio', 'm@yahoo.com', '789', 'comum');


INSERT INTO Albuns(Titulo,dataLancamento,Localizacao,QuantidadeMinutos,
AtivoVisualizacao,idArtista)

VALUES ('Innerspeaker', 01/01/2001, 'Austrália', 60, 1, 1),
	   ('Destruction', 02-02-2002, 'Inglaterra', 70, 0, 2),
	   ('Sweet Memories', 2003-03-03, 'Inglaterra', 80, 0, 3),
	   ('Falling for You', 2004-04-04, 'EUA', 75, 1, 4);

INSERT INTO AlbunsEstilos(idAlbum,idEstilo)
VALUES (1, 1),
	   (2, 2),
	   (3, 5),
	   (4, 3);