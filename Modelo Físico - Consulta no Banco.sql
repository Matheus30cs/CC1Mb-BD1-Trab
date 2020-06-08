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
