-- Adicionando uma coluna
ALTER TABLE funcionarios ADD cpf varchar(11);

-- Alterando uma coluna 
ALTER TABLE funcionarios MODIFY COLUMN cpf varchar(14);

-- Removendo uma coluna
ALTER TABLE funcionarios DROP COLUMN cpf;