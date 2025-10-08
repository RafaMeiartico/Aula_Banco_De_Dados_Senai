USE db_escola_M;

--CONSUTLA QUE IRÁ EXIBIR SOMENTE AS COLUNAS(diferente do *)
SELECT id, nome FROM tb_escola;

--SELECT TOP LIMITA A QUANTIDADE DE REGISTROS
SELECT TOP 3 nome FROM tb_aluno;

--EXIBIR SOMENTE 3 REGISTROS DO MAIS RECENTE PARA O MENOS RECENTE
SELECT TOP 3 nome from tb_aluno
ORDER BY id DESC;

--EXIBE SOMENTE O NOME DA TURMA DO PERIODO DA MANHÃ

SELECT nome_turma
FROM tb_turma
WHERE periodo = 'Manha'

--EXIBE A PROVA DA PROFESSOR FERNANDA

SELECT * FROM tb_prova
WHERE nome_professor = 'Fernanda';

--EXIBE QUANTOS ALUNOS TEM

SELECT COUNT(cpf) AS qtd_total_alunos FROM tb_aluno;

--EXIBE QUANROS ALUNOS ESTÃO ATRELADOS A PROVA DE HISTÓRIA

SELECT COUNT(id_aluno) AS qnt_alunos_prova_hist FROM tb_prova
Where materia = 'História';

--select nome from tb_aluno

SELECT COUNT(nome) AS qnt_nome FROM tb_aluno;

--exibe o aluno mais velho
SELECT nome, data_nasc
FROM tb_aluno
WHERE data_nasc = (SELECT MIN(data_nasc) FROM tb_aluno);

--exibe o aluno mais velho

SELECT MAX(data_nasc) FROM tb_aluno;

--SOMA OS ID's DAS TURMAS CADASTRADAS

SELECT SUM(id) AS total FROM tb_turma;

--MEDIA DE NOTAS DE PROVA
SELECT AVG(nota) AS media FROM tb_prova;

--EXIBE OS ID's E A DATA DE NASCIMENTO DOS MAIS NOVOS
SELECT MAX(data_nasc) AS mais_novo, id
FROM tb_aluno
GROUP BY id
ORDER BY mais_novo DESC;