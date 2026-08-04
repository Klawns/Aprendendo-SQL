-- Escreva uma consulta que liste o nome de todos os clientes, mostrando também o valor de seus pedidos, mesmo que alguns clientes nunca tenham realizado um pedido.
select c.nome, p.valor 
from cliente as c left join pedido as p 
on c.id_cliente = p.id_pedido;

-- Crie uma consulta que exiba apenas os alunos que possuem matrícula registrada, juntamente com o curso em que estão matriculados.
select a.nome, m.curso 
from aluno as a inner join matricula as m 
on a.id_aluno = m.id_matricula;

-- Liste todos os departamentos, incluindo aqueles que ainda não possuem um responsável definido, mostrando também o nome do funcionário quando existir.
select d.nome_departamento as departamento, f.nome as funcionario 
from departamento as d left join funcionario as f 
on d.id_departamento = f.id_funcionario;

-- Escreva uma consulta que mostre apenas os produtos que possuem informação de estoque cadastrada.
select p.nome as produto, e.quantidade 
from produto as p inner join estoque as e
on p.id_produto = e.id_produto;

-- Liste todos os médicos, inclusive aqueles que nunca realizaram uma consulta.
select distinct m.nome as medico, c.data_consulta 
from medico as m left join consulta as c
on m.id_medico = c.id_medico;

-- Crie uma consulta que mostre apenas os funcionários que estão associados a um projeto.
select f.nome as funcionario, p.nome_projeto as projeto
from funcionario as f inner join projeto as p 
on f.id_funcionario = p.id_funcionario;

-- Liste todos os pedidos, mostrando também o nome do cliente, mesmo que algum pedido esteja sem cliente associado.
select c.nome as cliente, p.valor as valor
from pedido as p left join cliente as c
on p.id_cliente = c.id_cliente;

-- Escreva uma consulta que apresente todas as turmas, inclusive aquelas que ainda não possuem professor.
select t.nome_turma as turma, p.nome as professor
from turma as t left join professor as p 
on t.id_professor = p.id_professor; 

-- Liste apenas os livros que já foram emprestados pelo menos uma vez.
select l.titulo, e.data as data_emprestimo
from livro as l inner join emprestimo as e
on l.id_livro = e.id_livro;

-- Crie uma consulta que apresente todos os clientes, todos os pedidos, inclusive quando não houver correspondência entre eles, 
-- exibindo as informações disponíveis de cada lado.
select c.nome as cliente, p.valor, p.data_pedido
from cliente as c left join pedido as p
on c.id_cliente = p.id_cliente
union
select c.nome as cliente, p.valor, p.data_pedido
from cliente as c right join pedido as p
on c.id_cliente = p.id_cliente;


