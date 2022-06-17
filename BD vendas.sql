-- TOTAL DE CLIENTES

select count(Nome) as "Total de clientes" 
from clientes; -- Total de 100 clientes



-- TOTAL DE PRODUTOS VENDIDOS NA LOJA

select 
count(Nome_Produto) as "Total de itens"
from produtos; -- Total de 16 itens



-- PRODUTOS VENDIDOS NO MÊS 03/2019

select produtos.Nome_Produto as "Nome do Produto", 
pedidos.Data_Venda as "Data da Venda"
from produtos 
inner join pedidos
on produtos.ID_Produto = pedidos.ID_Produto
where pedidos.Data_Venda between "2019-03-01" and "2019-03-31"; -- Total de 30 vendas



-- RECEITA NO ANO DE 2019

select
sum(Receita_Venda)
from pedidos
where Data_Venda between "2019-01-01" and "2019-12-31";  -- Total de R$228.900,00



