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

Quais Alimentos um Cozinheiro está preparando?

select A.nome, B.alimento from Funcionario A, Cozinheiro B
where A.id_funcionario = B.id_funcionario;

O entregador X trabalha em qual empresa?

select A.nome, B.nomeEmpresa from Funcionario A, Empresa B, Entregador C
where A.id_empresa = B.id_empresa and A.id_funcionario = C.id_funcionario;

O cozinheiro X trabalha em qual empresa?

select A.nome, B.nomeEmpresa from Funcionario A, Empresa B, Cozinheiro C
where A.id_empresa = B.id_empresa and A.id_funcionario = C.id_funcionario;

A entrega X foi feita por qual entregador?
select A.nome, B.pedidoEntrega from Funcionario A, Entregador B;

Qual entregador tem a maior nota?
select MAX(nota) from Entregador;

A comida do pedido X foi entregue por qual entregador?

select C.pedidoEntrega, B.Nome from Pedido A, Funcionario B, Entregador C
where B.id_funcionario = C.id_funcionario and A.id_pedido = C.id_pedido;

A comida X do pedido Y foi feita por qual cozinheiro?
select C.alimento, B.Nome from Pedido A, Funcionario B, Cozinheiro C

where B.id_funcionario = C.id_funcionario and A.id_cozinheiro = C.id_cozinheiro;

A comida X é mais ligada a qual empresa?
Qual é o bairro com o maior numero de clientes?

Qual é a comida mais pedida em certo bairro?
