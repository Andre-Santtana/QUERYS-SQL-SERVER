use Logstica;
go

select * from TableCliente;
GO

INSERT INTO TableCliente (CodigoDoCliente, NomeDaEmpresa, NomeDoContato, CargoDoContato, Cidade, Pais)
VALUES ('DEPLE', 'Deep Purple', 'Ian Gillan', 'Representante Comercial', 'Osasco', 'Brasil');

INSERT INTO TableCliente (CodigoDoCliente, NomeDaEmpresa, NomeDoContato, CargoDoContato, Cidade, Pais)
VALUES ('ACDC', 'ACDC', 'Angus McKinnon Young', '	Proprietário', 'São Paulo', 'Brasil');

INSERT INTO TableCliente (CodigoDoCliente, NomeDaEmpresa, NomeDoContato, CargoDoContato, Cidade, Pais)
VALUES ('QUEENB', 'Queen', 'Freddie Mercury', '	Proprietário', 'Londres', 'Reino Unido');