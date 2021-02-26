USE MicroManu;

INSERT INTO Clientes(Nome)
VALUES ('Saulo'),('Caique'),('Felipe');

INSERT INTO Itens(Nome)
VALUES (' Computador - Notebook Dell'),
	   (' Televisor - Tv Sony'),
	   ('Celular - Iphone 6S'),
	   ('VideoGame - PS5');

INSERT INTO TiposConsertos(Descricao)
VALUES ('Manutenção'),
	   ('Limpeza'),
	   ('Troca de Peças');

INSERT INTO Pedidos(idCliente,idItem,idTipoConserto,NumeroEquipamento,
dataEntrada,dataSaida)

VALUES (1, 1, 1, 981, 01/01/2001, 02/01/2001),
	   (2, 2, 2, 789, 02/02/2002, 03/02/2002),
	   (3, 3, 1, 334, 03/03/2003, 04/03/2003),
	   (3, 4, 3, 120, 04/04/2004, 05/04/2004);

INSERT INTO Colaboradores(Nome,Salario)
VALUES ('Sálvio', 1000),
	   ('Ivan', 2000),
	   ('Marcelo', 3000),
	   ('Pedro', 4000),
	   ('Plínio', 5000);


INSERT INTO PedidosColaboradores(idPedido,idColaborador)
VALUES (1, 1),
	   (2, 2),
	   (3, 3),
	   (4, 4),
	   (4, 5);