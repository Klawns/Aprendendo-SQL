-- Adicionando o relacionamento entre a tabela funcionarios e enderecos
ALTER TABLE `funcionarios_enderecos` ADD FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`);
