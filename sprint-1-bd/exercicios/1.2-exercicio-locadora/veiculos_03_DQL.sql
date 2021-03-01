USE Veiculos;

SELECT * FROM Empresas;

SELECT * FROM Marcas;

SELECT * FROM Modelos;

SELECT * FROM Veiculos;

SELECT * FROM Clientes;

SELECT * FROM Alugueis;

SELECT Alugueis.dataInicio AS Retirada, Alugueis.dataFim AS Devolução, 
Clientes.Nome AS Cliente, Modelos.Descricao AS Modelo
FROM Alugueis
INNER JOIN Clientes ON Alugueis.idCliente = Clientes.idCliente
INNER JOIN Modelos ON Alugueis.idVeiculo = Modelos.idModelo;

SELECT Clientes.Nome, Alugueis.dataInicio AS Retirada, 
Alugueis.dataFim AS Devolução, Modelos.Descricao AS Modelo
FROM Alugueis
INNER JOIN Clientes ON Alugueis.idCliente = Clientes.idCliente
INNER JOIN Modelos ON Alugueis.idVeiculo = Modelos.idModelo
WHERE Clientes.idCliente = 1;

