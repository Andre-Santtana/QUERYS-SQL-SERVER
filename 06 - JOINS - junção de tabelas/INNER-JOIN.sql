SELECT Cod, nome, modelo, Placa 
	FROM tb_fk_marca AS tm
INNER JOIN
	tb_fk_carro AS tc
ON
	tc.fk_marca = tm.Cod
 GO