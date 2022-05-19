create database db_enderecos;
use db_enderecos;

create table tb_endereco(
	id bigint auto_increment,
    cep varchar(255),
    nome_da_rua varchar(255),
    numero int,
    bairro varchar(255),
    cidade varchar(255),
    
    primary key (id)
);

select * from tb_endereco;

insert into tb_endereco(cep, nome_da_rua, numero, bairro, cidade)
values("06907-540","Rua do limoeiro",71,"Jardim dos bobos","Morumbi");

insert into tb_endereco(cep, nome_da_rua, numero, bairro, cidade)
values("77777-77","Rua Joao Gomes", 02 ,"Hoogwarts","Cidade de Deus");

insert into tb_endereco(cep, nome_da_rua, numero, bairro, cidade)
values("40028-922","Rua do Pedreiro", 420 ,"Liberdade","Cidade da Liberdade");

alter table tb_endereco MODIFY numero bigint;

update tb_endereco set bairro = "hogwarts" where id = 2;

-- set sql_safe_updates=0 ==> desativa o modo de segunrança.
-- delete from tb_endereco ==> deleta toda a tabela.
-- delete from tb_endereco wheere id = 1 ==> deleta a linha do id especifico. 
