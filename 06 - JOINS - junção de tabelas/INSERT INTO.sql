use Logstica;
go

select * from TableCliente;
GO

INSERT INTO TableCliente (CodigoDoCliente, NomeDaEmpresa, NomeDoContato, CargoDoContato, Cidade, Pais)
VALUES ('DEPLE', 'Deep Purple', 'Ian Gillan', 'Representante Comercial', 'Osasco', 'Brasil');

INSERT INTO TableCliente (CodigoDoCliente, NomeDaEmpresa, NomeDoContato, CargoDoContato, Cidade, Pais)
VALUES ('ACDC', 'ACDC', 'Angus McKinnon Young', '	Propriet�rio', 'S�o Paulo', 'Brasil');

INSERT INTO TableCliente (CodigoDoCliente, NomeDaEmpresa, NomeDoContato, CargoDoContato, Cidade, Pais)
VALUES ('QUEENB', 'Queen', 'Freddie Mercury', '	Propriet�rio', 'Londres', 'Reino Unido');