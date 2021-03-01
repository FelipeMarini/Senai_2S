USE Pessoas;

 SELECT * FROM Pessoas;
 
 SELECT * FROM Telefones;

 SELECT * FROM Emails;

 SELECT * FROM Cnh;

 SELECT Pessoas.Nome, 
	    Telefones.Descricao AS Telefone,
		Emails.Descricao AS Email,
		Cnh.Descricao AS CNH
 FROM Pessoas 
 INNER JOIN Telefones ON Pessoas.idPessoa = Telefones.idTelefone
 INNER JOIN Emails ON Pessoas.idPessoa = Emails.idPessoa
 INNER JOIN Cnh ON Pessoas.idPessoa = Cnh.idPessoa
 ORDER BY Nome DESC;