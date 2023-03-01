create table cargo
(
    cd_cargo number(3) primary key,
    nm_cargo varchar(30) not null,
    salario_cargo number(8, 2)
);

create table funcionario
(
    mat_fun number(4) primary key,
    nm_fun varchar(40) not null,
    dt_adm date not null,
    uf char(2) not null,
    fk_cargo number(3) references cargo
);

create table pedido
(
    cd_ped number(8) constraint cd_ped_fk primary key,
    dt_ped date constraint dt_ped_nn not null,
    total_ped number(10, 2)
);

create table produto
(
    cd_pdt number(4) constraint cd_pdt_fk primary key,
    nm_pdt varchar(40) constraint nm_pdt_nn not null constraint nm_pdt_uk unique,
    preco_pdt number(5, 2) constraint pre_pdt_nn not null
);

create table possui
(
    fk_ped number(8) constraint pos_ped_fk references pedido,
    fk_pdt number(4) constraint pos_pdt_fk references produto
);

insert into cargo values (100, 'DevOps', 8450);
insert into cargo values (101, 'DevPHP', 9500.45);
insert into cargo values (102, 'DevPython', 13200.05);
insert into cargo values (111, 'Faxineiro', 145000.89);
insert into cargo values (103, 'DevWeb', null);

insert into funcionario values (0001, 'Maciel Thomé Filho', '28-feb-23', 'SP', 100);
insert into funcionario values (0002, 'Erick Daniel Santiago de Araujo', '16-jan-15', 'SP', 102);
