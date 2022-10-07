use livraria_queiroz;
insert into CLIENTE VALUES
('25687874551','Daniel Gonçalves', 'M', 12/31/1987,'dg@gmail.com','151424',
'30280610','rua boninas', '306','Esplanada','B'),
('08077747851','Joyce Meireles', 'F', 06/03/1993,'joy@gmail.com','225684',
'30672772','Avenida A', '4789','Independencia','casa'),
('11447747851','Lorena Oliveira', 'F', 12/19/1994,'oliv.l@hotmail.com','176258',
'31744620','rua Lambari', '11','Esplanada','B'),
('02687747857','Almir Queiroz', 'M', 10/29/1988,'almir.q@gmail.com','12c54c2',
'30280610','Avenida Tapajós', '2542','São Luíz','casa'),
('25674747851','Edilaine Almeida', 'F',
06/02/1990,'edilaine@gmail.com','as1415', '30280040','rua Rondônia', '287','São
Caetano','casa'),
('08073695251','Floriano Mendes', 'M',
07/01/1964,'flor.iano@gmail.com','6025ga', '30280610','rua boninas',
'78','Esplanada','B'),
('75688447852','Elana Mara ', 'F', 10/23/1962,'emm.elana@gmail.com','85dasa',
'30280610','rua boninas', '11','Barro Preto','casa'),
('14841747851','Edes Lima', 'M', 06/01/1930,'edeslima@gmail.com','187689',
'30280610','rua boninas', '170','Lagoinha','casa'),
('11987225851','Maria da Cruz', 'F',
05/07/1937,'cruzmaria@gmail.com','142445', '30280610','rua Boninas',
'87','Imbiruçu','casa'),
('20687747551','Gabriela Franco', 'F',
02/02/2002,'gabriela.franco@gmail.com','101045', '30280610','rua Boninas',
'11','Centro','80'),
('25687787874','Beyonce Knowles', 'F',
04/19/1987,'queenb@gmail.com','178744', '30280610','rua Doze',
'11','Centro','1014'),
('07087747451','Stormi Webster', 'F', 02/01/2018,'stormiw@gmail.com','aw1214',
'30280610','rua da Bahia', '25','Floresta','B'),
('25687748475','Juma Marruá', 'F', 11/24/1996,'juma@gmail.com','15aws',
'30280610','rua dos Tupis', '11','Barro Preto','casa'),
('25670707851','Maria da Paz', 'F', 08/20/1978,'mpaz@hotmail.com','353424',
'30280610','rua Curitiba', '10','Urca','B'),
('11445268987','Bruno Dutra', 'M', 12/18/1995,'dutra@gmail.com','154744',
'30280610','rua Amazonas', '37','Leblon','A'),
('22447596970','Afrânio Gomes', 'M', 03/12/2000,'afranios@gmail.com','l4l724',
'30280610','rua Begônia', '874','Esplanada','casa'),
('44587868657','Gabriela Gusmão', 'F',
12/08/1999,'gg.gusmao@gmail.com','157a78', '30280610','Avenida Elisio de
Brito', '2','Justinópolis','C'),
('11998754576','Clarke Griffin', 'F',
06/31/1994,'clacla.gatinha@gmail.com','741424', '30280610','rua Maria
Francisca', '39','Universal','A'),
('22335879761','Octavia Blake', 'F', 09/27/1996,'octavia@gmail.com','177ç44',
'30280610','Algas', '11212','Enseada','casa'),
('11665642450','Virgínia de la Mora', 'F',
05/11/1961,'lamora@hotmail.com','778p24', '30280610','rua Antonio Olinto',
'11','União','casa');
insert into FUNCIONARIO
(nr_funcionario,ds_cargo,ds_nome,nr_cep,ds_endereco,nr_num,ds_bairro,ds_complemento) values
(1, 'vendedor(a)', 'Talita Caroline', '30250070','Rua 24 de Julho', '37',
'Amazonas','casa'),
(2, 'vendedor(a)', 'Bruna Giovanna', '33250350','Rua Algas', '87', 'Boa
Vista','casa'),
(3, 'vendedor(a)', 'Tadeu Almeida', '30280040','Rua Antônio Olinto', '304',
'Esplanada','A'),
(4, 'vendedor(a)', 'Gabriel Meireles', '78750040','Rua Araguari', '2450', 'Barro
Preto','902'),
(5, 'Caixa', 'Juliana Brandão', '32580041','Lambari', '11', 'São Caetano','casa'),
(6, 'Gerente', 'Rafael Cicarolli', '33689940','Avenida Tapajós', '1002', 'São
Caetano','casa'),
(7, 'Supervisor', 'Aurélia Bagagin', '32140280','Rua Begônia', '100', 'Pompéia','B');
insert into PEDIDO_VENDA (nr_pedido, vlr_venda, qtde_venda, dt_venda, fk_nr_cpf, fk_nr_func) values
(1, '159.05', 6, '04.11.2020', null, 3),
(10, '107.30', 2, '20.08.2020', '25670707851', 1),
(23, '217.13', 2, '03.06.2020', '02687747857', 5),
(59, '198.31', 3, '28.03.2020', '20687747551', 4),
(95, '534.20', 4, '13.08.2021', 11447747851, 1),
(27, '514.75', 10, '19.01.2022', 11447747851, 3),
(15, '152.02', 5, '26.07.2021', '25674747851', 2),
(33, '594.09', 1, '02.04.2021', '11665642450', 1),
(66, '105.10', 4, '16.11.2020', 11447747851, 3),
(68, '465.84', 2, '26.09.2020', '07087747451', 4),
(5, '146.67', 6, '08.04.2021', null, 1),
(63, '280.02', 4, '06.03.2020', '07087747451', 2),
(99, '31.57', 1, '20.01.2022', '07087747451', 3),
(87, '582.59', 10, '08.08.2020', null, 1),
(64, '174.78', 3, '27.03.2022', 11447747851, 4),
(75, '339.11', 6, '06.08.2020', 11447747851, 3),
(43, '578.28', 8, '08.03.2020', null, 3);
Insert into
FORNECEDORES(nr_cnpj,ds_nome,nr_cep,ds_endereco,nr_num,ds_bairro,ds_complemento,fk_nr_funcionario) values
('14256700001521', 'Edgepulse', '30280040', 'Avenida Brasil', 183, 'Valleymount',
'148', 7),
('03062503591245', 'Feedmix', '07280040', 'Rua Sergipe', 917, 'Yanjiao', null, 7),
('08041457000123', 'Photojam', '30285470', 'Rua Pouso Alegre', 1035,
'Shangdian', 'B', 6),
('03052690000045', 'Cogilith', '14280040', 'Rua Santa Rita', 853, 'Funcionários',
'', 6),
('05858701021012', 'Rhynoodle', '14280040', 'Avenida Amazonas', 506, 'Centro',
'B', 7),
('00000526812345', 'Youspan', '14280040', 'Rua 7 de Abril', 2219, 'Pompéia',
'148', 7),
('30265888900001', 'Trudoo', '60302501', 'Rua 10', 1966, 'Balao', null, 6),
('69600012485774', 'Latz', '20780702', 'Rua Orquídea', 1840, 'Petrolandia',
'prédio', 6),
('30698787512055', 'Brainbox', '32013620', 'Avenida Paraná', 1416, 'Aluminio', '',
6),
('14787700012401', 'Camido', '36989702', 'Avenida Jacarta', '2206', 'Lete',
'prédio', 6),
('14787700457784', 'Edgeclub','30289702' , 'Avenida Um', 611, 'Coração de
Jesus', '148', 7),
('81487700012401', 'Zoombeat', '07440260', 'Avenida Diadema', 1226, 'Goropo',
'B', 6),
('14147700012445', 'Topdrive', '36900002', 'Rua Elíseo de Brito', 1937,
'Enseada', '148', 7),
('14787707470710', 'Jaxspan', '36980502', 'Rua do Bonde', 215, 'Lantera', '365',
7),
('16686610012401', 'Cogidoo', '01145401', 'Rua Capital', 1726, 'Mawza‘', '', 6),
('14787700023457', 'Tagchat', '3696990', 'Rua Carandaí', 36, 'São Pedro', 'C', 7),
('11414700012401', 'Voonix', '52300206', 'Rua Sapucaí', 1002, 'Floresta', 'B', 6),
('23598787871070', 'Omba', 06968685, 'Avenida do Contorno', 531, 'Liberdade',
null, 7),
('39300010452357', 'Oba', '44300302', 'Rua Cristóvão Colombo', 2284, 'São
Pedro', '1902', 7),
('22623000104526', 'Trilia', '04020051', 'Rua Trufa', 108, 'Vera Cruz', 'B', 6);
insert into produto (NR_ISBN, DS_NOME, DS_CATEGORIA, DS_EDITORA,
DS_AUTOR, DS_DESCRICAO, DS_IDIOMA, DS_FORMA_CP, DS_EDICAO,
NR_PAG, VLR_COMPRA, QTDE_PRODUTO, FK_NR_FUNCIO)
values
(9787530,'Geografia agraria ','Adventure|Fantasy','Expressão Popular','João
Carveiró',' libero nullam sit amet turpis','Espanhol','Fisico','1.
ed.',530,43.52,199,1),
(9003437,'Economia brasileira contemporânea','Thriller','Gremaud Amaury
Patrick','Atlas',' curabitur convallis duis consequat','Espanhol','Digital','8.
ed.',782,118.82,16,3),
(971419,'Metodologia cientifica em ciências sociais','Drama','Atlas','Demo
Pedro','nunc donec quis orci eget orci','Portugues','Digital','1.
ed.',218,11.25,179,1),
(978,'Getulio Vargas nos folhetos de cordel :','Thriller','Editora UFPE','Cabral,
Geovanni Gomes','quam a odio in hac','Espanhol','Fisico','6. ed. rev. e
atual.',660,62.71,11,1),
(92183,'Mapas da geografia e cartografia
temática','Drama|Romance','Contexto','Martinelli Marcelo',' vestibulum a
posuere','Portugues','Digital','1, ed.',231,102.00,73,3),
(8120580,'A evoluçãodo capitalismo','Comedy|Romance','LTC','Dobb Maurice','
semper porta volutpat quam','ingles','Fisico','9. ed.',104,16.67,126,1),
(978062,'Estatisitica Facil','Didático','Saraiva','Crespo, Antônio Arnot','nisl duis
ac nibh fusce','Espanhol','Fisico','19. ed. atual.',445,111.78,181,4),
(0522,'Stability of microstructure in metallic
systems','Crime|Drama|Romance','Cambridge University Press','Martin J. W.','
dui vel sem sed sagittis ','Alemão','Digital','2nd ed.',696,55.65,161,4),
(97885639,'Processo civil','Drama','JusPODIVM',' Rinaldo Mouzalas de
Souza','odio consequat o donec vitae','Espanhol','Fisico','4.ed. rev. ampl. e
atual.',306,71.55,56,5),
(978744,'A disssertação clara e organizada','Drama|Romance','Ed. da
UFPA','Silva, João Batista Corrêa da','sed volutpat in congue','ingles','Digital','2.
ed.',768,27.74,29,1),
(97882,'Teorias do jornalismo :','Drama','Traquina,Nelson','Insular',' quis odio
consequat varius integer','Portugues','Digital','3. ed. rev.',611,66.23,22,2),
(97887,'Física para cientistas e engenheiros :','Didático', 'Tipler',' Paul
Allen','LTC',' libero non mattis pulvinar','Espanhol','Fisico',753,11.55,39,1),
(9788577,'Questões nacionais e regionais do território
brasileiro','Adventure|Children|Comedy','Expresão Popular ','Matilda Mattos','san
tortor quis turpis sed ante','Espanhol','Digital','1. ed.',571,89.58,143,2),
(9788590,'Materiais de construção','Drama','Atlas',' Emília Viotti da','risus
praesent quam sapien varius ut','Espanhol','Digital','5. ed. rev.',484,58.35,123,2),
(97834,'Da senzala a colônia','Documentary','Costa Emília Viotti da','Ed.
UNESP','lorem ipsum dolor sit ','Alemão','Fisico','5. ed.',323,22.22,112,4),
(8570413 ,'Os Crimes do texto','Adventure|Comedy','Figueiredo Vera Lúcia
Follain de','Humanitas ',' porta volutpat erat quisque erat
eros','Portugues','Fisico','5. ed.',599,46.44,166,5);
Insert into TELEFONE(nr_cliente,nr_func,nr_cnpj,nr_DDD,nr_telefone) values
('1','1','14256700001521', '68', '30280040'),
('2','2','03062503591245', '82', '07280040'),
('3','3','08041457000123', '96', '30285470'),
('4','4','03052690000045', '92', '14280040'),
('5','5','05858701021012', '75', '14280040'),
('6','6','00000526812345', '85', '14280040'),
('7','7','30265888900001', '61', '60302501'),
('8','8','69600012485774', '27', '20780702'),
('9','9','30698787512055', '31', '32013620'),
('10','10','14787700012401', '91', '36989702'),
('11','11','14787700457784', '11', '30289702'),
('12','12','81487700012401', '79', '07440260'),
('13','13','14147700012445', '63', '36900002'),
('14','14','14787707470710', '83', '36980502'),
('15','15','16686610012401', '41', '01145401');
Insert into pedido_venda_has_produto(PEDIDO_VENDA_NR_PEDIDO,
PEDIDO_VENDA_NR_FUNC, PRODUTO_NR_ISBN,
PEDIDO_VENDA_NR_CPF, PRODUTO_NR_FUNCIONARIO) values
(1, 3, 9787530, '755942719-7', 1),
(10, 1, 9003437, '789179500-2', 2),
(23, 5, 971419, '481991840-0', 3),
(59, 4, 978, '674286210-6', 4),
(95, 1, 25674, '847041418-6', 5),
(27, 3, 95251, '256391517-1', 6),
(15, 2, 7852, '621738558-9', 7),
(33, 1, 747851, '088182810-6', 8),
(66, 3, 225851, '234483933-x', 9),
(68, 4, 47551, '446514215-3', 10),
(5, 1, 87874, '880649480-5', 11),
(63, 2, 47451, '944669229-6', 12),
(99, 3, 48475, '213741556-9', 13),
(87, 1, 707851, '929444753-7', 14),
(64, 4, 68987, '275985359-4', 15),
(75, 3, 96970, '236589235-8', 16),
(43, 2, 68657, '568234792-7', 17);
