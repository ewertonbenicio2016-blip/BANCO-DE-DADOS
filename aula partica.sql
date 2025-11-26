create database sys_vendas;

use sys_vendas;

create table cliente(
id int,
nome varchar(100),
email varchar(60),
data_nascimento date,
ativo boolean 
);

alter table cliente
add column telefone varchar(20);

alter table cliente
modify column email varchar(200);
