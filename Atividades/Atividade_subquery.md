# Exercícios

## Nível 1

### 1)👌

Liste todas as vendas cujo valor é maior que a média de todas as vendas.

---

### 2) 👌

Mostre os vendedores que realizaram alguma venda acima da média de todas as vendas.

---

### 3) 👌

Encontre o produto mais caro vendido.

---

### 4) 👌

Liste todas as vendas que possuem o mesmo valor da venda mais cara.

---

### 5) 👌

Mostre todas as vendas feitas na cidade que possui o maior número de vendas.

---
# Nível 1 - Lista 2

## 1)👌

Liste todas as vendas cujo valor é menor que a média de todas as vendas.

> **Gatilho:** "menor que a média"

---

## 2) 👌

Mostre os produtos vendidos com o menor valor registrado na tabela.

> **Gatilho:** "menor valor"

---

## 3)👌

Liste todas as vendas cuja quantidade é maior que a média de quantidade.

> **Gatilho:** "maior que a média"

---

## 4)👌

Mostre os vendedores que realizaram a venda mais barata.

> **Gatilho:** "venda mais barata"

---

## 5) 👌

Liste todas as vendas que possuem exatamente o maior valor registrado.

> **Gatilho:** "exatamente o maior"

---

## 6) 👌

Mostre os vendedores que venderam produtos cujo valor é maior que R$ 1000.

> **Objetivo:** Perceber quando **não** precisa de subquery.

---

## 7) 👌

Liste os produtos vendidos na mesma cidade da venda mais cara.

> **Gatilho:** descobrir a cidade da venda mais cara.

---

## 8) 👌

Mostre todas as vendas realizadas pelo vendedor da venda mais cara.

> **Gatilho:** descobrir quem fez a venda mais cara.

---

## 9)👌

Liste todas as vendas cujo valor é igual ao menor valor vendido por qualquer vendedor.

> **Gatilho:** descobrir o menor valor.

---

## 10) 👌

Mostre todas as vendas cuja quantidade é maior que a menor quantidade registrada.

> **Gatilho:** comparar com um `MIN()`.

---

## 11) 👌

Liste os vendedores que possuem pelo menos uma venda acima de R$ 4000.

> **Objetivo:** decidir entre `DISTINCT` e `GROUP BY`.

---

## 12)

Mostre o produto vendido com a maior quantidade.

> **Gatilho:** descobrir a maior quantidade.

---

## 13)

Liste todas as vendas cuja data é posterior à primeira venda registrada.

> **Gatilho:** descobrir a menor data (`MIN(data_venda)`).

---

## 14)

Mostre todas as vendas realizadas antes da última venda registrada.

> **Gatilho:** descobrir a maior data (`MAX(data_venda)`).

---

## 15)

Liste todas as vendas realizadas na cidade onde ocorreu a venda mais barata.

> **Gatilho:** descobrir a cidade da venda mais barata.

---

# Nível 1.5 (começando a misturar GROUP BY)

## 16)

Mostre o total vendido por cada vendedor.

> Usa apenas `GROUP BY`.

---

## 17)

Mostre a média do valor das vendas por cidade.

> Usa apenas `GROUP BY`.

---

## 18)

Mostre a quantidade de vendas realizadas por categoria.

> Usa apenas `GROUP BY`.

---

## 19)

Mostre o vendedor que realizou o maior número de vendas.

> **Gatilho:** primeiro agrupar, depois descobrir quem é o maior.

---

## 20)

Mostre a cidade que possui o menor número de vendas.

> Mesmo raciocínio da anterior.
## Nível 2

### 6) 👌

Liste os vendedores cuja soma das vendas é maior que a soma média de vendas entre todos os vendedores.

---

### 7)

Mostre os produtos vendidos por vendedores que também venderam Notebook.

---

### 8)

Liste as vendas cuja quantidade é maior que a média de quantidade da mesma categoria.

> (Subquery correlacionada)

---

### 9)

Mostre os vendedores que nunca venderam produtos da categoria "Móveis".

---

### 10)

Liste os produtos cujo valor é maior que qualquer venda feita por João.

(Dica: utilize `ANY`.)

---

## Nível 3

### 11)

Mostre os vendedores cuja menor venda é maior que a média geral.

---

### 12)

Liste as cidades onde existe algum vendedor que realizou mais de três vendas.

(Dica: `EXISTS`.)

---

### 13)

Mostre todas as vendas do vendedor que possui a maior soma de valores vendidos.

---

### 14)

Liste os vendedores que venderam todos os produtos vendidos por Ana.

(Dica: use `NOT EXISTS`.)

---

### 15)

Mostre cada venda juntamente com a média das vendas daquele vendedor.

Exemplo:

|vendedor|valor|média_do_vendedor|
|---|---|---|

(Subquery no `SELECT`.)

---

## Nível 4 (Correlacionadas)

### 16)

Liste apenas as vendas que possuem o maior valor do respectivo vendedor.

---

### 17)

Mostre apenas a maior venda de cada cidade.

---

### 18)

Liste as vendas cuja quantidade é maior que todas as outras vendas do mesmo produto.

(`ALL`)

---

### 19)

Mostre os vendedores que possuem pelo menos uma venda acima da média da própria cidade.

---

### 20)

Mostre todas as vendas realizadas após a primeira venda do próprio vendedor.