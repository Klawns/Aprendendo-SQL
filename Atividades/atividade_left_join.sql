-- Questão 1:

select cliente.nome, cliente.email, pedido.id_pedido
from cliente left join pedido 
on cliente.id_cliente = pedido.id_pedido;

-- Questão 2:
select cliente.nome, pedido.id_pedido
from cliente 
left join pedido on cliente.id_cliente = pedido.id_pedido
where pedido.id_pedido is null;

-- Questão 3:
select * from pedido;
select cliente.nome, pedido.data_pedido, pedido.valor
from cliente
left join pedido on cliente.id_cliente = pedido.id_pedido;

-- Questão 4:
SELECT 
    cliente.nome,
    COUNT(pedido.id_pedido) AS quantidade_pedidos
FROM cliente
LEFT JOIN pedido 
    ON cliente.id_cliente = pedido.id_cliente
GROUP BY cliente.id_cliente, cliente.nome;

-- Questão 5:
select 
	cliente.nome,
	coalesce(sum(pedido.valor),0)  as valor_total
from cliente
left join pedido
	on cliente.id_cliente = pedido.id_cliente
group by cliente.id_cliente, cliente.nome;

-- Questão 6: Não consegui

-- Questão 7:
select 
	categoria.nome, 
    produto.nome, 
    produto.preco
from categoria
left join produto on categoria.id_categoria = produto.id_categoria;

-- Questão 8:
select 
	categoria.nome 
from categoria
left join produto on categoria.id_categoria = produto.id_categoria
where produto.id_produto is null;

-- Questão 9:
select 
	departamento.nome as departamento,
    funcionario.nome,
    funcionario.salario
from departamento
left join funcionario on departamento.id_departamento = funcionario.id_funcionario;

-- Questão 10:

