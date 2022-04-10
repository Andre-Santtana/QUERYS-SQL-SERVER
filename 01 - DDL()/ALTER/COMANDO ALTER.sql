/*COMANDO ALTER */

/*ADCIONANDO UM NOVO CAMPO A TABELA*/
ALTER TABLE cliente
ADD DATA_NACIMENTO DATE, CPF CHAR(11)

-- ------------------------------------
/*EXCLUINDO UM CAMPO DA TABELA*/
ALTER TABLE cliente
DROP COLUMN sexo;

-- -------------------------------------

/*ALTERANDO O TIPO DE DADO */
ALTER TABLE cliente
ALTER COLUMN CPF VARCHAR(11);

 