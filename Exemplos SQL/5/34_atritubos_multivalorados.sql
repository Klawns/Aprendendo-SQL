-- Suponha que a tabela possua uma coluna "telefones",
-- onde um funcionário pode possuir mais de um telefone.

ALTER TABLE funcionarios ADD COLUMN telefones TEXT;

-- Para atender à 1FN, criamos uma nova tabela
-- para armazenar os telefones.

CREATE TABLE funcionarios_telefones (
    id INTEGER PRIMARY KEY ,
    funcionario_id INTEGER NOT NULL,
    telefone TEXT NOT NULL,

    FOREIGN KEY (funcionario_id)
        REFERENCES funcionarios(id)
);

-- Após criar a nova tabela,
-- o atributo multivalorado pode ser removido.

ALTER TABLE funcionarios DROP COLUMN telefones;
