-- Começa com B

SELECT *
FROM funcionarios
WHERE nome LIKE 'B%';

-- Termina com a

SELECT *
FROM funcionarios
WHERE nome LIKE '%a';

-- Contém "ar"

SELECT *
FROM funcionarios
WHERE nome LIKE '%ar%';

-- Segunda letra = a

SELECT *
FROM funcionarios
WHERE nome LIKE '_a%';