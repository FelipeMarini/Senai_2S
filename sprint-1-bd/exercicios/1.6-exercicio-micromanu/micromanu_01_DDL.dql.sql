CREATE DATABASE MicroManu;

USE MicroManu;

CREATE TABLE Clientes
(
	idCliente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Itens
(
	idItem INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
);

CREATE TABLE TiposConsertos
(
	idTipoConserto INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(50) NOT NULL
);

CREATE TABLE Colaboradores
(
	idColaborador INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	Salario SMALLMONEY NOT NULL
);

CREATE TABLE Pedidos
(
	idPedido INT PRIMARY KEY IDENTITY,
	idCliente INT FOREIGN KEY REFERENCES Clientes(idCliente),
	idItem INT FOREIGN KEY REFERENCES Itens(idItem),
	idTipoConserto INT FOREIGN KEY REFERENCES TiposConsertos(idTipoConserto),
	NumeroEquipamento INT NOT NULL,
	dataEntrada DATETIME NOT NULL,
	dataSaida DATETIME NOT NULL
);

CREATE TABLE PedidosColaboradores
(
	idPedido INT FOREIGN KEY REFERENCES Pedidos(idPedido),
	idColaborador INT FOREIGN KEY REFERENCES Colaboradores(idColaborador)
);

