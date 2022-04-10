-- Script do tópico Constraint


CREATE DATABASE BD_CONSTRAINTS
 GO 

USE BD_CONSTRAINTS;
 GO

-- -------------------------------------------
/*IDENTITY*/
 
CREATE TABLE tb_identity(
	Cod INT IDENTITY PRIMARY KEY, 
	NOME VARCHAR(50))
 GO

INSERT INTO tb_identity (NOME)
VALUES	('LINHA 1'), 
		('LINHA 2')
 GO


-- APRESENTAR ERRO / pois o IDENTITY tem a função de setar/definir as primary key, não sendo permitido adc manualmente. 
INSERT INTO tb_identity (Cod,NOME)
VALUES (3,'LINHA 3')
 GO 

 -- PARA ABILITAR A INSERSÃO MANUAL DAS PK 
 SET IDENTITY_INSERT tb_identity ON
  GO
  -- PARA DESABILITAR A INSERSÃO MANUAL DAS PK E DEIXAR NO MODO IDENTITY 
 SET IDENTITY_INSERT tb_identity OFF
  GO



SELECT * FROM tb_identity
 GO

-- -------------------------------------------------------
/*PK*/
 
CREATE TABLE tb_pk ( 
	Cod INT CONSTRAINT pk_test PRIMARY KEY, 
	Nome VARCHAR(50))
 GO

 
INSERT INTO tb_pk (Cod,NOME)
VALUES	(1,'LINHA 1'),
		(2,'LINHA 3')
 GO

-- APRESENTAR ERRO / ja exite um cod com o numero 2
INSERT INTO tb_pk (Cod,NOME)
VALUES (2,'LINHA 4')
 
 
SELECT * FROM tb_pk
 GO
 -- --------------------------------------------

/*FK*/
 
CREATE TABLE tb_fk_marca (
	Cod INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50))
 GO

CREATE TABLE tb_fk_carro( 
	Placa varchar(6) PRIMARY KEY,
	modelo VARCHAR(50),
	fk_marca INT  FOREIGN KEY REFERENCES tb_fk_marca(Cod))
 GO
 
INSERT INTO tb_fk_marca (NOME)
VALUES	('VW'),
		('CHEVROLET'), 
		('TOYOTA')
 GO 
 
INSERT INTO tb_fk_carro (Placa,modelo,fk_marca)
VALUES ('PLA001', 'FOX', 1)
	  ,('PLA002', 'ONIX SEDAN', 2)
 GO	  
	
-- APRESENTAR ERRO
INSERT INTO tb_fk_carro (Placa,modelo,fk_marca)
VALUES ('PLA004', 'ARGO', 4)
 GO

SELECT * FROM tb_fk_marca
GO
 -- UNNION

SELECT * FROM tb_fk_carro
 GO


SELECT * FROM 
	tb_fk_carro as tc 
inner join	
	tb_fk_marca as tm
ON tc.fk_marca = tm.Cod
 GO

SELECT Cod, nome, modelo, Placa 
	FROM tb_fk_marca AS tm
INNER JOIN
	tb_fk_carro AS tc
ON
	tc.fk_marca = tm.Cod
 GO







/*UNIQUE*/
 
CREATE TABLE tb_unique(
Cod INT PRIMARY KEY IDENTITY, 
Nome VARCHAR(50), 
CPF CHAR(11) CONSTRAINT UQ_CPF UNIQUE 
)
 
INSERT INTO tb_unique (NOME, CPF)
VALUES ('PESSOA A', '11122233344'), ('PESSOA B', '11122233345')
 
--APRESENTAR ERRO
INSERT INTO tb_unique (NOME, CPF)
VALUES ('PESSOA C', '11122233344')
 
SELECT * FROM tb_unique
 
/*NOT NULL*/
 
CREATE TABLE tb_notnull( 
Cod INT PRIMARY KEY IDENTITY, 
NOME VARCHAR(50) NOT NULL, 
DT DATE NULL 
)
 
 
INSERT INTO tb_notnull ( NOME, DT)
VALUES ('A', GETDATE())
 
--APRESENTAR ERRO
INSERT INTO tb_notnull ( NOME, DT)
VALUES (NULL, GETDATE())
 
SELECT * FROM tb_notnull
 
/*DEFAULT*/
 
CREATE TABLE tb_default(
Cod INT PRIMARY KEY IDENTITY, 
Nome VARCHAR(50), 
dtInsert DATE CONSTRAINT DF_DATA DEFAULT (GETDATE()) 
)
 
INSERT INTO tb_default ( NOME, dtInsert)
VALUES ('A', '2020-04-15')
 
--VERIFICAR VALOR DEFAULT
INSERT INTO tb_default (NOME)
VALUES ('B')
 
SELECT * FROM tb_default
 
/*CHECK*/
 
 
CREATE TABLE tb_check(
Cod INT PRIMARY KEY IDENTITY, 
NOME VARCHAR(50) NOT NULL, 
VALOR NUMERIC (6,2) CHECK (VALOR > 0),
LETRA CHAR(1) CHECK (LETRA IN ('A', 'B', 'C'))
)
 
INSERT INTO tb_check ( NOME, VALOR, LETRA)
VALUES ('linha 1', 100.99, 'A')
 
--APRESENTAR ERRRO 1:  CAMPO VALOR
INSERT INTO tb_check ( NOME, VALOR, LETRA)
VALUES ('linha 2', 0, 'A')
 
--APRESENTAR ERRRO 2 : CAMPO LETRA
INSERT INTO tb_check ( NOME, VALOR, LETRA)
VALUES ('linha 2', 20, 'D')
 
SELECT * FROM tb_check