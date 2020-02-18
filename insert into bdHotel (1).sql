use bdHotel

insert into tbCliente (nomeCliente,cpfCliente,rgCliente,sexoCliente, logCliente, numRuaCliente, complementoLogCliente, cidadeCliente, estadoCliente, paisCliente)
values ('Gabigol Barbosa Almeida','526.374.468-46','56.188.674-X','Masculino','Rua Carvalho de Ara�jo','14','A','Rio de Janeiro','Rio de Janeiro','Brasil')
	,('Bruno Henrique','559.433.018-60','50.092.535-5','Masculino','Rua Saturnino Pereira','262','-','S�o Paulo','S�o Paulo','Brasil')
	,('Giorgian Daniel De Arrascaeta','-','-','Masculino','Rua Alguma Coisa do Uruguai','24','Apartamento 12 - Bloco B','Punta del Este','Montevideu','Uruguai')
	,('Marta da Silva', '103.751.338.01','56.698.741-8','Feminino','Rua Feliciano de Mendon�a','290','C','Campinas','S�o Paulo','Brasil')
	,('Aline Mendon�a', '203.632.546-9','85.698.475-2','Feminino','Rua Sql � �timo', '13','-','Preiro Linux','Acre','Brasil')

insert into tbTipoApartamento (descricaoTipoApartamento)
values ('Single')
		,('Medium')
		,('Master')

insert into tbApartamento(numApartamento, codTipoApartamento)
values('11','1')
,('2','1')
,('3','1')
,('4','1')
,('101','2')
,('102','2')
,('103','2')
,('104','2')
,('201','3')
,('202','3')
,('203','3')
,('204','3')
,('205','3')

insert into tbProduto(descricaoProduto, valorProduto)
values ('Coca-Cola 2L', 10.00)
,('Coca-Cola 390ml' , 4.50)
,('Agua Mineral',2.00)
,('Agua Voss', 40.00)
,('Hot-dog',7.00)

insert into tbServico(descricaoServico,valorServico)
values ('Lavanderia',30.00)
,('Internet',60.00)

insert into tbTipoPagamento(descricaoTipoPagamento)
values('Dinheiro')
,('Cart�o de cr�dito')
,('Cart�o de d�bito')
,('Cheque')

insert into tbReserva(numPessoasReserva)
values(3)
,(5)
,(1)
,(20)
,(4)
,(7)
,(2)
,(2)
,(6)
,(3)

insert into tbClienteReserva(codCliente, codReserva)
values (1,1)
,(2,2)
,(3,3)
,(4,4)
,(5,5)
,(1,6)
,(2,7)
,(3,8)
,(4,9)
,(5,10)

insert into tbReservaAp(codReserva,codApartamento)
values (1,2)
,(2,1)
,(3,3)
,(4,5)
,(5,4)
,(6,6)
,(7,7)
,(8,10)
,(9,9)
,(10,8)

insert into tbHospedagem(dataCheckIn, horaCheckIn, dataCheckOut,horaCheckOut,codCliente,codApartamento)
values ('14/02/2019','12:30','19/02/2019','12:30',1,1)
,('25/02/2019','14:30','01/03/2019','14:30',2,2)
,('13/02/2020','16:00','15/02/2020','16:00',3,3)
,('14/02/2019','12:15','17/02/2019','12:15',4,1)
,('27/05/2020','07:00','01/06/2020','07:00',5,2)
,('25/12/2019','19:30','01/01/2020','19:30',1,3)
,('15/09/2020','09:45','20/09/2020','09:45',2,1)
,('31/01/2019','12:30','19/02/2019','12:30',3,2)
,('14/02/2019','12:10','19/02/2019','12:10',4,3)
,('18/02/2019','13:30','19/02/2019','13:30',5,1)

insert into tbConta(valorHospedagemConta,valorFinalConta, codTipoPagamento)
values(100,140,1)
,(100,130,1)
,(150,170,2)
,(190,210,3)
,(100,100,4)
,(150,150,1)
,(190,220,1)
,(100,130,2)
,(100,130,3)
,(190,250,2)

insert into tbServicoConta(codServico,codConta)
values(2,1)
,(1,2)
,(2,3)
,(1,4)
,(2,5)
,(1,6)
,(2,7)
,(1,8)
,(2,9)
,(1,10)

insert into tbProdutoConta(codProduto,codConta)
values(5,1)
,(4,2)
,(3,3)
,(2,4)
,(1,5)
,(1,6)
,(2,7)
,(3,8)
,(4,9)
,(5,10)

insert into tbClienteConta(codCliente,codConta)
values(2,1)
,(1,2)
,(3,3)
,(4,4)
,(5,5)
,(1,6)
,(2,7)
,(3,8)
,(4,9)
,(5,10)

insert into tbTelCliente(descricaoTelCliente,codCliente)
values('2552-9011',1)
,('94953-6707',2)
,('96839-0366',3)
,('96228-5207',4)
,('2961-0352',5)






