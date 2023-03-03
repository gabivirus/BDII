create table empregado
(
	nomeEmpregado varchar(50) not null,
    rua varchar(100) not null,
    cidade varchar(30),
    estadoCivil varchar(15)
);

alter table empregado add bairro varchar(40);
alter table empregado add salario number(7, 2);
alter table empregado add dtNasc date;
alter table empregado modify cidade varchar(110);
alter table empregado modify estadoCivil varchar(20);

create table companhia
(
	NomeCompanhia varchar(50) not null primary key,
    cidade varchar(30)
);

alter table empregado modify nomeEmpregado primary key;

create table trabalha
(
    NomeEmpregado varchar(50) not null references empregado,
    nomeCompanhia varchar(50) not null references companhia,
    salario numeric(9, 2) not null
);

create table gerente
(
    nomeEmpregado varchar(50) not null references empregado,
    nomeGerente varchar(50) not null references empregado
);

create table cidade
(
    nomeCidade varchar(50) not null primary key,
    CEP varchar(9) not null,
    estado varchar(2)
);

drop table cidade;
