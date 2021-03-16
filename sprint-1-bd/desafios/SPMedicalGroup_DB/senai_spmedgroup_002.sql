USE SP_Medical_Group;
GO

INSERT INTO Clinicas(nomeClinica,cnpj,razaoSocial,horarioAbertura,horarioFechamento)
VALUES ('Clínica Saulo', 12339788389011, 'SP Medical Group', '08:00', '18:00'),
	   ('Clínica Felipe', 36654991143223, 'SP Medical Group', '09:00', '19:00');
GO

INSERT INTO TiposUsuarios(tituloTipoUsuario)
VALUES ('Administrador'),
	   ('Médico'),
	   ('Paciente');
GO

INSERT INTO Especialidades(tituloEspecialidade)
VALUES ('Acupuntura'),
	   ('Anestesiologia'),
	   ('Angiologia'),
	   ('Cardiologia'),
	   ('Cirurgia Cardiovascular'),
	   ('Cirurgia da Mão'),
	   ('Cirurgia do Aparelho Digestivo'),
	   ('Cirurgia Geral'),
	   ('Cirurgia Pediátrica'),
	   ('Cirurgia Plástica'),
	   ('Cirurgia Torácica'),
	   ('Cirurgia Vascular'),
	   ('Dermatologia'),
	   ('Radioterapia'),
	   ('Urologia'),
	   ('Pediatria'),
	   ('Psiquiatria');
GO

INSERT INTO Situacao(descricaoSituacao)
VALUES ('Agendada'),
	   ('Realizada'),
	   ('Cancelada');
GO

INSERT INTO Usuarios(idTipoUsuario,email,senha)
VALUES (1, 'saulo@email.com', '89043'),
	   (2, 'lemos@email.com', '78456'),
	   (2, 'possarle@uol.com', '89765'),
	   (2, 'strada@bol.com', '33897'),
	   (3, 'felipemarini71188@gmail.com', '77341'),
	   (3, 'ligia@uol.com', '44813'),
	   (3, 'alexandre@bol.com', '11122'),
	   (3, 'fernando@gmail.com', '44477'),
	   (3, 'henrique@outlook.com', '78903'),
	   (3, 'joao@uol.com.br', '23451'),
	   (3, 'bruno@hotmail.com.br', '12345');
GO

INSERT INTO Pacientes(idUsuario,nomePaciente,dataNascimento,telefone,rg,cpf,endereco)
VALUES (5, 'Felipe', '07/11/1988', 11961050830, 460176225, 38715360830,
	   'Rua Catão, 1292 - São Paulo, SP'),
	   
	   (6, 'Lígia', '09/08/1985', 11976548976, 540982223, 45635699821,
	   'Rua Mamão, 13 - São Paulo, SP'),
	   
	   (7, 'Alexandre', '07/07/2007', 11976539087, 659884568, 32156799713,
	   'Rua Laranja, 67 - São Paulo, SP'),
	   
	   (8, 'Fernando', '06/06/2006', 11967885542, 778901229, 13578954726,
	   'Rua Pêssego, 900 - São Paulo, SP'),
	   
	   (9, 'Henrique', '05/05/2005', 11921345678, 457653217, 78823118910,
	   'Rua Limão, 17 - São Paulo, SP'),
	   
	   (10, 'João', '04/04/2004', 19980795532, 654539004, 12345678900,
	   'Rua Melancia, 69 - São Paulo, SP'),
	   
	   (11, 'Bruno', '03/03/2003', 31955677788, 219971245, 88933475826,
	   'Rua Morango, 77 - São Paulo, SP');
GO

INSERT INTO Medicos(idClinica,idEspecialidade,idUsuario,nomeMedico,crm)
VALUES (1, 2, 2, 'Ricardo Lemos', '45690-SP'),
	   (2, 17, 3, 'Roberto Possarle', '23498-SP'),
	   (2, 16, 4, 'Helena Strada', '33489-SP');

INSERT INTO Consultas(idMedico,idPaciente,idSituacao,dataConsulta,descricao)
VALUES (1, 1, 1, '11/03/2021 - 10:00', 'realizar anestesia'),
	   (1, 2, 1, '12/03/2021 - 11:00', 'consulta'),
	   (2, 3, 2, '13/03/2021 - 12:00', 'atendimento'),
	   (2, 4, 2, '14/03/2021 - 14:00', 'atendimento'),
	   (3, 5, 3, '15/03/2021 - 15:00', 'cirurgia'),
	   (3, 6, 3, '16/03/2021 - 16:00', 'consulta'),
	   (3, 7, 3, '17/03/2021 - 17:00', 'consulta');








