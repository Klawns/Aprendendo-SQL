#db 
### Contexto

Considere as seguintes tabelas:

```sql
CLIENTE
- id_cliente
- nome
- email

PEDIDO
- id_pedido
- id_cliente
- data_pedido
- valor
```

Relacionamento:

```text
CLIENTE 1 -------- N PEDIDO
```

---

## 1. Clientes com ou sem pedidos

Uma empresa deseja listar **todos os seus clientes**, incluindo aqueles que **nunca realizaram nenhum pedido**.

**Questão:**  
Escreva uma consulta SQL que retorne:

- nome do cliente;
    
- e-mail do cliente;
    
- ID do pedido.
    

Use `LEFT JOIN`.

---

## 2. Clientes que nunca fizeram pedidos

O setor comercial deseja identificar clientes cadastrados que **ainda não realizaram nenhuma compra**.

**Questão:**  
Faça uma consulta que retorne apenas os clientes que **não possuem pedidos**.

---

## 3. Histórico completo de clientes

Uma empresa quer gerar um relatório contendo **todos os clientes e seus pedidos**, mesmo quando determinado cliente não possui nenhum pedido.

**Questão:**  
Retorne:

- nome do cliente;
    
- data do pedido;
    
- valor do pedido.
    

Ordene pelo nome do cliente.

---

## 4. Quantidade de pedidos por cliente

A empresa quer descobrir quantos pedidos cada cliente já realizou. Clientes sem pedidos também devem aparecer no relatório.

**Questão:**  
Retorne:

- nome do cliente;
    
- quantidade de pedidos.
    

> Um cliente sem pedidos deve aparecer com quantidade `0`.

---

## 5. Total gasto por cliente

O setor financeiro deseja saber quanto cada cliente já gastou na empresa.

**Questão:**  
Retorne:

- nome do cliente;
    
- valor total gasto.
    

Clientes que nunca fizeram pedidos também devem aparecer.

> Para esses clientes, o valor total deve ser `0`.

---

## 6. Clientes sem compras recentes

Considere que a empresa deseja analisar os clientes que **não realizaram pedidos em 2026**.

**Questão:**  
Escreva uma consulta utilizando `LEFT JOIN` que mostre os clientes que não possuem nenhum pedido realizado em 2026.

---

## 7. Loja de produtos

Agora considere:

```sql
PRODUTO
- id_produto
- nome
- preco
- id_categoria

CATEGORIA
- id_categoria
- nome
```

Uma loja deseja listar **todas as categorias**, incluindo aquelas que ainda não possuem produtos cadastrados.

**Questão:**  
Retorne:

- nome da categoria;
    
- nome do produto;
    
- preço do produto.
    

---

## 8. Categorias vazias

A administração da loja quer descobrir quais categorias estão cadastradas, mas **não possuem nenhum produto**.

**Questão:**  
Utilize `LEFT JOIN` para encontrar essas categorias.

---

## 9. Funcionários e departamentos

Considere:

```sql
FUNCIONARIO
- id_funcionario
- nome
- salario
- id_departamento

DEPARTAMENTO
- id_departamento
- nome
```

A empresa deseja listar **todos os departamentos**, inclusive aqueles que ainda não possuem funcionários.

**Questão:**  
Retorne:

- nome do departamento;
    
- nome do funcionário;
    
- salário.
    

---

## 10. Funcionários sem departamento

Alguns funcionários podem estar cadastrados sem departamento.

**Questão:**  
Utilizando `LEFT JOIN`, mostre:

- nome do funcionário;
    
- nome do departamento.
    

Funcionários sem departamento também devem aparecer.

---

## 11. Sistema universitário

Considere:

```sql
ALUNO
- id_aluno
- nome
- curso

MATRICULA
- id_matricula
- id_aluno
- disciplina
- nota
```

A universidade deseja listar **todos os alunos**, inclusive aqueles que ainda não possuem nenhuma matrícula.

**Questão:**  
Retorne:

- nome do aluno;
    
- curso;
    
- disciplina;
    
- nota.
    

---

## 12. Alunos sem matrícula

