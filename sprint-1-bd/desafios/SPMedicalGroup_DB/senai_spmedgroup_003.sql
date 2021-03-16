USE SP_Medical_Group;

-- mostrar os dados da clínica (Funcionalidade 4)
SELECT * FROM Clinicas;


-- o admnistrador pode cadastrar qualquer tipo de usuário (Funcionalidade 1)
SELECT * FROM TiposUsuarios;

SELECT * FROM Especialidades;


-- o admnistrador poderá cancelar o agendamento (Funcionalidade 3)
SELECT * FROM Situacao;


SELECT * FROM Usuarios;

SELECT * FROM Pacientes;

SELECT * FROM Medicos;

SELECT * FROM Consultas;


-- mostrar os tipos de usuários na tabela de usuários
SELECT idUsuario,
	   tituloTipoUsuario [Tipo de Usuário],
	   email

FROM Usuarios

INNER JOIN TiposUsuarios
ON TiposUsuarios.idTipoUsuario = Usuarios.idTipoUsuario



-- exibir os dados dos médicos, mostrando a clínica em que trabalha cada médico e
-- a especialidade de cada médico
SELECT idMedico,
	   nomeMedico [Médico],
	   tituloEspecialidade Especialidade,
	   nomeClinica [Clínica],
	   crm CRM

FROM Medicos M

INNER JOIN Especialidades E
ON M.idEspecialidade = E.idEspecialidade

INNER JOIN Clinicas C
ON M.idClinica = C.idClinica;



-- mostrar os dados das consultas de situação agendada 
-- o médico poderá incluir a descrição da consulta que estará vinculada ao paciente
-- (Funcionalidades 2 e 6)
SELECT nomePaciente Paciente,
	   nomeMedico Médico,
	   descricaoSituacao Situação,
	   dataConsulta [Data da Consulta],
	   descricao [Descrição]
	   
FROM Consultas C

INNER JOIN Pacientes P
ON C.idPaciente = P.idPaciente

INNER JOIN Medicos M
ON C.idMedico = M.idMedico

INNER JOIN Situacao S
ON C.idSituacao = S.idSituacao

WHERE S.idSituacao = 1;  -- situação agendada, idSituacao = 1



-- médico poderá ver as consultas (agendamentos) relacionadas a ele (Funcionalidade 5)
SELECT nomePaciente Paciente,
	   nomeMedico Médico,
	   descricaoSituacao Situação,
	   dataConsulta [Data da Consulta],
	   descricao [Descrição]
	   
FROM Consultas C

INNER JOIN Pacientes P
ON C.idPaciente = P.idPaciente

INNER JOIN Medicos M
ON C.idMedico = M.idMedico

INNER JOIN Situacao S
ON C.idSituacao = S.idSituacao

WHERE C.idMedico = 1;   -- consultas do médico Ricardo Lemos, idMedico = 1




-- (Funcionalidade 7)
-- o paciente poderá visualizar as suas próprias consultas
SELECT nomePaciente Paciente,
	   nomeMedico Médico,
	   descricaoSituacao Situação,
	   dataConsulta [Data da Consulta],
	   descricao [Descrição]
	   
FROM Consultas C

INNER JOIN Pacientes P
ON C.idPaciente = P.idPaciente

INNER JOIN Medicos M
ON C.idMedico = M.idMedico

INNER JOIN Situacao S
ON C.idSituacao = S.idSituacao

WHERE P.idPaciente = 1;  -- consultas do paciente Felipe, idPaciente = 1