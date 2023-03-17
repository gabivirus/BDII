create table cidade (  
    codigo number(4) constraint cdd_cod_pk primary key,  
    nome varchar(30) constraint cdd_nome not null  
) 
;

create table socio (  
    CPF char(11) constraint soc_cpf_pk primary key,  
    nome varchar(20) constraint soc_nome_nn not null,  
    datanasc date constraint soc_dt_nn not null,  
    RG varchar(15) constraint soc_rg_nn not null,  
    cidade constraint soc_cdd_fk references cidade  
) 
;

alter table cidade rename constraint cdd_nome to css_nome_nn 
;

alter table cidade add UF char(2) constraint cdd_uf_nn not null 
;

alter table socio add fone varchar(10) constraint soc_fone_null 
;

alter table socio add fone varchar(10) constraint soc_fone_null null add nome char(1) constraint soc_sex_nn not null 
;

alter table socio add nome char(1) constraint soc_sex_nn not null 
;

alter table socio add fone varchar(10) constraint soc_fone_null null add sexo char(1) constraint soc_sex_nn not null 
;

alter table socio modify nome varchar(35) 
;

create table setor (  
    codigo number(3) constraint set_cod_pk primary key,  
    nome varchar(30) constraint set_nome_nn not null  
) 
;

alter table socio add setor constraint soc_set_fk references setor 
;

alter table cidade rename constraint css_nome_nn to cdd_nome_nn 
;

create table dependente (  
    socio constraint dep_soc_fk references socio,  
    numero number(4) constraint dep_num_nn primary key,  
    nome varchar(30) constraint dep_nome_nn not null,  
    datanasc date constraint dep_dt_nn not null  
) 
;

create table dependente (  
    socio constraint dep_soc_fk references socio,  
    numero number(4) constraint dep_num_nn primary key,  
    nome varchar(30) constraint dep_nome_nn not null,  
    datanasc date constraint dep_dt_nn not null  
)
;

alter table cidade rename constraint css_nome_nn to cdd_nome_nn
;

alter table socio add setor constraint soc_set_fk references setor
;

create table setor (  
    codigo number(3) constraint set_cod_pk primary key,  
    nome varchar(30) constraint set_nome_nn not null  
)
;

create table dependente (  
    socio constraint dep_soc_fk references socio,  
    numero number(4) constraint dep_num_nn primary key,  
    nome varchar(30) constraint dep_nome_nn not null,  
    datanasc date constraint dep_dt_nn not null  
)
;

create table dependente (  
    socio constraint dep_soc_fk references socio,  
    numero number(4) constraint dep_num_nn primary key,  
    nome varchar(30) constraint dep_nome_nn not null,  
    datanasc date constraint dep_dt_nn not null  
)
;

create table cidade ( 
    codigo number(4) constraint cdd_cod_pk primary key, 
    nome varchar(30) constraint cdd_nome not null 
)
;

create table socio ( 
    CPF char(11) constraint soc_cpf_pk primary key, 
    nome varchar(20) constraint soc_nome_nn not null, 
    datanasc date constraint soc_dt_nn not null, 
    RG varchar(15) constraint soc_rg_nn not null, 
    cidade constraint soc_cdd_fk references cidade 
)
;

alter table cidade rename constraint cdd_nome to css_nome_nn
;

alter table cidade add UF char(2) constraint cdd_uf_nn not null
;

alter table socio add fone varchar(10) constraint soc_fone_null
;

alter table socio add fone varchar(10) constraint soc_fone_null null add nome char(1) constraint soc_sex_nn not null
;

alter table socio add nome char(1) constraint soc_sex_nn not null
;

alter table socio add fone varchar(10) constraint soc_fone_null null add sexo char(1) constraint soc_sex_nn not null
;

alter table socio modify nome varchar(35)
;

create table setor ( 
    codigo number(3) constraint set_cod_pk primary key, 
    nome varchar(30) constraint set_nome_nn not null 
)
;

alter table socio add setor constraint soc_set_fk references setor
;

alter table cidade rename constraint css_nome_nn to cdd_nome_nn
;

create table dependente ( 
    socio constraint dep_soc_fk references socio, 
    numero number(4) constraint dep_num_nn primary key, 
    nome varchar(30) constraint dep_nome_nn not null, 
    datanasc date constraint dep_dt_nn not null 
)
;

insert into cidade values(0001, "Guarulhos", "SP")
;

insert into cidade values (0001, "Guarulhos", "SP")
;

insert into cidade values (100, 'Guarulhos', 'SP')
;

insert into cidade value (101, 'Xique-Xique', 'BA')
;

insert into cidade values (101, 'Xique-Xique', 'BA')
;

insert into socio values ('12345678911', 'Maciel Thomé Filho', '28-mar-78', '123456789123456', 'Guarulhos', '999999999')
;

