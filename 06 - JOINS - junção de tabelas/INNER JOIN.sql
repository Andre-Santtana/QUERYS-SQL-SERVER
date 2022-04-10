select * from 
	TblClientes
inner join 
	TblPedidos
ON TblClientes.CodigoDoCliente = TblPedidos.CodigoDoCliente
inner join 
	TblFuncionarios 
on TblPedidos.CodigoDoFuncionario = TblFuncionarios.CodigoDoFuncionario
go

