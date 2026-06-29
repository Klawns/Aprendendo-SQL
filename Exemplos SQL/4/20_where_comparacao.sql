-- Igual

SELECT *
FROM funcionarios
WHERE cidade = 'Recife';

-- Diferente

SELECT *
FROM funcionarios
WHERE cidade <> 'Recife';

-- Maior

SELECT *
FROM funcionarios
WHERE salario > 7000;

-- Menor

SELECT *
FROM funcionarios
WHERE idade < 30;

-- Maior ou igual

SELECT *
FROM funcionarios
WHERE salario >= 6500;

-- Menor ou igual

SELECT *
FROM funcionarios
WHERE idade <= 25;