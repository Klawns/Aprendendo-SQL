-- AND

SELECT *
FROM funcionarios
WHERE cidade = 'Recife'
AND ativo = TRUE;

-- OR

SELECT *
FROM funcionarios
WHERE cidade = 'Recife'
OR cidade = 'São Paulo';

-- NOT

SELECT *
FROM funcionarios
WHERE NOT ativo = TRUE;