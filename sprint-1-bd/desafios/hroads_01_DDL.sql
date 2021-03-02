CREATE DATABASE Rpg_Hroads;

USE Rpg_Hroads;


CREATE TABLE Classes
(
	idClasse INT PRIMARY KEY IDENTITY, 
	Nome_da_Classe VARCHAR(200)
);

CREATE TABLE Personagens
(
	idPersonagem INT PRIMARY KEY IDENTITY, 
	idClasse INT FOREIGN KEY REFERENCES Classes(idCLasse),
	Nome_do_Personagem VARCHAR(200) NOT NULL,
	Vida_Maxima INT NOT NULL,
	Mana_Maxima INT NOT NULL,
	Data_de_Criacao DATETIME NOT NULL,
	Data_de_Atualizacao DATETIME NOT NULL
);

CREATE TABLE Tipo_de_Habilidade
(
	idTipoHabilidade INT PRIMARY KEY IDENTITY, 
	Tipo_de_Habilidade VARCHAR(200)
);

CREATE TABLE Habilidades
(
	idHabilidade INT PRIMARY KEY IDENTITY,
	idTipoHabilidade INT FOREIGN KEY REFERENCES Tipo_de_Habilidade(idTipoHabilidade),
	Nome_Habilidade VARCHAR(200)
);

CREATE TABLE Habilidades_da_Classe
(
	idClasse INT FOREIGN KEY REFERENCES Classes(idCLasse),
	idHabilidade INT FOREIGN KEY REFERENCES Habilidades(idHabilidade)
);