A secretaria deseja encontrar alunos que estão cadastrados no sistema, mas **não possuem nenhuma matrícula**.

**Questão:**  
Faça uma consulta utilizando `LEFT JOIN` para encontrar esses alunos.

---

## 13. Desafio — `LEFT JOIN` + `GROUP BY`

Uma empresa deseja gerar um relatório com:

- nome do cliente;
    
- quantidade de pedidos;
    
- valor total gasto.
    

Todos os clientes devem aparecer, inclusive aqueles que nunca compraram.

**Questão:**  
Escreva a consulta utilizando:

- `LEFT JOIN`;
    
- `GROUP BY`;
    
- `COUNT`;
    
- `SUM`.
    

---

## 14. Desafio — cuidado com `WHERE`

Considere a consulta:

```sql
SELECT c.nome, p.data_pedido
FROM cliente c
LEFT JOIN pedido p
    ON c.id_cliente = p.id_cliente
WHERE p.valor > 100;
```

**Questão:**

Explique por que essa consulta pode deixar de retornar clientes que **não possuem pedidos**.

Depois, reescreva a consulta para manter o comportamento de `LEFT JOIN`.

---

## 15. Desafio final

Considere:

```sql
CLIENTE
- id_cliente
- nome

PEDIDO
- id_pedido
- id_cliente
- status

PAGAMENTO
- id_pagamento
- id_pedido
- valor
```

Uma empresa deseja gerar um relatório com **todos os clientes**, mostrando:

- nome do cliente;
    
- quantidade de pedidos;
    
- quantidade de pedidos pagos;
    
- valor total pago.
    

Clientes sem pedidos também devem aparecer.

**Questão:**  
Resolva utilizando `LEFT JOIN` e agregações.

Se quiser treinar de verdade, uma boa sequência é fazer as questões **1 → 2 → 4 → 5 → 6 → 13 → 14 → 15**, porque elas vão te obrigar a entender as diferenças entre `LEFT JOIN`, `WHERE`, `COUNT` e `SUM`.Claro. Aqui estão **questões de `LEFT JOIN` contextualizadas**, começando mais simples e aumentando a dificuldade. Vou deixar no estilo de exercício de faculdade, sem respostas.

### Contexto

Considere as seguintes tabelas:

```sql
CLIENTE
- id_cliente
- nome
- email

PEDIDO
- id_pedido
- id_cliente
- data_pedido
- valor
```

Relacionamento:

```text
CLIENTE 1 -------- N PEDIDO
```

---

## 1. Clientes com ou sem pedidos

Uma empresa deseja listar **todos os seus clientes**, incluindo aqueles que **nunca realizaram nenhum pedido**.

**Questão:**  
Escreva uma consulta SQL que retorne:

- nome do cliente;
    
- e-mail do cliente;
    
- ID do pedido.
    

Use `LEFT JOIN`.

---

## 2. Clientes que nunca fizeram pedidos

O setor comercial deseja identificar clientes cadastrados que **ainda não realizaram nenhuma compra**.

**Questão:**  
Faça uma consulta que retorne apenas os clientes que **não possuem pedidos**.

---

## 3. Histórico completo de clientes

Uma empresa quer gerar um relatório contendo **todos os clientes e seus pedidos**, mesmo quando determinado cliente não possui nenhum pedido.

**Questão:**  
Retorne:

- nome do cliente;
    
- data do pedido;
    
- valor do pedido.
    

Ordene pelo nome do cliente.

---

## 4. Quantidade de pedidos por cliente

A empresa quer descobrir quantos pedidos cada cliente já realizou. Clientes sem pedidos também devem aparecer no relatório.

**Questão:**  
Retorne:

- nome do cliente;
    
- quantidade de pedidos.
    

> Um cliente sem pedidos deve aparecer com quantidade `0`.

---

## 5. Total gasto por cliente

O setor financeiro deseja saber quanto cada cliente já gastou na empresa.

**Questão:**  
Retorne:

- nome do cliente;
    
- valor total gasto.
    

Clientes que nunca fizeram pedidos também devem aparecer.

> Para esses clientes, o valor total deve ser `0`.

---

