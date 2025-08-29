create database atividade_normalizacao;
# drop database atividade_normalizacao;
create table cidade (
id_cidade int primary key unique auto_increment,
nome varchar(100)
);

create table fornecedor (
id_fornecedor int primary key unique auto_increment,
id_cidade int,
nome varchar(100),

foreign key (id_cidade) references cidade (id_cidade)
);

create table produto (
id_prod int primary key unique auto_increment,
quant int,
nome varchar(100)

);

create table encomenda (
id_encomenda int primary key unique auto_increment,
data_encomenda timestamp,
id_fornecedor int,
id_prod int,
quant_prod int,

foreign key (id_fornecedor) references fornecedor (id_fornecedor),
foreign key (id_prod) references produto(id_prod),
foreign key (quant_prod) references quant(quant_prod) 

);

insert cidade (nome) values ("Mogi das Cruzes");
