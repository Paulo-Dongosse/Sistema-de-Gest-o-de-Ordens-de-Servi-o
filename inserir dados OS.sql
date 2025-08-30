USE sistema_os;


-- cliente 
-- =========================
insert into cliente (tipo, telefone, email) values ('pf','11999990001','joao@email.com');
insert into cliente (tipo, telefone, email) values ('pf','11999990002','maria@email.com');
insert into cliente (tipo, telefone, email) values ('pf','11999990003','carlos@email.com');
insert into cliente (tipo, telefone, email) values ('pf','11999990004','ana@email.com');
insert into cliente (tipo, telefone, email) values ('pf','11999990005','pedro@email.com');
insert into cliente (tipo, telefone, email) values ('pj','1133330001','contato@empresa1.com');
insert into cliente (tipo, telefone, email) values ('pj','1133330002','contato@empresa2.com');
insert into cliente (tipo, telefone, email) values ('pj','1133330003','contato@empresa3.com');
insert into cliente (tipo, telefone, email) values ('pj','1133330004','contato@empresa4.com');
insert into cliente (tipo, telefone, email) values ('pj','1133330005','contato@empresa5.com');


-- clientepf
-- =========================
insert into clientepf (id_cliente, nome, cpf) values (1,'João Silva','12345678901');
insert into clientepf (id_cliente, nome, cpf) values (2,'Maria Souza','12345678902');
insert into clientepf (id_cliente, nome, cpf) values (3,'Carlos Lima','12345678903');
insert into clientepf (id_cliente, nome, cpf) values (4,'Ana Costa','12345678904');
insert into clientepf (id_cliente, nome, cpf) values (5,'Pedro Alves','12345678905');


-- clientepj
-- =========================
insert into clientepj (id_cliente, razao_social, cnpj) values (6,'Empresa Alpha','12345678000101');
insert into clientepj (id_cliente, razao_social, cnpj) values (7,'Empresa Beta','12345678000102');
insert into clientepj (id_cliente, razao_social, cnpj) values (8,'Empresa Gama','12345678000103');
insert into clientepj (id_cliente, razao_social, cnpj) values (9,'Empresa Delta','12345678000104');
insert into clientepj (id_cliente, razao_social, cnpj) values (10,'Empresa Ômega','12345678000105');


-- endereco
-- =========================
insert into endereco (rua,numero,bairro,cidade,estado,cep) values ('Rua A','10','Centro','São Paulo','SP','01001000');
insert into endereco (rua,numero,bairro,cidade,estado,cep) values ('Rua B','20','Vila Nova','Rio de Janeiro','RJ','20020000');
insert into endereco (rua,numero,bairro,cidade,estado,cep) values ('Rua C','30','Industrial','Belo Horizonte','MG','30030000');
insert into endereco (rua,numero,bairro,cidade,estado,cep) values ('Rua D','40','Comercial','Curitiba','PR','80080000');
insert into endereco (rua,numero,bairro,cidade,estado,cep) values ('Rua E','50','Residencial','Salvador','BA','40040000');
insert into endereco (rua,numero,bairro,cidade,estado,cep) values ('Rua F','60','Centro','Fortaleza','CE','60060000');
insert into endereco (rua,numero,bairro,cidade,estado,cep) values ('Rua G','70','Jardins','Recife','PE','50050000');
insert into endereco (rua,numero,bairro,cidade,estado,cep) values ('Rua H','80','Praia','Florianópolis','SC','88088000');
insert into endereco (rua,numero,bairro,cidade,estado,cep) values ('Rua I','90','Histórico','Porto Alegre','RS','90090000');
insert into endereco (rua,numero,bairro,cidade,estado,cep) values ('Rua J','100','Novo','Manaus','AM','69069000');


-- clienteEndereco
-- =========================
insert into clienteEndereco values (1,1);
insert into clienteEndereco values (2,2);
insert into clienteEndereco values (3,3);
insert into clienteEndereco values (4,4);
insert into clienteEndereco values (5,5);
insert into clienteEndereco values (6,6);
insert into clienteEndereco values (7,7);
insert into clienteEndereco values (8,8);
insert into clienteEndereco values (9,9);
insert into clienteEndereco values (10,10);


-- veiculo
-- =========================
insert into veiculo (id_cliente,marca,modelo,ano,placa) values (1,'Fiat','Uno',2010,'ABC1234');
insert into veiculo (id_cliente,marca,modelo,ano,placa) values (2,'VW','Gol',2015,'BCD2345');
insert into veiculo (id_cliente,marca,modelo,ano,placa) values (3,'Chevrolet','Onix',2018,'CDE3456');
insert into veiculo (id_cliente,marca,modelo,ano,placa) values (4,'Ford','Ka',2017,'DEF4567');
insert into veiculo (id_cliente,marca,modelo,ano,placa) values (5,'Toyota','Corolla',2020,'EFG5678');
insert into veiculo (id_cliente,marca,modelo,ano,placa) values (6,'Renault','Logan',2012,'FGH6789');
insert into veiculo (id_cliente,marca,modelo,ano,placa) values (7,'Hyundai','HB20',2019,'GHI7890');
insert into veiculo (id_cliente,marca,modelo,ano,placa) values (8,'Honda','Civic',2021,'HIJ8901');
insert into veiculo (id_cliente,marca,modelo,ano,placa) values (9,'Jeep','Compass',2022,'IJK9012');
insert into veiculo (id_cliente,marca,modelo,ano,placa) values (10,'Nissan','Kicks',2023,'JKL0123');


