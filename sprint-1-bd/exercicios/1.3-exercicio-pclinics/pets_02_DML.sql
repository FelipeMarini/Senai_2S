USE Pets;

INSERT INTO Clinicas(RazaoSocial,Cnpj,Endereco)
VALUES ('PetLove',123,'Rua Abacaxi, 900'),
	   ('PetsForever',456,'Rua Laranja, 1300');

INSERT INTO TiposPets(Descricao)
VALUES ('Cachorro'),('Gato'),('Pássaro');

INSERT INTO Racas(Descricao,idTipoPet)
VALUES ('Poodle', 1),
	   ('Labrador', 1),
	   ('Siamês', 2),
	   ('Maritaca', 3);

INSERT INTO Veterinarios(Nome,Crmv,idClinica)
VALUES ('Felipe', 333, 1),
	   ('Carlos', 444, 2),
	   ('Jonas', 555, 2);

INSERT INTO Donos(Nome)
VALUES ('Marcos'),('Karla'),('Beatriz'),('Bianca');

INSERT INTO Pets(Nome,dataNascimento,idRaca,idDono)
VALUES ('Lola', 08/08/2008, 1, 1),
	   ('Rex', 09/09/2009, 2, 2),
	   ('Garfield', 10/10/2010, 3, 3),
	   ('Sofia', 11/11/2011, 4, 4);

INSERT INTO Atendimentos(Descricao,dataAtendimento,idVeterinario,idPet)
VALUES ('Estado Crítico', 01/01/2001, 1, 1),
	   ('Situação Estável', 02/02/2002, 2, 2),
	   ('Aguardando Cirurgia', 03/03/2003, 3, 3),
	   ('Estado Estável', 04/04/2004, 3, 4);