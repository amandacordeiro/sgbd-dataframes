# Sistema de Banco de Dados e DataFrames

 ![](https://64.media.tumblr.com/a287933b4201da86ceebe5d693158a89/tumblr_inline_p7j39fqgoz1qgg3e5_75sq.gifv) `Notas da autora: `

`(sempre quis escrever isso xD)`

Hellooooo! ![](https://64.media.tumblr.com/d6cf1ccb802887989d48db3100906e27/tumblr_inline_p7j3achp5x1qgg3e5_75sq.gifv)

Voltei com outro projeto bem legal. Este desenvolvi durante o meu segundo semestre da facul, junto da minha equipe maravilhosa (uma boa equipe é essencial. mantenha o foco e saiba descontrair. conselho da amandinha). ![](https://64.media.tumblr.com/55e062b0c5976f5a55236d046911532f/tumblr_inline_p81vs67K7X1qgg3e5_75sq.gifv)

------

### Requerimentos

**Software**

`MySQL Workbench 8.0 CE:` Para criação do banco de dados.

`Jupyter Notebook:` Para conversão das tabelas do banco em dataframes.

**Bibliotecas** 

`Pandas`, `Sqlalchemy`, `Pymysql`.

#### Os códigos estão nas pastas `dataframes` e `scripts sql`
------

### Resumo

Este projeto tem como principal objetivo apresentar o desenvolvimento de um sistema de gestão de dados. Sua finalidade se baseia no controle e na facilidade de gerenciar uma livraria virtual, resultando na otimização dos processos, em busca de torna-lós mais ágeis e eficazes, proporcionando vantagens para usuários e gestores.

**Obs:** Dados fictícios.

------

### Minimundo

O processo de gerenciamento das operações envolve cinco entidades que são os funcionários, fornecedores, produtos, clientes e vendas. Onde todas essas entidades serão armazenadas no banco de dados.

A atribuição dos funcionários é controlar o estoque e processar os pedidos dos clientes feitos através do site, a identificação deste funcionário será feita pelo nome, número do funcionário, cargo, endereço e telefone. Os funcionários também ficaram responsáveis pelo cadastramento dos fornecedores no banco de dados, onde deverá conter CNPJ, nome, endereço, telefone e e-mail. 

Já os produtos armazenados no BD são identificados pelo ISBN, categoria de livros, nome, editora, autor, edição, idioma, formato (capa comum ou e-book), número de páginas, descrição, quantidade, preço da compra e preço de venda. O cadastro dos clientes no site para efetivarem as suas compras deverá conter CPF, nome, data de nascimento, sexo, endereço, telefone, e-mail e senha. 

E para registrar as vendas no banco de dados e contribuir para os processos internos dos funcionários, desde a solicitação do pedido do cliente até a finalização do envio, essas vendas deverão ser identificadas pelo ISBN, valor, data e forma de pagamento.

Existem diversos relacionamentos entre as entidades. Inicialmente, o primeiro funcionário verifica a disponibilidade do estoque e a necessidade de compra junto ao fornecedor para controlar o estoque, através do banco de dados. O segundo funcionário atuará no processamento do pedido feito pelo cliente, com o seguinte fluxo: recebimento do número do ISBN, separação dos produtos, conferência/inspeção, embalagem e pronto para o envio.

### Requisitos funcionais

O Banco de dados poderá ser utilizado por diferentes grupos de usuários que terão demandas com diferentes operações de manipulação de dados sobre diferentes áreas do banco de dados.

`Grupos`

- `Clientes:` inserção e atualização de dados cadastrais pessoais, consultas de produtos, adição de produtos na cesta, definição da forma de pagamento e de entrega;
- `Funcionários:` consultas de estoque, visualização e alteração de status dos pedidos dos clientes;
- `Gerência:` recuperação, visualização, inserção e atualização de estoque, controle de dados sobre vendas e fornecedores e todos os elementos do banco de dados, uma vez que esse grupo será o responsável por manter os dados atualizados, dando suporte aos outros grupos;
- `Geral:` visualização no banco de dados sobre clientes, produtos, funcionários, fornecedores e vendas para auxiliar na tomada de decisão e ações administrativas em geral.

#### Tabela com principais consultas para cada grupo de usuário, bem como a frequência esperada de submissão (A para alta, M para média e B para baixa).

| Consulta | Descrição                                           | Grupo       | Frequência |
| -------- | --------------------------------------------------- | ----------- | ---------- |
| Q01      | Efetivar cadastro                                   | Cliente     | A          |
| Q02      | Consultar produtos por preço                        | Cliente     | A          |
| Q03      | Visualizar número do pedido                         | Cliente     | M          |
| Q04      | Consultar histórico de clientes                     | Funcionário | M          |
| Q05      | Inserir produtos no estoque                         | Funcionário | A          |
| Q06      | Consultar produtos no estoque                       | Funcionário | A          |
| Q07      | Alterar cadastro de funcionários                    | Gerente     | B          |
| Q08      | Visualizar vendas por cliente                       | Gerente     | B          |
| Q09      | Visualizar vendas pelo valor médio, máximo e mínimo | Geral       | M          |
| Q10      | Visualizar valor médio de vendas por cliente        | Geral       | A          |

### (ER) Diagrama Entidade-Relacionamento (com Notação de Peter Chen)

![ER](https://i.imgur.com/NADuJjj.jpeg)

Diagrama ER do modelo conceitual do banco de dados da Livraria

### Projeto lógico

![PL](https://i.imgur.com/JOOheYg.jpeg)

Projeto lógico mostrando as principais estruturas e restrições lógicas baseadas no modelo de implementação relacional.

### EER do modelo de implementação relacional

Este é uma extensão da **ER**.

![EER](https://i.imgur.com/SXknfty.jpeg)

Na figura:

`restrições de chave:` figura amarela de chave ao lado esquerdo do rótulo do atributo

`tipo:` apresentado ao lado direito do rótulo do atributo

`nulidade:` losango ao lado esquerdo do rótulo do atributo (losango branco para NULL e azul para NOT NULL)

`integridade referencial:` losango vermelho representado chaves estrangeiras.

------

É claro que não foi só isso. Como qualquer outro projeto universitário, foi todo documentado e robusto. 

Eu optei por resumir para torna-ló mais acessível, e também não queria que tivesse aquela cara de projeto universitário, todo formal. ![](https://64.media.tumblr.com/dc6536ee860ed5696f546466e1f2bace/tumblr_inline_p81vs6OADE1qgg3e5_75sq.gifv)
