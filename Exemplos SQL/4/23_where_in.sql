-- Cidades específicas

SELECT *
FROM funcionarios
WHERE cidade IN ('Recife', 'Fortaleza', 'Natal');

-- IDs específicos

SELECT *
FROM funcionarios
WHERE id IN (1, 3, 5, 8);