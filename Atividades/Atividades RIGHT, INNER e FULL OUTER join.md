## Questão 1

Uma loja possui as tabelas:

- **cliente** (`id_cliente`, `nome`)
- **pedido** (`id_pedido`, `id_cliente`, `valor`)

Escreva uma consulta que liste o nome de **todos os clientes**, mostrando também o valor de seus pedidos, **mesmo que alguns clientes nunca tenham realizado um pedido**.

---

## Questão 2

Uma universidade possui as tabelas:

- **aluno** (`id_aluno`, `nome`)
- **matricula** (`id_matricula`, `id_aluno`, `curso`)

Crie uma consulta que exiba apenas os alunos que **possuem matrícula registrada**, juntamente com o curso em que estão matriculados.

---

## Questão 3

Uma empresa possui:

- **funcionario** (`id_funcionario`, `nome`)
- **departamento** (`id_departamento`, `nome_departamento`, `id_funcionario_responsavel`)

Liste **todos os departamentos**, incluindo aqueles que **ainda não possuem um responsável definido**, mostrando também o nome do funcionário quando existir.

---

## Questão 4

Um sistema possui:

- **produto** (`id_produto`, `nome`)
- **estoque** (`id_produto`, `quantidade`)

Escreva uma consulta que mostre apenas os produtos que **possuem informação de estoque cadastrada**.

---

## Questão 5

Um hospital possui:

- **medico** (`id_medico`, `nome`)
- **consulta** (`id_consulta`, `id_medico`, `data_consulta`)

Liste **todos os médicos**, inclusive aqueles que **nunca realizaram uma consulta**.

---

## Questão 6

Uma empresa possui:

- **funcionario** (`id_funcionario`, `nome`)
- **projeto** (`id_projeto`, `nome_projeto`, `id_funcionario`)

Crie uma consulta que mostre apenas os funcionários que **estão associados a um projeto**.

---

## Questão 7

Um e-commerce possui:

- **cliente** (`id_cliente`, `nome`)
- **pedido** (`id_pedido`, `id_cliente`)

Liste **todos os pedidos**, mostrando também o nome do cliente, **mesmo que algum pedido esteja sem cliente associado**.


## Questão 8

Uma escola possui:

- **professor** (`id_professor`, `nome`)
- **turma** (`id_turma`, `nome_turma`, `id_professor`)

Escreva uma consulta que apresente **todas as turmas**, inclusive aquelas que **ainda não possuem professor**.

---

## Questão 9

Uma biblioteca possui:

- **livro** (`id_livro`, `titulo`)
- **emprestimo** (`id_emprestimo`, `id_livro`, `data`)

Liste apenas os livros que **já foram emprestados pelo menos uma vez**.

---

## Questão 10

Uma empresa possui:

- **cliente** (`id_cliente`, `nome`)
- **pedido** (`id_pedido`, `id_cliente`)

Crie uma consulta que apresente **todos os clientes**, **todos os pedidos**, inclusive quando **não houver correspondência entre eles**, exibindo as informações disponíveis de cada lado.

---

## Questão 11

Um sistema de RH possui:

- **funcionario** (`id_funcionario`, `nome`)
- **folha_pagamento** (`id_folha`, `id_funcionario`, `salario`)

Mostre **todos os funcionários** e **todos os registros da folha de pagamento**, incluindo aqueles que **existem apenas em uma das tabelas**.

---

## Questão 12

Uma plataforma de cursos possui:

- **curso** (`id_curso`, `nome`)
- **inscricao** (`id_inscricao`, `id_curso`, `id_aluno`)

Liste **todos os cursos**, mostrando suas inscrições quando existirem, **inclusive os cursos sem inscrições**.

---

## Questão 13

Uma empresa possui:

- **fornecedor** (`id_fornecedor`, `nome`)
- **produto** (`id_produto`, `nome`, `id_fornecedor`)

Mostre apenas os fornecedores que **possuem pelo menos um produto cadastrado**.

---

## Questão 14

Um cinema possui:

- **filme** (`id_filme`, `titulo`)
- **sessao** (`id_sessao`, `id_filme`, `horario`)

Liste **todos os filmes**, inclusive aqueles que **ainda não possuem sessões agendadas**.

---

## Questão 15 (Mistura dos três)

Uma empresa possui:

- **cliente** (`id_cliente`, `nome`)
- **pedido** (`id_pedido`, `id_cliente`)

Escreva três consultas diferentes:

1. Mostrar **somente os clientes que possuem pedidos**.
2. Mostrar **todos os clientes**, mesmo aqueles **sem pedidos**.
3. Mostrar **todos os clientes e todos os pedidos**, inclusive quando **não houver correspondência entre eles**.