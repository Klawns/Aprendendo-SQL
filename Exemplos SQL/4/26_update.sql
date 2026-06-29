-- Atualizando um funcionário

UPDATE funcionarios
SET salario = 7000
WHERE id = 1;

-- Atualizando várias colunas

UPDATE funcionarios
SET
    cidade = 'João Pessoa',
    ativo = FALSE
WHERE id = 2;

-- Aumentando o salário dos desenvolvedores

UPDATE funcionarios
SET salario = salario + 500
WHERE cargo = 'Desenvolvedor';

-- Ativando todos os funcionários de Recife

UPDATE funcionarios
SET ativo = TRUE
WHERE cidade = 'Recife';

-- Atualizando todos os registros, porém, o workbench não ira rodar por conta do safe mode

UPDATE funcionarios
SET ativo = TRUE;