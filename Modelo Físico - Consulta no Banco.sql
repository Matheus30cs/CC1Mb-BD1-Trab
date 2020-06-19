Mostrando as informações de cada Tabela:

select * from Empresa;
select * from Endereco_Empresa;
select * from Funcionario;
select * from Cozinheiro;
select * from Cliente;
select * from Pedido;
select * from Endereco_Cliente;
select * from Entregador;
select * from Entrega;

Em que bairro uma empresa se encontra?

select A.nomeEmpresa, B.bairro from Empresa A, Endereco_Empresa B
where A.id_empresa = B.id_empresa;

Quantos Pedidos um cliente fez?

select A.nome, B.qntpedidos from Cliente A, Pedido B
where A.id_cliente = B.id_cliente;

A comida X do pedido foi feita por qual cozinheiro?

select A.nome as "NomeCozinheiro", B.alimento as "ComidaPedido" from Funcionario A, Cozinheiro B
where A.id_funcionario = B.id_funcionario;

A entrega X foi feita por qual entregador?
select A.nome as "NomeEntregador", B.pedidoEntrega from Funcionario A, Entregador B
where A.id_funcionario = B.id_funcionario;

Qual o Tempo em que cada Entregador levou para fazer a entrega?

select A.nome as "NomeEntregador", B.tempoEntrega from Funcionario A, Entregador B
where A.id_funcionario = B.id_funcionario;

O entregador X trabalha em qual empresa?

select A.nome as "NomeEntregador", B.nomeEmpresa from Funcionario A, Empresa B, Entregador C
where A.id_empresa = B.id_empresa and A.id_funcionario = C.id_funcionario;

O cozinheiro X trabalha em qual empresa?

select A.nome as "NomeCozinheiro", B.nomeEmpresa from Funcionario A, Empresa B, Cozinheiro C
where A.id_empresa = B.id_empresa and A.id_funcionario = C.id_funcionario;

Qual a maior nota que um Entregador recebeu?
select MAX(nota) from Entregador;
