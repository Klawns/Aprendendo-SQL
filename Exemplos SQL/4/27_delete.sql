-- Removendo um funcionário

DELETE FROM funcionarios
WHERE id = 8;

-- Removendo todos os funcionários inativos

DELETE FROM funcionarios
WHERE ativo = FALSE;

-- Removendo funcionários com salário menor que 3000

DELETE FROM funcionarios
WHERE salario < 3000;

-- Removendo funcionários de uma cidade

DELETE FROM funcionarios
WHERE cidade = 'Natal';

-- Apagando todos os registros

DELETE FROM funcionarios;