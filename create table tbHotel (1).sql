use bdHotel


create table tbCliente(
codCliente int primary key identity(1,1)
,nomeCliente varchar (90)not null
,cpfCliente varchar (20)
,rgCliente varchar (20)
,sexoCliente varchar (30)
,logCliente varchar (90)
,numRuaCliente varchar (10)
,complementoLogCliente varchar (90)
,cidadeCliente varchar (50)
,estadoCliente varchar (50)
,paisCliente varchar (30)
)

create table tbTipoApartamento(
codTipoApartamento int primary key identity(1,1)
,descricaoTipoApartamento varchar (20)
,valorDiariaAp money
)

create table tbTipoPagamento(
codTipoPagamento int primary key identity (1,1)
,descricaoTipoPagamento varchar (30)
)

create table tbServico(
codServico int primary key identity (1,1)
,descricaoServico varchar(60)
,valorServico money
)

create table tbProduto(
codProduto  int primary key identity (1,1)
,descricaoProduto  varchar(60)
,valorProduto money
)

create table tbApartamento(
codApartamento int primary key identity (1,1)
,numApartamento varchar (20)
,codTipoApartamento int foreign key references tbTipoApartamento(codTipoApartamento) 
)

create table tbReserva(
codReserva int primary key identity(1,1)
,numPessoasReserva int 
)

create table tbClienteReserva(
codClienteReserva int primary key identity (1,1)
,codCliente int foreign key references tbCliente(codCliente)
,codReserva int foreign key references tbReserva(codReserva)
)

 create table tbReservaAp(
codReservaAp int primary key identity(1,1)
,codReserva  int foreign key references tbReserva(codReserva)
,codApartamento int foreign key references tbApartamento(codApartamento)
)

create table tbHospedagem(
codHospedagem int primary key identity (1,1)
,dataCheckIn date
,horaCheckIn time
,dataCheckOut date
,horaCheckOut time
,codCliente int foreign key references tbCliente(codCliente)
,codApartamento int foreign key references tbApartamento(codApartamento)
)
create table tbConta(
codConta int primary key identity(1,1)
,valorHospedagemConta money
,valorFinalConta money
,codHospedagem int foreign key references tbHospedagem(codHospedagem)
)

create table tbTipoPagConta(
codTipoPagConta int primary key identity (1,1)
,codTipoPagamento int foreign key references tbTipoPagamento(codTipoPagamento)
,codConta int foreign key references tbConta(codConta)
)


create table tbServicoConta(
codServicoConta int primary key identity (1,1)
,codServico int foreign key references tbServico(codServico)
,codConta  int foreign key references tbConta(codConta)
)

create table tbProdutoConta(
codProdutoConta int primary key identity (1,1)
,codProduto int foreign key references tbProduto(codProduto)
,codConta  int foreign key references tbConta(codConta)
)

create table tbClienteConta(
codClienteConta int primary key identity (1,1)
,codCliente int foreign key references tbCliente(codCliente)
,codConta  int foreign key references tbConta(codConta)
)

create table tbTelCliente(
codTelCliente int primary key identity (1,1)
,descricaoTelCliente varchar (20)
,codCliente int foreign key references tbCliente(codCliente)
)

