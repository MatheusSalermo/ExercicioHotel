--1 
use bdHotel
SELECT COUNT(codApartamento)
FROM tbReservaAp
WHERE codApartamento=1;
--2
SELECT COUNT(dataCheckIn)
FROM tbHospedagem
WHERE DATEPART(MONTH,dataCheckIn) = '05'
--3
SELECT max(valorFinalConta)
FROM tbConta
--4
SELECT COUNT(codTipoPagamento)
FROM tbConta
WHERE codTipoPagamento=1;
--5
SELECT sum(valorFinalConta)
FROM tbConta
WHERE codTipoPagamento=1;
--6
SELECT avg(valorFinalConta)
FROM tbConta
WHERE codTipoPagamento=2 or codTipoPagamento = 3;
--7
SELECT count(dataCheckIn)
FROM tbHospedagem
WHERE DATEPART(YYYY,dataCheckIn) = '2019'
--8
SELECT count(codCliente)
FROM tbHospedagem
WHERE codCliente=1;
--9
SELECT count(codServico)
FROM tbServicoConta
WHERE codServico=2;
--10
SELECT avg(valorServico)
FROM tbServico
--11
SELECT avg(valorProduto)
FROM tbProduto
--12
SELECT max(valorProduto)
FROM tbProduto
--13
  
