-- CREATE USER 'nome do usuario'@'local' IDENTIFIED BY '12345';
-- O local de acesso pode ser definodo como um IP fixo da onde o usuario fara o acesso. uma aplicação web por exemplo tem seu ip fixo.
-- nesse caso o usuario andre estara acessando do ip 200.200....
-- CREATE USER 'andre.santana'@'200.200.190.190' IDENTIFIED BY '12345';

-- aqui pode esta acessando da minha propria maquina
-- CREATE USER 'andre.santana'@'localhost' IDENTIFIED BY '12345';

-- podera se conectar ao banco de qualquer endereço de IP
-- CREATE USER 'andre.santana'@'%' IDENTIFIED BY '12345';

-- -----------------------------------------------------------------------------


CREATE USER 'andre.santana'@'localhost' IDENTIFIED BY '12345';

GRANT ALL ON curso_sql.* to 'andre.santana'@'localhost';


CREATE USER 'andre.santana'@'%' IDENTIFIED BY '123456';
GRANT SELECT ON curso_sql.* TO 'andre.santana'@'%';



REVOKE SELECT ON curso_sql.* FROM 'andre.santana'@'%';

REVOKE ALL ON curso_sql.* FROM 'andre.santana'@'%';
REVOKE ALL ON curso_sql.* FROM 'andre.santana'@'localhost';

DROP USER 'andre.santana'@'%';
DROP USER 'andre.santana'@'localhost';

-- CONSULTA DE USUARIOS

SELECT USER FROM mysql.user;

-- VER OS PREVILEGIOS DE ACESSO DO USER

SHOW GRANTS FOR 'andre.santana'@'%';
SHOW GRANTS FOR 'andre.santana'@'localhost';

DROP USER 'soldier'@'localhost';








