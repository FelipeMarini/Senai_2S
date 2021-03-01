USE Pets;

SELECT * FROM Clinicas;

SELECT * FROM TiposPets;

SELECT * FROM Racas;

SELECT * FROM Veterinarios;

SELECT * FROM Donos;

SELECT * FROM Pets;

SELECT * FROM Atendimentos;

SELECT Veterinarios.Nome AS Veterinário, Veterinarios.Crmv,
Clinicas.RazaoSocial AS Clínica
FROM Veterinarios
INNER JOIN  Clinicas ON Veterinarios.idClinica = Clinicas.idClinica
WHERE Clinicas.idClinica = 2;

SELECT Racas.Descricao AS Raça, TiposPets.Descricao AS Pet
FROM Racas 
INNER JOIN TiposPets ON Racas.idTipoPet = TiposPets.idTipoPet
WHERE Racas.Descricao LIKE 'S%';

SELECT TiposPets.idTipoPet, TiposPets.Descricao AS Descrição
FROM TiposPets
WHERE TiposPets.Descricao LIKE '%O';

SELECT Pets.idPet, Pets.Nome AS Nome, Donos.Nome AS Dono
FROM Pets
INNER JOIN Donos ON Pets.idDono = Donos.idDono;

SELECT Atendimentos.idAtendimento, Veterinarios.Nome AS Veterinário,
Pets.Nome, Racas.Descricao AS Raça, TiposPets.Descricao AS Tipo,
Donos.Nome AS Dono, Clinicas.RazaoSocial AS Clínica
FROM Atendimentos
INNER JOIN Veterinarios ON Atendimentos.idVeterinario = Veterinarios.idVeterinario
INNER JOIN Pets ON Atendimentos.idPet = Pets.idPet
INNER JOIN Racas ON Atendimentos.idPet = Racas.idRaca
INNER JOIN TiposPets ON Atendimentos.idPet = TiposPets.idTipoPet
RIGHT JOIN Donos ON Atendimentos.idPet = Donos.idDono
RIGHT JOIN Clinicas ON Atendimentos.idVeterinario = Clinicas.idClinica;
