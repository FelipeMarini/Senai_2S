USE Ecommerce;

INSERT INTO Clientes(Nome)
VALUES ('Felipe'),('Paulo'),('Thiago');

INSERT INTO Lojas(Nome)
VALUES ('SenaiShop'),('FelipeStore');

INSERT INTO Categorias(Nome,idLoja)
VALUES ('Alimentos', 1),
	   ('Vestuário', 1),
	   ('Eletrônicos', 2);

INSERT INTO Subcategorias(Nome,idCategoria)
VALUES ('Doces', 1),
	   ('Salgados', 1),
	   ('Roupas Femininas', 2),
	   ('Roupas Masculinas', 2),
	   ('Computadores', 3),
	   ('Celulares', 3);

INSERT INTO Produtos(Descricao,Valor,idSubcategoria)
VALUES ('Bala', 0.50, 1),
	   ('Salgadinho', 5, 2),
	   ('Camisola', 45, 3),
	   ('Camisa Social', 80, 4),
	   ('Notebook DELL 5SX', 3500.99, 5),
	   ('Samsung Galaxy W', 4000.75, 6);

INSERT INTO Pedidos(NumeroPedido,dataPedido,idCliente,Status)
VALUES (122, 06/06/2006, 1, 'Entregue'),
	   (133, 07/07/2007, 2, 'Entregue'),
	   (144, 08/08/2008, 3, 'Em Andamento');

INSERT INTO PedidosProdutos(idPedido,idProduto)
VALUES (1, 1),
	   (1, 2),
	   (2, 3),
	   (2, 4),
	   (3, 5),
	   (3, 6);