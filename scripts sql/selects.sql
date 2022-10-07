-- Q01 Efetiva cadastro cliente
insert into cliente(NR_CPF, DS_NOME, DS_SEXO, DT_NASCIMENTO,
DS_EMAIL, DS_SENHA, NR_CEP, DS_ENDERECO, NR_NUM, DS_BAIRRO,
DS_COMPLEMENTO) values
('12345678911', 'FREDERIO MARTINS', 'M', '1991-06-25',
'fred.critica@gmail.com', 'admin12345', 30184018, 'RUA DOS ALPES', 15,
'CAMPO ALTO', 'AP-305');

-- Q02 Altera cadastro do cliente
update cliente
set NR_CPF = '12345678912'
where NR_CPF = '12345678911';

-- Q03 Consultar produtos por autor
select * from produto
where DS_AUTOR like 'Martin J. W.%';

-- Q04 Consultar produtos por descrição
select * from produto
where DS_DESCRICAO like 'dui vel sem sed sagittis%';

-- Q05 Consultar produtos por editora
select * from produto
where DS_EDITORA like 'Cambridge%';

-- Q06 Consultar produtos por preço
select * from produto
where VLR_COMPRA < 100;

-- Q07 Consultar produtos por formato
select * from produto
where DS_FORMA_CP = “Digital”;

-- Q08 Consultar produtos por formato
select * from produto
where DS_IDIOMA like 'Por%';

-- Q09 Consultar produtos por formato
select * from produto
where DS_EDICAO like '1%';

-- Q10 Consultar produtos por formato
select * from produto
where NR_ISBN = 9788577;

-- Q11 Visualizer número do pedido
select * from pedido_venda
where NR_PEDIDO = 23;

-- Q12 Inserir produtos no carrinho de compras
set autocommit = 0;
start transaction;
insert into pedido_venda(NR_PEDIDO, VLR_VENDA, QTDE_VENDA,
DT_VENDA, FK_NR_CPF, FK_NR_FUNC) values
(100, 118.36, 2, '2022-05-29 11:55:31', '12345678912', 1);
insert into pedido_venda_has_produto(PEDIDO_VENDA_NR_PEDIDO,
PEDIDO_VENDA_NR_FUNC, PEDIDO_VENDA_NR_CPF,
PRODUTO_NR_ISBN, PRODUTO_NR_FUNCIONARIO) values
(100, 1, '12345678912', 522, 1);
insert into pedido_venda_has_produto(PEDIDO_VENDA_NR_PEDIDO,
PEDIDO_VENDA_NR_FUNC, PEDIDO_VENDA_NR_CPF,
PRODUTO_NR_ISBN, PRODUTO_NR_FUNCIONARIO) values
(100, 1, '12345678912', 978, 1);
commit;
update produto
set QTDE_PRODUTO = QTDE_PRODUTO - 1
where NR_ISBN = 522;
update produto
set QTDE_PRODUTO = QTDE_PRODUTO - 1
where NR_ISBN = 978;
set autocommit = 1;

-- Q13 Visualizar histórico de compras
select * from ((pedido_venda
inner join pedido_venda_has_produto on pedido_venda.NR_PEDIDO =
pedido_venda_has_produto.PEDIDO_VENDA_NR_PEDIDO)
inner join produto on produto.NR_ISBN =
pedido_venda_has_produto.PRODUTO_NR_ISBN)
WHERE NR_PEDIDO = 100;

-- Q14 Consultar o estoque
select * from produto;

-- Q15 Consultar histórico de clientes
select * from cliente;

-- Q16 Inserir produtos no estoque
insert into produto(NR_ISBN, DS_NOME, DS_CATEGORIA, DS_EDITORA,
DS_AUTOR, DS_DESCRICAO, DS_IDIOMA, DS_FORMA_CP, DS_EDICAO,
NR_PAG, VLR_COMPRA, QTDE_PRODUTO, FK_NR_FUNCIO) values
(9788580, 'PROJETO, DESENVOLVIMENTO DE APLICACOES &
ADMINISTRACAO DE BANCO DE DADOS', 'INFORMATICA', 'BOOKMAN',
'Michael V. Mannino','Este livro apresenta a base para' , 'Portugues', 'Fisico', '3ª
ed', 877, 116.51, 15, 4);

-- Q17 Consultar produtos no estoque
select * from produto where NR_ISBN = 9788580;

-- Q18 Alterar produtos no estoque
update produto
set NR_ISBN = 522
where NR_ISBN = 979;

-- Q19 Consultar cadastro de fornecedores
select
NR_CNPJ, DS_NOME, FK_NR_FUNCIONARIO
from fornecedores;

-- Q20 Alterar cadastro de fornecedores
update fornecedores
set NR_CNPJ = "00000526812345"
where DS_NOME = "LIVRARIA G SA";

-- Q21 Inserir cadastro de funcionários
insert into funcionario(NR_FUNCIONARIO, DS_CARGO, DS_NOME, NR_CEP,
DS_ENDERECO, NR_NUM, DS_BAIRRO, DS_COMPLEMENTO) values
(8, 'Gerente', 'Amanda Cordeiro', '8789876', 'Rua John Lennon', '550',
'Messejana', 'Condomínio');

-- Q22 Consultar cadastro de funcionários
select NR_FUNCIONARIO, DS_NOME, DS_CARGO from funcionario;

-- Q23 Alterar cadastro de funcionários
update funcionario
set NR_NUM = 28
where NR_FUNCIONARIO = 1;

-- Q24 Visualizar vendas geral da loja
select * from pedido_venda_has_produto;

-- Q25 Visualizar vendas por cliente
select NR_CPF, DS_NOME, NR_PEDIDO, VLR_VENDA, DT_VENDA from
cliente
inner join pedido_venda on cliente.NR_CPF = pedido_venda.FK_NR_CPF;

-- Q26 Visualizar vendas por categoria literária
select * from produto
where DS_CATEGORIA like “Adv&”;

-- Q27 Visualizar vendas pelo valor médio, máximo e mínimo
select
avg(VLR_VENDA) as Valor_Médio,
max(VLR_VENDA) as Valor_Maximo,
min(VLR_VENDA) as Valor_Minimo
from pedido_venda;

-- Q29 Visualizar o valor médio de vendas por cliente
select NR_CPF, DS_NOME, avg(VLR_VENDA) from cliente
inner join pedido_venda on cliente.NR_CPF = pedido_venda.FK_NR_CPF
group by NR_CPF;

-- Q30 Visualizar venda por sexo
select * from cliente
inner join pedido_venda on cliente.NR_CPF = pedido_venda.FK_NR_CPF
where DS_SEXO = 'F';