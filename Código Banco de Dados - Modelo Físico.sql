create table Empresa(id_empresa int not null Primary Key, nomeEmpresa varchar2(30) not null,
                     telefone varchar2 (20) not null);

create table Endereco_Empresa(id_endereco integer not null Primary Key, id_empresa integer not null, 
                              cep varchar2 (20) unique not null, numero integer not null,
                              bairro varchar2 (30) not null, foreign key(id_empresa) references Empresa(id_empresa));

create table Funcionario(id_funcionario integer not null Primary Key, id_empresa integer not null,
                         cpf varchar2(20) unique not null, nome varchar2 (50) not null,
                         foreign key(id_empresa) references Empresa(id_empresa));

create table Cozinheiro(id_cozinheiro integer not null Primary Key, id_funcionario integer not null,
                        alimento varchar2 (20) not null,
                        foreign key(id_funcionario) references Funcionario(id_funcionario));

create table Cliente(id_cliente integer not null Primary Key, cpf varchar2 (20) unique not null,
                     nome varchar2 (50) not null, telefone varchar2 (20) not null);

create table Pedido(id_pedido integer not null Primary Key, id_cliente integer not null,
                     id_cozinheiro integer not null, foreign key(id_cliente) references Cliente(id_cliente),
                     foreign key(id_cozinheiro) references Cozinheiro(id_cozinheiro));

create table Endereco_Cliente(id_endereco integer not null Primary Key, id_cliente integer not null,
                              cep varchar2 (20) unique not null, numero integer not null, 
                              bairro varchar2 (30) not null, foreign key (id_cliente) references Cliente(id_cliente));

create table Entregador(id_entregador integer not null Primary Key, id_funcionario integer not null,
                        id_pedido integer not null, pedidoEntrega varchar2(20) not null, tempoEntrega date not null,
                        nota integer not null, foreign key(id_funcionario) references Funcionario(id_funcionario),
                        foreign key(id_pedido) references Pedido(id_pedido));

create table Entrega(id_entrega integer not null Primary Key, id_cliente integer not null,
                     id_entregador integer not null, foreign key(id_cliente) references Cliente(id_cliente),
                     foreign key(id_entregador) references Entregador(id_entregador));