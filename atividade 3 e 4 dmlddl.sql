create database bd_escola;

use bd_escola;


create table alunos(
id int auto_increment primary key,
nome varchar (60),
idade int,
email varchar (60),
serie varchar (25),
cidade varchar (50)
);

drop table alunos;

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

update professor
set nome ='ewerton'
where id = 1;

create table cursos(
id int auto_increment primary key,
nome_curso varchar (60),
carga_horaria int
);

create table matriculas(
id int auto_increment primary key,
aluno_id int,
curso_id int,
data_matricula date,
foreign key (aluno_id) references alunos (id),
foreign key (curso_id) references cursos (id)
);
drop table matriculas;
create table matriculas(
id int auto_increment primary key,
aluno_id int,
curso_id int,
data_matricula date,
foreign key (aluno_id) references alunos (id),
foreign key (curso_id) references cursos (id)
);

create table cidade(
id int auto_increment primary key,
cidade varchar (50),
cep int
);
drop table cidade;
insert into alunos (nome,idade,cidade)
values
('gabriel dias','25','bananeira'),
('humberta justino','15','casserengue'),
('evandra benicio','26','solanea'),
('evandro nobrega','35','baia traicao'), 
('maicon ferreira','45','arara');

insert into cursos(nome_curso,carga_horaria)
values
('medicina','1000'),
('engenharia','1500'),
('arquitetura','2000'),
('pedagogia','5000');

insert into matriculas (aluno_id,curso_id,data_matricula)
values
(1,1,'2015-02-01'),
(2,2,'2016-02-16'),
(3,4,'2017-06-25'),
(4,1,'2018-05-26');

select nome, cidade from alunos;

select nome,idade
from alunos
where idade > 20;

select nome,cidade
from alunos
where cidade = 'bananeira';

select nome_curso, carga_horaria
from cursos
where carga_horaria < 2000;

select alunos.nome as nome_aluno, cursos.nome_curso as  curso
from alunos,cursos,matriculas
where alunos.id = matriculas.aluno_id
and cursos.id = matriculas.curso_id;

select nome, idade,cidade
from alunos
where idade > 20 and cidade = 'baia traicao';

select nome_curso
from cursos
where carga_horaria = 1000 or carga_horaria = 2000;
