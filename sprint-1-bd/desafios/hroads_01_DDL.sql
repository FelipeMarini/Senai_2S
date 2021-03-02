
-- 1. Criar o banco de dados chamado SENAI_HROADS_MANHA/SENAI_HROADS_TARDE (conforme o período)
CREATE DATABASE SENAI_HROADS_TARDE;

USE SENAI_HROADS_TARDE;


-- 2. Criar as tabelas no banco de dados
CREATE TABLE Classe
(
	idClasse INT PRIMARY KEY IDENTITY
	, Nome_da_Classe VARCHAR(200)
);

CREATE TABLE Personagem
(
	idPersonagem INT PRIMARY KEY IDENTITY
	, idClasse INT FOREIGN KEY REFERENCES Classe(idCLasse)
	, Nome_do_Personagem VARCHAR(200) NOT NULL
	, Vida_Maxima INT NOT NULL
	, Mana_Maxima INT NOT NULL
	, Data_de_Criacao DATE NOT NULL
	, Data_de_Atualizacao DATE NOT NULL
);

CREATE TABLE Tipo_de_Habilidade
(
	idTipoHabilidade INT PRIMARY KEY IDENTITY
	, Tipo_de_Habilidade VARCHAR(200)
);

CREATE TABLE Habilidade
(
	idHabilidade INT PRIMARY KEY IDENTITY
	, idTipoHabilidade INT FOREIGN KEY REFERENCES Tipo_de_Habilidade(idTipoHabilidade)
	, Nome_Habilidade VARCHAR(200)
);

CREATE TABLE Habilidades_da_Classe
(
	idClasse INT FOREIGN KEY REFERENCES Classe(idCLasse)
	, idHabilidade INT FOREIGN KEY REFERENCES Habilidade(idHabilidade)
);