-- equipe
-- =========================
insert into equipe (nome_equipe) values ('Equipe A');
insert into equipe (nome_equipe) values ('Equipe B');
insert into equipe (nome_equipe) values ('Equipe C');
insert into equipe (nome_equipe) values ('Equipe D');
insert into equipe (nome_equipe) values ('Equipe E');
insert into equipe (nome_equipe) values ('Equipe F');
insert into equipe (nome_equipe) values ('Equipe G');
insert into equipe (nome_equipe) values ('Equipe H');
insert into equipe (nome_equipe) values ('Equipe I');
insert into equipe (nome_equipe) values ('Equipe J');


-- mecanico
-- =========================
insert into mecanico (nome,especialidade) values ('José Mecânico','Motor');
insert into mecanico (nome,especialidade) values ('Marcos Souza','Suspensão');
insert into mecanico (nome,especialidade) values ('Luiz Santos','Freios');
insert into mecanico (nome,especialidade) values ('Carlos Pereira','Transmissão');
insert into mecanico (nome,especialidade) values ('Paulo Oliveira','Injeção');
insert into mecanico (nome,especialidade) values ('Rafael Lima','Elétrica');
insert into mecanico (nome,especialidade) values ('Rodrigo Silva','Direção');
insert into mecanico (nome,especialidade) values ('André Costa','Pintura');
insert into mecanico (nome,especialidade) values ('Tiago Ramos','Ar Condicionado');
insert into mecanico (nome,especialidade) values ('Daniel Rocha','Alinhamento');


-- equipeMecanico
-- =========================
insert into equipeMecanico values (1,1);
insert into equipeMecanico values (2,2);
insert into equipeMecanico values (3,3);
insert into equipeMecanico values (4,4);
insert into equipeMecanico values (5,5);
insert into equipeMecanico values (6,6);
insert into equipeMecanico values (7,7);
insert into equipeMecanico values (8,8);
insert into equipeMecanico values (9,9);
insert into equipeMecanico values (10,10);


-- fornecedor
-- =========================
insert into fornecedor (nome,cnpj) values ('Auto Peças SP','99999999000101');
insert into fornecedor (nome,cnpj) values ('Mec Parts RJ','99999999000102');
insert into fornecedor (nome,cnpj) values ('BH Auto','99999999000103');
insert into fornecedor (nome,cnpj) values ('Curitiba Parts','99999999000104');
insert into fornecedor (nome,cnpj) values ('Nordeste Peças','99999999000105');
insert into fornecedor (nome,cnpj) values ('Sul Auto','99999999000106');
insert into fornecedor (nome,cnpj) values ('Manaus Auto','99999999000107');
insert into fornecedor (nome,cnpj) values ('Recife Parts','99999999000108');
insert into fornecedor (nome,cnpj) values ('Fortaleza Auto','99999999000109');
insert into fornecedor (nome,cnpj) values ('Salvador Parts','99999999000110');


-- peca
-- =========================
insert into peca (id_fornecedor,descricao,preco) values (1,'Filtro de óleo',50.00);
insert into peca (id_fornecedor,descricao,preco) values (2,'Pastilha de freio',120.00);
insert into peca (id_fornecedor,descricao,preco) values (3,'Correia dentada',90.00);
insert into peca (id_fornecedor,descricao,preco) values (4,'Amortecedor',200.00);
insert into peca (id_fornecedor,descricao,preco) values (5,'Bateria 60Ah',350.00);
insert into peca (id_fornecedor,descricao,preco) values (6,'Velas de ignição',80.00);
insert into peca (id_fornecedor,descricao,preco) values (7,'Disco de freio',150.00);
insert into peca (id_fornecedor,descricao,preco) values (8,'Filtro de ar',40.00);
insert into peca (id_fornecedor,descricao,preco) values (9,'Radiador',500.00);
insert into peca (id_fornecedor,descricao,preco) values (10,'Embreagem',600.00);


-- servico
-- =========================
insert into servico (descricao,preco) values ('Troca de óleo',100.00);
insert into servico (descricao,preco) values ('Troca de pastilhas',150.00);
insert into servico (descricao,preco) values ('Troca de correia',180.00);
insert into servico (descricao,preco) values ('Troca de amortecedor',250.00);
insert into servico (descricao,preco) values ('Revisão elétrica',200.00);
insert into servico (descricao,preco) values ('Troca de bateria',120.00);
insert into servico (descricao,preco) values ('Alinhamento',80.00);
insert into servico (descricao,preco) values ('Balanceamento',90.00);
insert into servico (descricao,preco) values ('Pintura de para-choque',300.00);
insert into servico (descricao,preco) values ('Revisão completa',800.00);