## 6. Clientes sem compras recentes

Considere que a empresa deseja analisar os clientes que **não realizaram pedidos em 2026**.

**Questão:**  
Escreva uma consulta utilizando `LEFT JOIN` que mostre os clientes que não possuem nenhum pedido realizado em 2026.

---

## 7. Loja de produtos

Agora considere:

```sql
PRODUTO
- id_produto
- nome
- preco
- id_categoria

CATEGORIA
- id_categoria
- nome
```

Uma loja deseja listar **todas as categorias**, incluindo aquelas que ainda não possuem produtos cadastrados.

**Questão:**  
Retorne:

- nome da categoria;
    
- nome do produto;
    
- preço do produto.
    

---

## 8. Categorias vazias

A administração da loja quer descobrir quais categorias estão cadastradas, mas **não possuem nenhum produto**.

**Questão:**  
Utilize `LEFT JOIN` para encontrar essas categorias.

---

## 9. Funcionários e departamentos

Considere:

```sql
FUNCIONARIO
- id_funcionario
- nome
- salario
- id_departamento

DEPARTAMENTO
- id_departamento
- nome
```

A empresa deseja listar **todos os departamentos**, inclusive aqueles que ainda não possuem funcionários.

**Questão:**  
Retorne:

- nome do departamento;
    
- nome do funcionário;
    
- salário.
    

---

## 10. Funcionários sem departamento

Alguns funcionários podem estar cadastrados sem departamento.

**Questão:**  
Utilizando `LEFT JOIN`, mostre:

- nome do funcionário;
    
- nome do departamento.
    

Funcionários sem departamento também devem aparecer.

---

## 11. Sistema universitário

Considere:

```sql
ALUNO
- id_aluno
- nome
- curso

MATRICULA
- id_matricula
- id_aluno
- disciplina
- nota
```

A universidade deseja listar **todos os alunos**, inclusive aqueles que ainda não possuem nenhuma matrícula.

**Questão:**  
Retorne:

- nome do aluno;
    
- curso;
    
- disciplina;
    
- nota.
    

---

## 12. Alunos sem matrícula

A secretaria deseja encontrar alunos que estão cadastrados no sistema, mas **não possuem nenhuma matrícula**.

**Questão:**  
Faça uma consulta utilizando `LEFT JOIN` para encontrar esses alunos.

---

## 13. Desafio — `LEFT JOIN` + `GROUP BY`

Uma empresa deseja gerar um relatório com:

- nome do cliente;
    
- quantidade de pedidos;
    
- valor total gasto.
    

Todos os clientes devem aparecer, inclusive aqueles que nunca compraram.

**Questão:**  
Escreva a consulta utilizando:

- `LEFT JOIN`;
    
- `GROUP BY`;
    
- `COUNT`;
    
- `SUM`.
    

---

## 14. Desafio — cuidado com `WHERE`

Considere a consulta:

```sql
SELECT c.nome, p.data_pedido
FROM cliente c
LEFT JOIN pedido p
    ON c.id_cliente = p.id_cliente
WHERE p.valor > 100;
```

**Questão:**

Explique por que essa consulta pode deixar de retornar clientes que **não possuem pedidos**.

Depois, reescreva a consulta para manter o comportamento de `LEFT JOIN`.

---

## 15. Desafio final

Considere:

```sql
CLIENTE
- id_cliente
- nome

PEDIDO
- id_pedido
- id_cliente
- status

PAGAMENTO
- id_pagamento
- id_pedido
- valor
```

Uma empresa deseja gerar um relatório com **todos os clientes**, mostrando:

- nome do cliente;
    
- quantidade de pedidos;
    
- quantidade de pedidos pagos;
    
- valor total pago.
    

Clientes sem pedidos também devem aparecer.

**Questão:**  
Resolva utilizando `LEFT JOIN` e agregações.

Se quiser treinar de verdade, uma boa sequência é fazer as questões **1 → 2 → 4 → 5 → 6 → 13 → 14 → 15**, porque elas vão te obrigar a entender as diferenças entre `LEFT JOIN`, `WHERE`, `COUNT` e `SUM`.