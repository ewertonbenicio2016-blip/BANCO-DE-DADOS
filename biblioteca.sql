create database db_biblioteca;

use db_biblioteca;

create table livros(
id int auto_increment PRIMARY KEY,
titulo varchar(100),
autor varchar(50),
ano_publicacao int
);

insert into livros(id,titulo,autor,ano_publicacao)
values
(1,'dom casmurro','machado de assis',1899),
(2,'o alienista', 'machado de assis',1882),
(3,'memorias póstumas de bras cubas','machado de assis', 1881),
(4,'caoitaes da areia','jorge amado', 1937);

select * from livros;

select titulo,autor from livros;

select * from livros where autor='machado de assis';

set sql_safe_updates = 0;

update livros
set ano_publicacao = 1938
where titulo = 'caoitaes da areia';
