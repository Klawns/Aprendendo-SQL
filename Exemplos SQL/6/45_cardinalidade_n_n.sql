-- Criando as tabelas de projetos e projetos auxiliares e as chaves estrangeiras

CREATE TABLE `projetos` (
  `id` integer PRIMARY KEY,
  `nome` text,
  `descricao` text
);

CREATE TABLE `funcionarios_projetos` (
  `funcionario_id` integer,
  `projeto_id` integer,
  PRIMARY KEY (`funcionario_id`, `projeto_id`)
);

ALTER TABLE `funcionarios_projetos` ADD FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`);

ALTER TABLE `funcionarios_projetos` ADD FOREIGN KEY (`projeto_id`) REFERENCES `projetos` (`id`);
