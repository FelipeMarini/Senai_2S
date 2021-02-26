USE Veiculos;

INSERT INTO Empresas(Nome)
VALUES ('Unidas'),('Localiza');

INSERT INTO Marcas(Nome)
VALUES ('Ford'),('GM'),('Fiat');

INSERT INTO Modelos(Descricao,idMarca)
VALUES ('Fiesta', 1),('Onix', 2),('Argo', 3);

INSERT INTO Veiculos(idModelo,Placa,idEmpresa)
VALUES (1,'ABC123',1),(2,'DEF456',1),(3,'GHI789',2),(1,'JKL012',2);

INSERT INTO Clientes(Nome,Cpf)
VALUES ('Felipe',000000),('Yohan',999999);

INSERT INTO Alugueis(idCliente,idVeiculo,dataInicio,dataFim)
VALUES (1,1,01/01/2001,02/01/2001),
	   (1,2,02/02/2002,03/02/2002),
	   (2,3,03/03/2003,04/03/2003),
	   (2,2,04/04/2004,05/04/2004);

UPDATE Clientes
SET Cpf = 888888
WHERE idCliente = 1;

UPDATE Alugueis
SET dataInicio = 2002-11-07
WHERE idAluguel = 1;