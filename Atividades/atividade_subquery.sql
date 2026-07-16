use learning;
select * from vendas;

-- Lista 1:

-- 1: Liste todas as vendas cujo valor é maior que a média de todas as vendas.
select * from vendas where valor > (select AVG(valor) from vendas);

-- 2: Mostre os vendedores que realizaram alguma venda acima da média de todas as vendas
select vendedor, valor from vendas where valor > (select AVG(valor) from vendas);

-- 3: Encontre o produto mais caro vendido.
select produto, valor from vendas where valor >= (select max(valor) from vendas);

-- 4: Liste todas as vendas que possuem o mesmo valor da venda mais cara.
select * from vendas where valor = (select max(valor) from vendas);

-- 5: Mostre todas as vendas feitas na cidade que possui o maior número de vendas.
select * from vendas where cidade = (select cidade from vendas group by cidade order by count(*) desc limit 1);

-- Lista 2

-- 1: Liste todas as vendas cujo valor é menor que a média de todas as vendas.
select * from vendas where valor < (select avg(valor) from vendas);

-- 2: Mostre os produtos vendidos com o menor valor registrado na tabela.
select produto, min(valor) as menor_valor from vendas group by produto;

-- 3: Liste todas as vendas cuja quantidade é maior que a média de quantidade.
select * from vendas where quantidade > (select avg(quantidade) from vendas);

-- 4: Mostre os vendedores que realizaram a venda mais barata.
select vendedor, min(valor) as menor_venda from vendas group by vendedor;

-- 5: Liste todas as vendas que possuem exatamente o maior valor registrado.
select * from vendas where valor = (select max(valor) from vendas);

-- 6: Mostre os vendedores que venderam produtos cujo valor é maior que R$ 1000.
select vendedor from vendas where valor > 1000 group by vendedor;

-- 7: Liste os produtos vendidos na mesma cidade da venda mais cara.
select cidade, produto from vendas where cidade = (select cidade from vendas order by valor desc limit 1);

-- 8: Mostre todas as vendas realizadas pelo vendedor da venda mais cara.
select * from vendas where vendedor = (select vendedor from vendas order by valor desc limit 1);

-- 9: Liste todas as vendas cujo valor é igual ao menor valor vendido por qualquer vendedor.
select * from vendas where valor <= (select min(valor) from vendas);

-- 10: Mostre todas as vendas cuja quantidade é maior que a menor quantidade registrada.
select * from vendas where quantidade > (select min(quantidade) from vendas);

-- 11: Liste os vendedores que possuem pelo menos uma venda acima de R$ 4000. 
select distinct vendedor from vendas where valor > 4000.00;
-- Usa distinct para que não apareça duplicatas, group by funcionária mas serve principalmente para usar funções de agregação

