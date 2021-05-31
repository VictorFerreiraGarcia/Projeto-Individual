create database ProjetoIndividual;
use ProjetoIndividual;

create table usuario(
id int primary key auto_increment,
nome varchar(60),
nickname varchar (25),
login varchar (60),
senha varchar(20)
);

create table publicacao (
id int primary key auto_increment,
descricao varchar (1000),
-- dataHora timestamp null default current_timestamp,
fkUsuario int
);

create table filmes(
id int primary key auto_increment,
nome varchar (45),
diretor varchar (45),
dataLancamento date
);

alter table publicacao add foreign key (fkUsuario) references usuario(id);
 -- alter table publicacao add foreign key (fkFilme) references filmes(id);

create table notas (
idNota int,
fkUsuario int,
fkFilme int,
nota decimal (2,1),
primary key (idNota, fkUsuario, fkFilme)
);

alter table notas add foreign key (fkUsuario) references usuario(id);
alter table notas add foreign key (fkFilme) references filmes(id);

insert into filmes values
(null,'300', 'Zack Snyder', '2007-03-09'),
(null, '300: A Ascensão do Império ', 'Noam Murro', '2014-03-07');

insert into usuario values
(null, 'Victor Ferreira', 'Tito', 'victor.fgarcia@gmail.com', 'copmaster');

select * from usuario;

select * from publicacao;

select * from filmes;

select * from notas;

insert into publicacao values
(null,'INCRÍVEL O FILME!!! Enredo e produção artística perfeitos, adorei',1);

