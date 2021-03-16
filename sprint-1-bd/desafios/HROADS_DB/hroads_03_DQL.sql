USE Rpg_Hroads;

SELECT * FROM Personagens;

SELECT * FROM Classes;

SELECT Nome_da_Classe FROM Classes;

SELECT * FROM Habilidades;

SELECT * FROM Tipo_de_Habilidade;

-- Realizar a contagem de quantas habilidades estão cadastradas
SELECT COUNT(idHabilidade) AS Numero_de_Habilidades_Cadastradas FROM Habilidades;

-- Selecionar somente os id’s das habilidades classificando-os por ordem crescente
SELECT idHabilidade FROM Habilidades
ORDER BY idHabilidade ASC;


-- Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte
SELECT Habilidades.Nome_Habilidade, Tipo_de_Habilidade.Tipo_de_Habilidade 
FROM Habilidades
INNER JOIN Tipo_de_Habilidade
ON Habilidades.idTipoHabilidade = Tipo_de_Habilidade.idTipoHabilidade;

-- Selecionar todos os personagens e suas respectivas classes
SELECT Personagens.Nome_do_Personagem, Classes.Nome_da_Classe 
FROM Personagens
INNER JOIN Classes
ON Personagens.idClasse = Classes.idClasse;

-- Selecionar todos os personagens e as classes 
-- (mesmo que elas não tenham correspondência em personagens)
SELECT Personagens.Nome_do_Personagem, Classes.Nome_da_Classe 
FROM Personagens
RIGHT JOIN Classes
ON Classes.idClasse = Personagens.idClasse
ORDER BY Personagens.Nome_do_Personagem DESC;

-- Selecionar todas as classes e suas respectivas habilidades
SELECT Classes.Nome_da_Classe, Habilidades.Nome_Habilidade 
FROM Classes
LEFT JOIN Habilidades_da_Classe
ON Classes.idClasse = Habilidades_da_Classe.idClasse
LEFT JOIN Habilidades
ON Habilidades_da_Classe.idHabilidade = Habilidades.idHabilidade;

-- Selecionar todas as habilidades e suas classes 
-- (somente as que possuem correspondência)
SELECT Habilidades.Nome_Habilidade, Classes.Nome_da_Classe 
FROM Habilidades
LEFT JOIN Habilidades_da_Classe
ON Habilidades.idHabilidade = Habilidades_da_Classe.idHabilidade
LEFT JOIN Classes
ON Habilidades_da_Classe.idClasse = Classes.idClasse;

-- Selecionar todas as habilidades e suas classes 
-- (mesmo que elas não tenham correspondência)
SELECT Habilidades.Nome_Habilidade, Classes.Nome_da_Classe 
FROM Habilidades
RIGHT JOIN Habilidades_da_Classe
ON Habilidades.idHabilidade = Habilidades_da_Classe.idHabilidade
RIGHT JOIN Classes
ON Habilidades_da_Classe.idClasse = Classes.idClasse
ORDER BY Nome_Habilidade DESC;