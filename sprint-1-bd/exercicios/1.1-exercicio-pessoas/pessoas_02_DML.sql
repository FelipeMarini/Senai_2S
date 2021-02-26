USE Pessoas;

INSERT INTO Pessoas(Nome)
VALUES ('Felipe'),('João'),('Pedro');

INSERT INTO Telefones(Descricao,idPessoa)
VALUES (111111, 1),(222222, 2),(333333, 3);

INSERT INTO Emails(Descricao,idPessoa)
VALUES ('f@gmail.com', 1),('j@uol.com', 2),('p@bol.com', 3);

INSERT INTO Cnh(Descricao,idPessoa)
VALUES ('4444', 1),('5555', 2),('6666', 3);