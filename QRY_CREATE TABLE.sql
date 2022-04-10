CREATE DATABASE CURSO_SQL;

USE CURSO_SQL;

CREATE TABLE FUNCIONARIO (
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    salario double not null default '0',
    departamento varchar(45) not null,
    
    PRIMARY KEY(id)
);


create table veiculo(
	id int unsigned not null auto_increment,
    funcionario_id int unsigned default null,
    veiculo varchar(45) not null default'',
    placa varchar (10) not null default '',
    
    PRIMARY KEY(id), 
    CONSTRAINT fk_veiculos_funcionarios
    FOREIGN KEY(funcionario_id) REFERENCES funcionario(id)
);

create table salario(
	faixa varchar(45) not null,
    inicio double not null,
    fim double not null,
    
    PRIMARY KEY(faixa)	
);















