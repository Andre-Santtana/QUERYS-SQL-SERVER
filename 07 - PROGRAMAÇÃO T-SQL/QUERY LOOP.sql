
BEGIN TRAN
declare @id int = 10001,
		@idfuncionario int = 1

while @idfuncionario < 10000
 begin
	update funcionarios
	set idFuncionario = @id
	where idFuncionario = @idfuncionario

	set @idfuncionario = @idfuncionario + 1
	set @id = @id + 1
end;

ROLLBACK
COMMIT