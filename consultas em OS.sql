USE sistema_os;

-- Recuperação simples: listar todos os clientes cadastrados
select * from cliente;

--  Recuperação simples: listar todas as peças disponíveis e seus preços
select id_peca, descricao, preco from peca;

-- Filtros: listar clientes PF com nome que começa com 'A'
select pf.nome, pf.cpf
from clientepf pf
where pf.nome like 'A%';

-- listar veículos do ano superior a 2020
select marca, modelo, ano, placa
from veiculo
where ano > 2020;

--  calcular o valor total de cada ordem de serviço somando peças e serviços
select os.id_os,
       coalesce(sum(p.preco * op.quantidade), 0) +
       coalesce(sum(s.preco * osrv.quantidade), 0) as valor_calculado
from ordemservico os
left join ospeca op on os.id_os = op.id_os
left join peca p on op.id_peca = p.id_peca
left join osservico osrv on os.id_os = osrv.id_os
left join servico s on osrv.id_servico = s.id_servico
group by os.id_os;

-- listar fornecedores ordenados por nome
select * from fornecedor
order by nome asc;

-- listar clientes PJ por razão social em ordem decrescente
select pj.razao_social, pj.cnpj
from clientepj pj
order by pj.razao_social desc;

-- contar quantos veículos cada cliente possui
select c.id_cliente, count(v.id_veiculo) as total_veiculos
from cliente c
left join veiculo v on c.id_cliente = v.id_cliente
group by c.id_cliente;

-- exibir clientes que possuem mais de 2 veículos
select c.id_cliente, count(v.id_veiculo) as total_veiculos
from cliente c
join veiculo v on c.id_cliente = v.id_cliente
group by c.id_cliente
having count(v.id_veiculo) > 2;

-- listar ordens de serviço com nome da equipe responsável
select os.id_os, e.nome_equipe, os.status, os.data_abertura
from ordemservico os
join equipe e on os.id_equipe = e.id_equipe;

--  listar ordens de serviço com cliente, veículo e equipe
select os.id_os, 
       pf.nome as cliente_pf, 
       pj.razao_social as cliente_pj,
       v.modelo as veiculo, 
       e.nome_equipe as equipe, 
       os.status
from ordemservico os
join cliente c on os.id_cliente = c.id_cliente
left join clientepf pf on c.id_cliente = pf.id_cliente
left join clientepj pj on c.id_cliente = pj.id_cliente
join veiculo v on os.id_veiculo = v.id_veiculo
join equipe e on os.id_equipe = e.id_equipe;

-- total gasto por cada cliente em ordens de serviço
select c.id_cliente,
       coalesce(pf.nome, pj.razao_social) as nome_cliente,
       sum(os.valor_total) as total_gasto
from ordemservico os
join cliente c on os.id_cliente = c.id_cliente
left join clientepf pf on c.id_cliente = pf.id_cliente
left join clientepj pj on c.id_cliente = pj.id_cliente
group by c.id_cliente, pf.nome, pj.razao_social
order by total_gasto desc;

-- Serviços mais utilizados nas ordens de serviço
select s.descricao, count(*) as qtd_usada
from osservico oss
join servico s on oss.id_servico = s.id_servico
group by s.descricao
order by qtd_usada desc;

-- Peças mais vendidas em ordens de serviço
select p.descricao, sum(op.quantidade) as qtd_vendida
from ospeca op
join peca p on op.id_peca = p.id_peca
group by p.descricao
order by qtd_vendida desc;

-- Mecânicos e equipes em que trabalham
select m.nome as mecanico, m.especialidade, e.nome_equipe
from equipemecanico em
join mecanico m on em.id_mecanico = m.id_mecanico
join equipe e on em.id_equipe = e.id_equipe;
