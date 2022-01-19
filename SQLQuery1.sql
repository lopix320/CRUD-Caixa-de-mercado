use caixa

create table produto
(
	id integer identity primary key not null,
	nome_produto varchar(70),
	preco float,
	estoque int,
	fabricante varchar(70),
	categoria varchar(70)
)

create TABLE cliente (
	id INT PRIMARY KEY IDENTITY,
	nome VARCHAR(100),
	cpf VARCHAR(11),
	email VARCHAR(100),
	telefone VARCHAR(20),
	genero VARCHAR(50),
	estado_civil VARCHAR(50),
	data_nascimento DATE,
	logadouro VARCHAR(50),
	numero VARCHAR(10),
	complemento VARCHAR(50),
	cep VARCHAR(10),
	estado VARCHAR(50),
	cidade VARCHAR(50),
)

create table ordem
(
	id int primary key identity,
	id_cliente int not null foreign key(id_cliente) references cliente(id),
	dataPedido datetime
)

create table ordem_pedido
(
	id_produto int foreign key(id_produto) references produto(id),
	id_ordem int foreign key(id_ordem) references ordem(id),
	quantidade int,
	valor float
)




select ordem.id_cliente, cliente.nome, ordem_pedido.id_produto, produto.nome_produto, ordem_pedido.quantidade, ordem_pedido.valor, ordem.id, ordem.dataPedido from ordem inner join cliente on ordem.id_cliente = cliente.id 
					inner join ordem_pedido on ordem.id = ordem_pedido.id_ordem
					inner join produto on produto.id = ordem_pedido.id_produto 




select * from cliente
select * from produto

