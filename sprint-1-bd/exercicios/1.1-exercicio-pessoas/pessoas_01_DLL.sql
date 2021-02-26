CREATE DATABASE Pessoas;

USE Pessoas;

CREATE TABLE Pessoas
(
	idPessoa INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Telefones
(
	idTelefone INT PRIMARY KEY IDENTITY,
	Descricao INT NOT NULL,
	idPessoa INT FOREIGN KEY REFERENCES Pessoas(idPessoa)
);

CREATE TABLE Emails
(
	idEmail INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(50) NOT NULL,
	idPessoa INT FOREIGN KEY REFERENCES Pessoas(idPessoa)
);

CREATE TABLE Cnh
(
	idCnh INT PRIMARY KEY IDENTITY,
	Descricao INT NOT NULL,
	idPessoa INT FOREIGN KEY REFERENCES Pessoas(idPessoa)
);