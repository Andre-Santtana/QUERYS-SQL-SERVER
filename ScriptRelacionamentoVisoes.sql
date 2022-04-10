USE curso_sql;

SELECT * FROM funcionario;
SELECT * FROM veiculo;

SELECT * FROM funcionario INNER JOIN veiculo ON veiculo.funcionario_id = funcionario.id;

SELECT * FROM funcionarios f INNER JOIN veiculos v ON v.funcionario_id = f.id;
SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id;
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;

SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id
UNION
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;

INSERT INTO veiculo (funcionario_id, veiculo, placa) VALUES (null, "Moto", "SB-0003");

CREATE TABLE cpf
(
	id int unsigned not null,
    cpf varchar(14) not null,
    PRIMARY KEY (id),
    CONSTRAINT fk_cpf FOREIGN KEY (id) REFERENCES funcionario (id)
);

INSERT INTO cpf (id, cpf) VALUES (1, '111.111.111-11');
INSERT INTO cpf (id, cpf) VALUES (2, '222.222.222-22');
INSERT INTO cpf (id, cpf) VALUES (3, '333.333.333-33');
INSERT INTO cpf (id, cpf) VALUES (5, '555.555.555-55');

SELECT * FROM cpf;

SELECT * FROM funcionarios INNER JOIN cpfs ON funcionarios.id = cpfs.id;
SELECT * FROM funcionarios INNER JOIN cpfs USING(id);

CREATE TABLE cliente
(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    quem_indicou int unsigned,
    PRIMARY KEY (id),
    CONSTRAINT fk_quem_indicou FOREIGN KEY (quem_indicou) REFERENCES cliente (id)
);

INSERT INTO cliente (id, nome, quem_indicou) VALUES (1, 'André', NULL);
INSERT INTO cliente (id, nome, quem_indicou) VALUES (2, 'Samuel', 1);
INSERT INTO cliente (id, nome, quem_indicou) VALUES (3, 'Carlos', 2);
INSERT INTO cliente (id, nome, quem_indicou) VALUES (4, 'Rafael', 1);

SELECT * FROM cliente;

SELECT a.nome AS CLIENTE, b.nome AS "QUEM INDICOU" 
FROM clientes a join clientes b ON a.quem_indicou = b.id;

SELECT * FROM funcionarios 
INNER JOIN veiculos ON veiculos.funcionario_id = funcionarios.id 
INNER JOIN cpfs ON cpfs.id = funcionarios.id;

CREATE VIEW funcionarios_a AS SELECT * FROM funcionarios WHERE salario >= 1700;

SELECT * FROM funcionarios_a;
UPDATE funcionarios SET salario = 1500 WHERE id = 3;

DROP VIEW funcionarios_a;
CREATE VIEW funcionarios_a AS SELECT * FROM funcionario WHERE salario >= 2000;





