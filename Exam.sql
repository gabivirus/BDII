create table categoria ( codCateg number(4) primary key, descricao varchar(50) not null );

create table filme( codFilme number(4) primary key, titulo varchar(70) not null );

create table dvd ( numDVD number(4) primary key, tipo char(1));

create table cliente ( codClient number(4) primary key, preNome varchar(50) not null, sobrenome varchar(50), endereco varchar(70), telefone varchar(20));

create table ator( codAtor number(4) primary key, nome_popular varchar(50) not null, nome_Artistico varchar(50), dataNasc date);

alter table dvd add (filme number(4) references filme);

alter table filme drop column dvd;

alter table filme add (categoria number(4) references categoria);

create table aluga ( CodAluga number(4) primary key, cliente number(4) references cliente, dvd number(4) references dvd, dataRet date not null, dataDev date not null );

create table estrela ( ator number(4) references ator, filme number(4) references filme );

insert into categoria values( 1, 'Comédia');

insert into categoria values(2, 'Drama');
insert into categoria values(3, 'Aventura');
insert into categoria values(4, 'Terror');

insert into filme values(1, 'Sai pra lá', 1);
insert into filme values(2, 'Ajuda Eterna', 2);
insert into filme values(3, 'Anjos Malditos', 2);
insert into filme values(4, 'Pânico II', 4);
insert into filme values(5, 'Um Dia de Fúria', 3);
insert into filme values(6, 'Lente Cega', 3);
insert into filme values(7, 'Sinais do Tempo', 2);
insert into filme values(8, 'A Melodia da Vida', 1);

insert into dvd values(1, 'S', 1 );
insert into dvd values(2, 'S', 1 );
insert into dvd values(3, 'S', 1 );
insert into dvd values(4, 'D', 2 );
insert into dvd values(5, 'S', 3 );

insert into cliente values(1, 'João', 'Silva', 'Rua da Cruz sem Pé', '4444-1111');
insert into cliente values(2, 'Antônio', 'Ferreira', 'Av. da Vila Velha', '6660-9333');
insert into cliente values(3, 'Fábio', 'Dias', 'Rua Antonio Vieira', '2337-0393');
insert into cliente values(4, 'Andreia', 'Melo', 'Rua da Praia Bonita', '8989-7777');
insert into cliente values(5, 'Murilo', 'Fontes', 'Av. dos Autonomistas', '9090-9090');

delete from categoria where categoria = 1;

alter table filme add foreign key (categoria) references categoria(codcateg);

update filme set categoria = 8 where categoria = 1;

update categoria 
set codcateg = 8
where descricao = 'Comédia';

alter table filme add (sinopse varchar(300));

insert into categoria values(1, 'Ficção');

delete from filme where codfilme in(1, 8);

alter table dvd drop constraint from filme = 1;
    
select * from filme;
