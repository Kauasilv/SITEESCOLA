create database cadzinho;
use cadzinho;

CREATE TABLE tb_aluno (
  id_aluno INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_escola INT(10) NOT NULL,
  id_curso INT(10) NOT NULL,
  id_turma INT(10) NOT NULL,
  nome VARCHAR(30) NULL,
  idade INT(20) NOT NULL,
  endereco VARCHAR(30) NOT NULL,
  FOREIGN KEY (id_escola) REFERENCES nome_da_tabela_referenciada(nome_da_coluna_referenciada),
  FOREIGN KEY (id_curso) REFERENCES nome_da_tabela_referenciada(nome_da_coluna_referenciada),
  FOREIGN KEY (id_turma) REFERENCES nome_da_tabela_referenciada(nome_da_coluna_referenciada)
);


INSERT INTO tb_aluno (id_escola, id_curso, id_turma, nome, idade, endereco)
VALUES ('105848', '109282', '12093', 'Kauã', 18, 'Rua lorival pinto');


show tables;
describe tb_aluno;
describe tb_escola;


create table tb_escola (
id_escola int(10)NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome varchar(30)not null,
endereco varchar(30)not null,
telefone int(11)not null,
cnpj int(14)not null);

INSERT INTO tb_escola (id_escola, nome, endereco, telefone, cnpj)
VALUES (17898, "Santa Cândida", "Rua lorival", 2345678, 1093792);


create table diretoria (
id_diretoria int(10)not null primary key auto_increment,
id_escola int(10)not null,
nome varchar(40)not null,
cargo varchar(40)not null,
email varchar(40)not null,
FOREIGN KEY (id_escola) REFERENCES nome_da_tabela_referenciada(nome_da_coluna_referenciada)
);


INSERT INTO diretoria (id_diretoria, id_escola, nome, cargo, email)
VALUES (29575, 12345, "Elsio camargo", "diretor", "kauann0774@gmail.com");


drop table matricula;

create table curso (
id_curso int(10)not null primary key auto_increment,
id_escola int(10)not null,
nome varchar(30)not null,
duracao varchar(10)not null,
FOREIGN KEY (id_escola) REFERENCES nome_da_tabela_referenciada(nome_da_coluna_referenciada)
);



INSERT INTO curso (id_curso, id_escola, nome, duracao)
VALUES (2938473, 17898, "devs","2 anos");



create table matricula (
id_matricula int(10)not null primary key auto_increment,
id_aluno int(10)not null,
id_curso int(10)not null,
datamatric date,
FOREIGN KEY (id_aluno) REFERENCES nome_da_tabela_referenciada(nome_da_coluna_referenciada),
FOREIGN KEY (id_curso) REFERENCES nome_da_tabela_referenciada(nome_da_coluna_referenciada)
);



INSERT INTO matricula (id_matricula, id_aluno, id_curso, datamatric)
VALUES (356756, 45645,87346 ,2023-11-20);


show tables;

create table professor (
id_professor int(10)not null primary key auto_increment,
id_escola int(10)not null,
id_curso int(10)not null,
nome varchar(40)not null,
especialidade varchar(30)not null,
FOREIGN KEY (id_escola) REFERENCES nome_da_tabela_referenciada(nome_da_coluna_referenciada),
FOREIGN KEY (id_curso) REFERENCES nome_da_tabela_referenciada(nome_da_coluna_referenciada)
);

INSERT INTO professor (id_professor, id_escola, id_curso, nome, especialidade)
VALUES (38974, 39847, 38458, 'ivan do canal', 'programacao de apps');



INSERT INTO matricula (id_matricula, id_aluno, id_curso, datamatric)
VALUES (356456, 45645,87346 ,2023-11-20);



-- drop table controlFin;


create table turma (
id_turma int(10)not null primary key auto_increment,
nome varchar(30)not null,
id_curso int(10)not null,
id_professor int(10)not null,
FOREIGN KEY (id_curso) REFERENCES nome_da_tabela_referenciada(nome_da_coluna_referenciada),
FOREIGN KEY (id_professor) REFERENCES nome_da_tabela_referenciada(nome_da_coluna_referenciada)
);



INSERT INTO turma (id_turma, nome, id_curso, id_professor)
VALUES (28976, "2°H",345345 , 12392);



create table controlFin (
id_financeiro int(10)not null primary key auto_increment,
MesAno date,
receitas decimal(10)not null,
despesas decimal(10)not null,
saldo decimal(10)not null)
;


INSERT INTO controlFin (id_financeiro, MesAno, receitas, despesas, saldo)
VALUES (23948, '2023-10-21', 20000.00, 5000.00, 35000.00);


SHOW TABLES;
show tables
SHOW TABLES;


SELECT * FROM tb_aluno;
SELECT * FROM tb_escola;
SELECT * FROM diretoria;
SELECT * FROM matricula;
SELECT * FROM professor;
SELECT * FROM turma;
SELECT * FROM controlFin;





