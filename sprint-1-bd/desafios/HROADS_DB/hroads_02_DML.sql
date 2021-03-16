USE Rpg_Hroads;


INSERT INTO Classes (Nome_da_Classe)
VALUES	('Barbaro'),
		('Cruzado'),
		('Ca�adora de Dem�nios'),
		('Monge'),
		('Necromante'),
		('Feiticeiro'),
		('Arcanista');

INSERT INTO Personagens (idClasse, Nome_do_Personagem, Vida_Maxima,
Mana_Maxima, Data_de_Criacao, Data_de_Atualizacao)
VALUES	(1, 'DeuBug', 100, 80, '18/01/2019', '02/03/2021'),
	    (4, 'BitBug', 70, 100, '17/03/2016', '02/03/2021'),
		(7, 'Fer8', 75, 60, '18/03/2018', '02/03/2021');

INSERT INTO Tipo_de_Habilidade (Tipo_de_Habilidade)
VALUES	('Ataque'),
	    ('Defesa'),
		('Cura'),
		('Magia');

INSERT INTO Habilidades (idTipoHabilidade, Nome_Habilidade)
VALUES	(1, 'Lan�a Mortal'),
	    (2, 'Escudo Supremo'),
		(3, 'Recuperar Vida');

INSERT INTO Habilidades_da_Classe (idClasse, idHabilidade)
VALUES	(1, 1),
	    (1, 2),
		(2, 2),
		(3, 1),
		(4, 3),
		(4, 2),
		(6, 3);
		

UPDATE Personagens
SET Nome_do_Personagem = 'Fer7'
WHERE idPersonagem = 3;


UPDATE Classes
SET Nome_da_Classe = 'Necromancer'
WHERE idClasse = 5;