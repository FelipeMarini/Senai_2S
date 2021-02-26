CREATE DATABASE Ecommerce;

USE Ecommerce;

CREATE TABLE Clientes
(
	idCliente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Lojas
(
	idLoja INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Categorias
(
	idCategoria INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	idLoja INT FOREIGN KEY REFERENCES Lojas(idLoja)
);

CREATE TABLE Subcategorias
(
	idSubcategoria INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	idCategoria INT FOREIGN KEY REFERENCES Categorias(idCategoria)
);

CREATE TABLE Produtos
(
	idProduto INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(50) NOT NULL,
	Valor SMALLMONEY NOT NULL,
	idSubcategoria INT FOREIGN KEY REFERENCES Subcategorias(idSubcategoria)
);

CREATE TABLE Pedidos
(
	idPedido INT PRIMARY KEY IDENTITY,
	NumeroPedido INT NOT NULL,
	dataPedido SMALLDATETIME NOT NULL,
	idCliente INT FOREIGN KEY REFERENCES Clientes(idCliente),
	Status VARCHAR(30) NOT NULL
);

CREATE TABLE PedidosProdutos
(
	idPedido INT FOREIGN KEY REFERENCES Pedidos(idPedido),
	idProduto INT FOREIGN KEY REFERENCES Produtos(idProduto)
);




