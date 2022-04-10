
CREATE DATABASE DK_INFOR

ON(
	NAME = DK_INFOR_DATA,
	FILENAME = 'D:\SQL2019\BANCOS_DE_DADOS\BD_DK_INFOR\DK_INFOR_DATA.mdf',
	SIZE = 10,
	MAXSIZE = 50,
	FILEGROWTH = 5 )

LOG ON (
	NAME = DK_INFOR_LOG,
	FILENAME = 'D:\SQL2019\BANCOS_DE_DADOS\BD_DK_INFOR\DK_INFOR_LOG.ldf',
	SIZE = 5MB,
	MAXSIZE = 25MB,
	FILEGROWTH = 5MB )
GO
