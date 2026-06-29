-- A coluna "endereco" é um atributo composto,
-- pois armazena rua, número, cidade e estado em um único campo.

-- Para atender à 1FN, devemos dividir esse atributo
-- em colunas atômicas.

-- Adiciona as novas colunas
ALTER TABLE funcionarios ADD COLUMN rua TEXT;
ALTER TABLE funcionarios ADD COLUMN numero INTEGER;
ALTER TABLE funcionarios ADD COLUMN cidade TEXT;
ALTER TABLE funcionarios ADD COLUMN estado CHAR(2);

-- o atributo composto "endereco" pode ser removido.
ALTER TABLE funcionarios DROP COLUMN endereco;