insert into socio values ('12345678911', 'Maciel Thomé Filho', '28-mar-78', '123456789123456', 'Guarulhos', '999999999', 'M')
;

insert into socio values ('12345678911', 'Maciel Thomé Filho', '28-mar-78', '123456789123456', 'Guarulhos', '999999999', 'M', 'Educação')
;

create table cidade ( 
    codigo number(4) constraint cdd_cod_pk primary key, 
    nome varchar(30) constraint cdd_nome not null 
)
;

create table socio ( 
    CPF char(11) constraint soc_cpf_pk primary key, 
    nome varchar(20) constraint soc_nome_nn not null, 
    datanasc date constraint soc_dt_nn not null, 
    RG varchar(15) constraint soc_rg_nn not null, 
    cidade constraint soc_cdd_fk references cidade 
)
;

alter table cidade rename constraint cdd_nome to css_nome_nn
;

alter table cidade add UF char(2) constraint cdd_uf_nn not null
;

alter table socio add fone varchar(10) constraint soc_fone_null null add sexo char(1) constraint soc_sex_nn not null
;

alter table socio modify nome varchar(35)
;

create table setor ( 
    codigo number(3) constraint set_cod_pk primary key, 
    nome varchar(30) constraint set_nome_nn not null 
)
;

alter table socio add setor constraint soc_set_fk references setor
;

create table dependente ( 
    socio constraint dep_soc_fk references socio, 
    numero number(4) constraint dep_num_nn primary key, 
    nome varchar(30) constraint dep_nome_nn not null, 
    datanasc date constraint dep_dt_nn not null 
)
;

alter table cidade rename constraint css_nome_nn to cdd_nome_nn
;

insert into cidade values (100, 'Guarulhos', 'SP')
;

insert into cidade values (101, 'Xique-Xique', 'BA')
;

insert into socio values ('12345678911', 'Maciel Thomé Filho', '28-mar-78', '123456789123456', 'Guarulhos', '999999999', 'M', 'Educação')
;

select * from cidade
;

select * from socio
;

select * from setor
;

selct * from cidade



select * from cidade
;

insert into socio values(99887766554, "Maciel Thomé Filho", 28-fev-78, "561.894.237-98", 100, null, 'M', null)
;

insert into socio values("99887766554", "Maciel Thomé Filho", 28-fev-78, "561.894.237-98", 100, null, 'M', null)
;

insert into socio values("99887766554", "Maciel Thomé Filho", 28-fev-78, "561.894.237-98", 100, "912457898", 'M', 001)
;

insert into setor values(001, "Financeiro")
;

insert into setor values (001, "Financeiro")
;

insert into setor values (001, "Financeiro")
;

insert into setor values (001, "Financeiro")
;

insert into socio values("99887766554", "Maciel Thomé Filho", 28-fev-78, "561.894.237-98", 100, "912457898", 'M', 001)
;

insert into socio values ('11122233344','Glaucia Ramires', '07-may-1999', '223334445',10, null, 'F',1)
;

insert into setor values (1,'Financeiro')
;

insert into socio values('99887766554', 'Maciel Thomé Filho', 28-fev-78, '561.894.237-98', 100, '912457898', 'M', 001)
;

insert into socio values('99887766554', 'Maciel Thomé Filho','28-fev-78','561.894.237-98',100,'912457898','M',001)
;

insert into socio values('99887766554','Maciel Thomé Filho','28-fev-1978','561.894.237-98',100,'912457898','M',001)
;

insert into socio values('99887766554','Maciel Thomé Filho','28-feb-1978','561.894.237-98',100,'912457898','M',001)
;

insert into socio values ('11122233344','Glaucia Ramires', '07-may-1999', '223334445',10, null, 'F',1)
;

insert into setor values (1,'Financeiro')
;

insert into setor values (002, 'DevOps')
;

insert into socio values ('11122233344','Glaucia Ramires', '07-may-1999', '223334445',10, null, 'F',002)
;

insert into socio values ('11122233344','Glaucia Ramires', '07-may-1999', '223334445',101, null, 'F',002)
;

insert into dependente values('11122233344', 0001, 'Glaucia Ramires', '07-may-1999')
;

insert into dependente values('99887766554', 0002, 'Maciel Thomé Filho', '28-feb-1978')
;

insert into setor values (1,'Financeiro')
;

insert into setor values (002, 'DevOps')
;

insert into socio values('99887766554','Maciel Thomé Filho','28-feb-1978','561.894.237-98',100,'912457898','M',001)
;

insert into socio values ('11122233344','Glaucia Ramires', '07-may-1999', '223334445',101, null, 'F',002)
;

insert into dependente values('11122233344', 0001, 'Glaucia Ramires', '07-may-1999')
;

insert into dependente values('99887766554', 0002, 'Maciel Thomé Filho', '28-feb-1978')
;
