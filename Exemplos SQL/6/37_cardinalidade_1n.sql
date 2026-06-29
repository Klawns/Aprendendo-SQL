-- Adicionando o relacionamento entre a tabela funcionarios e telefones
ALTER TABLE `telefones` ADD FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`);
