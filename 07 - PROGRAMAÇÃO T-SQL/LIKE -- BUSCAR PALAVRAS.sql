	
 'BUSCAR TODOS OS NOMES QUE TENHAM "tin" NO MEIO DO NOME'
 
 
	SELECT NomeDoContato, NomeDaEmpresa, CodigoDoCliente FROM TblClientes
		WHERE NomeDoContato LIKE '%' + 'tin' + '%'
GO