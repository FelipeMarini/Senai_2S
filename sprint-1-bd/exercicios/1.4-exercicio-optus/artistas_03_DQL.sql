USE Artistas;

SELECT * FROM Artistas;

SELECT * FROM Estilos;

SELECT * FROM Usuarios;

SELECT * FROM Albuns;

SELECT * FROM AlbunsEstilos;

SELECT Usuarios.idUsuario, Usuarios.Nome, Usuarios.Email,
Usuarios.Permissao
FROM Usuarios
WHERE Usuarios.Permissao != 'comum';

SELECT * FROM Albuns
WHERE dataLancamento > 1900;  -- ver como faz insert de dado tipo DATETIME

SELECT Usuarios.Email, Usuarios.Senha
FROM Usuarios
WHERE Usuarios.Permissao = 'comum';

SELECT Albuns.Titulo AS Álbum, Artistas.Nome AS Artista,
Estilos.Nome AS Estilo
FROM Albuns
INNER JOIN Artistas ON Albuns.idARTISTA = Artistas.idArtista
INNER JOIN AlbunsEstilos ON Albuns.idAlbum = AlbunsEstilos.idAlbum
INNER JOIN Estilos ON AlbunsEstilos.idAlbum = Estilos.idEstilo
WHERE Albuns.AtivoVisualizacao = 1;





