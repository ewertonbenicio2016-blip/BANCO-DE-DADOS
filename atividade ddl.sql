create database bd_escola;

use bd_escola;

create table alunos(
id int auto_increment primary key,
nome varchar (60),
idade int,
email varchar (60),
serie varchar (25)
);

insert into alunos (id,nome,idade,email,serie)
values
(1, 'kaio','25','kaio@gmail.com','quinta'),
(2,'matheus','30','matheus@gmail.com' , 'quarta'),
(3, 'benicio','25','bencio@gmal,com' ,'oitava');

select * from alunos;

select nome,idade from alunos;

select*from alunos where serie = 'oitava';

set sql_safe_updates = 0;

update alunos
set idade = 25
where id =2;

delete from alunos where id = 3;
 
create table professor(
id int auto_increment primary key,
nome varchar (80),
disciplina varchar (90),
email varchar (50)
);

insert into professor (id,nome,disciplina,email)
values
(1,'allan',	'cienca','allan.@gmail.com'),
(2, 'cefras','infromatica','cefras@gmail.com'),
(3,'abmael' ,'matematica','abmal@gmail.,com'),
(4,'niedson','geografia','niedson@gmail.com');

select *from professor;

select disciplina,nome from professor;