-- ordemServico
-- =========================
insert into ordemServico (id_cliente,id_veiculo,id_equipe,data_abertura,status,valor_total) values (1,1,1,'2023-01-10','aberta',0);
insert into ordemServico (id_cliente,id_veiculo,id_equipe,data_abertura,status,valor_total) values (2,2,2,'2023-01-15','em andamento',0);
insert into ordemServico (id_cliente,id_veiculo,id_equipe,data_abertura,status,valor_total) values (3,3,3,'2023-02-01','aberta',0);
insert into ordemServico (id_cliente,id_veiculo,id_equipe,data_abertura,status,valor_total) values (4,4,4,'2023-02-10','concluida',500.00);
insert into ordemServico (id_cliente,id_veiculo,id_equipe,data_abertura,status,valor_total) values (5,5,5,'2023-02-15','cancelada',0);
insert into ordemServico (id_cliente,id_veiculo,id_equipe,data_abertura,status,valor_total) values (6,6,6,'2023-03-01','em andamento',0);
insert into ordemServico (id_cliente,id_veiculo,id_equipe,data_abertura,status,valor_total) values (7,7,7,'2023-03-05','aberta',0);
insert into ordemServico (id_cliente,id_veiculo,id_equipe,data_abertura,status,valor_total) values (8,8,8,'2023-03-20','aberta',0);
insert into ordemServico (id_cliente,id_veiculo,id_equipe,data_abertura,status,valor_total) values (9,9,9,'2023-04-01','em andamento',0);
insert into ordemServico (id_cliente,id_veiculo,id_equipe,data_abertura,status,valor_total) values (10,10,10,'2023-04-10','concluida',900.00);


-- autorizacaoOs
-- =========================
insert into autorizacaoOs (id_os,autorizado,data_autorizacao) values (1,false,null);
insert into autorizacaoOs (id_os,autorizado,data_autorizacao) values (2,true,'2023-01-16');
insert into autorizacaoOs (id_os,autorizado,data_autorizacao) values (3,false,null);
insert into autorizacaoOs (id_os,autorizado,data_autorizacao) values (4,true,'2023-02-11');
insert into autorizacaoOs (id_os,autorizado,data_autorizacao) values (5,false,null);
insert into autorizacaoOs (id_os,autorizado,data_autorizacao) values (6,true,'2023-03-02');
insert into autorizacaoOs (id_os,autorizado,data_autorizacao) values (7,false,null);
insert into autorizacaoOs (id_os,autorizado,data_autorizacao) values (8,true,'2023-03-21');
insert into autorizacaoOs (id_os,autorizado,data_autorizacao) values (9,true,'2023-04-02');
insert into autorizacaoOs (id_os,autorizado,data_autorizacao) values (10,true,'2023-04-11');


-- osServico
-- =========================
insert into osServico values (1,1,1);
insert into osServico values (2,2,1);
insert into osServico values (3,3,1);
insert into osServico values (4,4,2);
insert into osServico values (5,5,1);
insert into osServico values (6,6,1);
insert into osServico values (7,7,1);
insert into osServico values (8,8,2);
insert into osServico values (9,9,1);
insert into osServico values (10,10,1);


-- osPeca
-- =========================
insert into osPeca values (1,1,1);
insert into osPeca values (2,2,2);
insert into osPeca values (3,3,1);
insert into osPeca values (4,4,2);
insert into osPeca values (5,5,1);
insert into osPeca values (6,6,1);
insert into osPeca values (7,7,1);
insert into osPeca values (8,8,2);
insert into osPeca values (9,9,1);
insert into osPeca values (10,10,1);


-- pagamento
-- =========================
insert into pagamento (id_os,forma_pagamento,valor,data_pagamento) values (4,'cartao',500.00,'2023-02-12');
insert into pagamento (id_os,forma_pagamento,valor,data_pagamento) values (10,'pix',900.00,'2023-04-12');
insert into pagamento (id_os,forma_pagamento,valor,data_pagamento) values (2,'dinheiro',200.00,'2023-01-17');
insert into pagamento (id_os,forma_pagamento,valor,data_pagamento) values (6,'boleto',300.00,'2023-03-03');
insert into pagamento (id_os,forma_pagamento,valor,data_pagamento) values (8,'pix',400.00,'2023-03-22');
insert into pagamento (id_os,forma_pagamento,valor,data_pagamento) values (9,'cartao',350.00,'2023-04-03');
insert into pagamento (id_os,forma_pagamento,valor,data_pagamento) values (1,'dinheiro',150.00,'2023-01-11');
insert into pagamento (id_os,forma_pagamento,valor,data_pagamento) values (3,'pix',180.00,'2023-02-02');
insert into pagamento (id_os,forma_pagamento,valor,data_pagamento) values (5,'cartao',0.00,null);
insert into pagamento (id_os,forma_pagamento,valor,data_pagamento) values (7,'dinheiro',100.00,'2023-03-06');
