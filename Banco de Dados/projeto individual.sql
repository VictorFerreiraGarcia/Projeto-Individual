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
nota decimal (3,1),
primary key (idNota, fkUsuario, fkFilme)
);

alter table notas add foreign key (fkUsuario) references usuario(id);
alter table notas add foreign key (fkFilme) references filmes(id);

insert into filmes values
(null,'300', 'Zack Snyder', '2007-03-09'),
(null, '300: A Ascensão do Império ', 'Noam Murro', '2014-03-07');

insert into usuario values
(null, 'Victor Ferreira', 'Tito', 'victor.fgarcia@gmail.com', 'copmaster'),
(null, 'Celia Taniwaki', 'Celinha', 'celia.taniwaki@gmail.com', 'bandtec'),
(null,'Eduardo Silva', 'DUDU1928', 'edu.silvaa@gmail.com', 'urubu100'),
(null, 'Helena Ferreira', 'lelas2', 'helena.ferreira@gmail.com', 'rosiege@'),
(null, 'Geraldo Santos Silva', 'geraldaoDamassa', 'geraldo.santos@gmail.com', 'geraldex1212');


insert into publicacao values
(null,'Filme é bem legal , uma historia bem elaborada e construída , por trás da clássica historia dos 300 de esparta , a narração , o combate e os personagens feitos da maneira mais épica possível.
Contras: Muitos slowmontions , e muito efeito especial , porém nada que faça a qualidade do filme ser ruim ou péssima .',1),
(null,'Filme fascistóide, poderia ter sido encomendado pelo próprio Goebbels se existissem efeitos de computador na época da Alemanha Nazista. Um verdadeiro lixo de filme, que passa uma mensagem racista e equivocada. Poderia ter passado minha existência sem ver esse lixo. O equivalente fílmico dos livros de Ayn Rand.',2),
(null,'Filme com muitos efeitos fotografia muito linda, uma história emocionante sobre coragem e honrra. Ainda mais prestigia nosso ator Rodrigo Santoro amei o filme.',3),
(null,'O filme se passa em um momento histórico da Pérsia e Esparta entram em conflito bem parecido com o que agente aprende na escola, me lembro até que na época minha professora passou o filme para que nós pudéssemos assistir e analisar o mesmo em relação aquilo que estávamos estudando. Em relação aos efeitos não tem nem o que falar na hora das batalhas e dos exércitos pérsia as imagens vistas vão além de nossa expectativa é algo muito legal e muito bem trabalhado.',4),
(null,'Filme Excelente Efeitos Bons Ate So Que Voce Tem A Impressao Que o Fundo do Filme o Cenario e Uma Foto Mais Nada Que Fassa o Filme Ficar Ruin Gerard Butler Esta Demais Como Leonidas e Rodrigo Santorio Otimo Como Xerxes Historia do Filme é Grécia, 480 AC. Na Batalha de Termópilas, o rei Leônidas (Gerard Butler) e seus 300 guerreiros de Esparta lutam bravamente contra o numeroso exército do rei Xerxes (Rodrigo Santoro). Após três dias de muita luta, todos os espartanos são mortos. O sacrifício e a dedicação destes homens uniu a Grécia no combate contra o inimigo persa. Epico Nota 10',5);

insert into notas values
(1,1,1,10.0),
(1,1,2,8.0),
(1,2,1,2.0),
(1,2,2,7.0),
(1,3,1,10.0),
(1,3,2,7.0),
(1,4,1,9.0),
(1,4,2,8.0),
(1,5,1,7.0),
(1,5,2,10.0);

select * from usuario;

select * from publicacao;

select * from filmes;

select * from notas;