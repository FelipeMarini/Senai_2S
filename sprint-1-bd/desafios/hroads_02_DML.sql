USE SENAI_HROADS_TARDE;

-- 3. Inserir os registros conforme descrição no próprio texto (classes, habilidades, tipos de habilidades e personagens)
INSERT INTO Classe (Nome_da_Classe)
VALUES	('Barbaro')
		, ('Cruzado')
		, ('Caçadora de Demônios')
		, ('Monge')
		, ('Necromante')
		, ('Feiticeiro')
		, ('Arcanista');

INSERT INTO Personagem (idClasse, Nome_do_Personagem, Vida_Maxima, Mana_Maxima, Data_de_Criacao, Data_de_Atualizacao)
VALUES	(1, 'DeuBug', 100, 80, '18/01/2019', '02/03/2021')
		, (4, 'BitBug', 70, 100, '17/03/2016', '02/03/2021')
		, (7, 'Fer8', 75, 60, '18/03/2018', '02/03/2021');

INSERT INTO Tipo_de_Habilidade (Tipo_de_Habilidade)
VALUES	('Ataque')
		, ('Defesa')
		, ('Cura')
		, ('Magia');

INSERT INTO Habilidade (idTipoHabilidade, Nome_Habilidade)
VALUES	(1, 'Lança Mortal')
		, (2, 'Escudo Supremo')
		, (3, 'Recuperar Vida');

INSERT INTO Habilidades_da_Classe (idClasse, idHabilidade)
VALUES	(1, 1)
		, (1, 2)
		, (2, 2)
		, (3, 1)
		, (4, 3)
		, (4, 2)
		, (6, 3);
		

-- 4. Atualizar o nome do personagem Fer8 para Fer7
UPDATE Personagem 
SET Nome_do_Personagem = 'Fer7'
WHERE idPersonagem = 3;

-- 5. Atualizar o nome da classe de Necromante para Necromancer
UPDATE Classe
SET Nome_da_Classe = 'Necromancer'
WHERE idClasse = 5;