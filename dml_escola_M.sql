--Comando para usar um banco de dados já criado

USE db_escola_M;

--Comando para inserir um novo registro

INSERT  INTO tb_escola(nome, endereco)
VALUES('Moura Branco', 'Rua Tapajós 1085 - Olímpico');

SELECT * FROM tb_escola;

--REGISTRO NA TABELA ALUNO

INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola)
VALUES
('Anne', '35789685013', '2008/02/26', '16lhHmN8Ey', 1),
('Maria', '43283221090', '2008/09/06', 'nKsq06XDPp', 1);

--ADICIONANDO MAIS 5 ALUNOS NA TABELA ALUNO

INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola)
VALUES
('Rafa', '37306797085', '2008/11/17', 'uKicN17Eh8', 1),
('Salgado', '82088252045', '2009/03/24', 'ccnR0odMTu', 1),
('Fidalgo', '57548421044', '2009/03/08', 'GJRYXrn7w0', 1),
('Julio', '52170841032', '2009/03/08', 'SWZlnb4SrN', 1),
('Vieira', '36531569042', '2009/03/08', 'JcNpqeHTYM', 1);

SELECT * FROM tb_aluno;

--REGISTRO NA TABELA TURMA

INSERT INTO tb_turma(numero_sala, periodo, serie, nome_turma, id_escola)
VALUES
('5','Manha', '2ºA', 'Ensino Médio', 1),
('5','Noite', '3ºB', 'Ensino Fundamental 1', 1);

SELECT * FROM tb_turma;

--REGISTRO NA TABELA PROVA

INSERT INTO tb_prova(nome_professor, materia, duracao, nota, data_prova,id_aluno)
VALUES
('Aléxia', 'Tecnologia', '01:30:00', '1.0', '2025/11/09', 4),
('Fernanda', 'História', '02:30:00', '1.0', '2025/09/25', 5);

SELECT * FROM tb_prova;

--TABELA TURMAPROVA - INTERMEDIÁRIA

INSERT INTO tb_turma_prova(id_turma, id_prova)
VALUES 
(4, 5),
(4, 4);

SELECT * FROM tb_turma_prova;

--COMANDO PARA ATUALIZAR O NOME DE UM ALUNO PLEO SEU CPF

UPDATE tb_aluno
SET nome = 'Aléxia'
WHERE cpf = '37306797085'

UPDATE tb_aluno
SET nome = 'Isabella'
WHERE cpf = '37306797085'

SELECT * FROM tb_aluno;

--COMANDO QUE EXCLUI UM REGISTRO

DELETE FROM tb_turma
WHERE nome_turma = 'Turma';

DELETE FROM tb_turma 
WHERE id = 5;

SELECT * FROM tb_turma;


