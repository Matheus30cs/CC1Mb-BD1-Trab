insert into Empresa(id_empresa, nomeEmpresa, telefone) values (0, 'King Produções', '99123-4567');

insert into Empresa(id_empresa, nomeEmpresa, telefone) values (1, 'Restaurante da Dona Florinda', '99321-7654');

insert into Empresa(id_empresa, nomeEmpresa, telefone) values (2, 'Almoço Rápido', '92913-6475');

insert into Endereco_Empresa(id_endereco, id_empresa, cep, numero, bairro) values (0, 0, '68906-630', 22, 'IBES');

insert into Endereco_Empresa(id_endereco, id_empresa, cep, numero, bairro) values (1, 1, '49080-623', 19, 'Glória');

insert into Endereco_Empresa(id_endereco, id_empresa, cep, numero, bairro) values (2, 2, '56313-385', 19, 'Santa Mônica');

insert into Funcionario(id_funcionario, id_empresa, cpf, nome) values (0, 2, '146.508.317-09', 'Fernando Moreira');

insert into Funcionario(id_funcionario, id_empresa, cpf, nome) values (1, 0, '246.809.087-00', 'Isabela Diniz');

insert into Funcionario(id_funcionario, id_empresa, cpf, nome) values (2, 1, '675.318.957-22', 'Marcos Antônio');

insert into Funcionario(id_funcionario, id_empresa, cpf, nome) values (3, 1, '088.906.477-60', 'Gabriel Araújo');

insert into Funcionario(id_funcionario, id_empresa, cpf, nome) values (4, 2, '867.791.097-20', 'Emily Rocha');

insert into Funcionario(id_funcionario, id_empresa, cpf, nome) values (5, 0, '574.339.247-10', 'Matheus Barros');

insert into Cozinheiro(id_cozinheiro, id_funcionario, alimento) values (0, 1, 'Frango Assado');

insert into Cozinheiro(id_cozinheiro, id_funcionario, alimento) values (1, 2, 'Arroz com Feijão');

insert into Cozinheiro(id_cozinheiro, id_funcionario, alimento) values (2, 0, 'Alface e Tomate');

insert into Cliente(id_cliente, cpf, nome, telefone) values (0, '136.179.930-79', 'Marcio Navarro', '99915-8791');

insert into Cliente(id_cliente, cpf, nome, telefone) values (1, '389.882.297-46', 'Lucas Freire', '96038-6476');

insert into Cliente(id_cliente, cpf, nome, telefone) values (2, '381.988.937-09', 'Janaina da Costa', '95263-0678');

insert into Pedido(id_pedido, id_cliente, id_cozinheiro, qntpedidos) values (0, 1, 2, 3);

insert into Pedido(id_pedido, id_cliente, id_cozinheiro, qntpedidos) values (1, 2, 0, 1);

insert into Pedido(id_pedido, id_cliente, id_cozinheiro, qntpedidos) values (2, 0, 1, 5);

insert into Endereco_Cliente(id_endereco, id_cliente, cep, numero, bairro) values (0, 2, '70740-715', 17, 'Itapuã');

insert into Endereco_Cliente(id_endereco, id_cliente, cep, numero, bairro) values (1, 1, '60831-735', 14, 'Garoto');

insert into Endereco_Cliente(id_endereco, id_cliente, cep, numero, bairro) values (2, 0, '72833-651', 19, 'Zumbi dos Palmares');

insert into Entregador(id_entregador, id_funcionario, id_pedido, pedidoEntrega, tempoEntrega, nota) values (0, 3, 1, 'Frango Assado', '1 hora e 30 minutos', 7);

insert into Entregador(id_entregador, id_funcionario, id_pedido, pedidoEntrega, tempoEntrega, nota) values (1, 4, 0, 'Alface e Tomate', '1 hora', 8.5);

insert into Entregador(id_entregador, id_funcionario, id_pedido, pedidoEntrega, tempoEntrega, nota) values (2, 5, 2, 'Arroz com Feijão', '30 minutos', 10);

insert into Entrega(id_entrega, id_cliente, id_entregador) values (0, 2, 5);

insert into Entrega(id_entrega, id_cliente, id_entregador) values (1, 0, 3);

insert into Entrega(id_entrega, id_cliente, id_entregador) values (2, 1, 4);
