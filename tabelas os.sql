
-- Criar banco de dados
CREATE DATABASE IF NOT EXISTS sistema_os;
USE sistema_os;

-- tabela cliente
-- =========================
create table cliente (
    id_cliente int auto_increment primary key,
    tipo enum('pf','pj') not null,
    telefone varchar(11),
    email varchar(30)
);

-- tabela cliente pf
-- =========================
create table clientepf (
    id_cliente int primary key,
    nome varchar(100) not null,
    cpf char(11) unique not null,
    foreign key (id_cliente) references cliente(id_cliente) on delete cascade
);

-- tabela cliente pj
-- =========================
create table clientepj (
    id_cliente int primary key,
    razao_social varchar(150) not null,
    cnpj char(14) unique not null,
    foreign key (id_cliente) references cliente(id_cliente) on delete cascade
);

-- tabela endereco
-- =========================
create table endereco (
    id_endereco int auto_increment primary key,
    rua varchar(50),
    numero varchar(10),
    bairro varchar(50),
    cidade varchar(50),
    estado char(2),
    cep char(8)
);

-- tabela clienteendereco
-- =========================
create table clienteEndereco (
    id_cliente int,
    id_endereco int,
    primary key (id_cliente, id_endereco),
    foreign key (id_cliente) references cliente(id_cliente) on delete cascade,
    foreign key (id_endereco) references endereco(id_endereco) on delete cascade
);

-- tabela veiculo
-- =========================
create table veiculo (
    id_veiculo int auto_increment primary key,
    id_cliente int not null,
    marca varchar(50),
    modelo varchar(50),
    ano int,
    placa char(7) unique not null,
    foreign key (id_cliente) references cliente(id_cliente) on delete cascade
);

-- tabela equipe
-- =========================
create table equipe (
    id_equipe int auto_increment primary key,
    nome_equipe varchar(50)
);

-- tabela mecanico
-- =========================
create table mecanico (
    id_mecanico int auto_increment primary key,
    nome varchar(100) not null,
    especialidade varchar(100)
);

-- tabela equipemecanico
-- =========================
create table equipeMecanico (
    id_equipe int,
    id_mecanico int,
    primary key (id_equipe, id_mecanico),
    foreign key (id_equipe) references equipe(id_equipe) on delete cascade,
    foreign key (id_mecanico) references mecanico(id_mecanico) on delete cascade
);

-- tabela fornecedor
-- =========================
create table fornecedor (
    id_fornecedor int auto_increment primary key,
    nome varchar(100),
    cnpj char(14) unique
);

-- tabela peca
-- =========================
create table peca (
    id_peca int auto_increment primary key,
    id_fornecedor int not null,
    descricao varchar(100),
    preco decimal(10,2),
    foreign key (id_fornecedor) references fornecedor(id_fornecedor) on delete cascade
);

-- tabela servico
-- =========================
create table servico (
    id_servico int auto_increment primary key,
    descricao varchar(100),
    preco decimal(10,2)
);

-- tabela ordemservico
-- =========================
create table ordemServico (
    id_os int auto_increment primary key,
    id_cliente int not null,
    id_veiculo int not null,
    id_equipe int not null,
    data_abertura date,
    status enum('aberta','em andamento','concluida','cancelada') default 'aberta',
    valor_total decimal(10,2),
    foreign key (id_cliente) references cliente(id_cliente),
    foreign key (id_veiculo) references veiculo(id_veiculo),
    foreign key (id_equipe) references equipe(id_equipe)
);

-- tabela autorizacaoos
-- =========================
create table autorizacaoOs (
    id_autorizacao int auto_increment primary key,
    id_os int not null,
    autorizado boolean default false,
    data_autorizacao date,
    foreign key (id_os) references ordemservico(id_os) on delete cascade
);

-- tabela osservico (N:N)
-- =========================
create table osServico (
    id_os int,
    id_servico int,
    quantidade int default 1,
    primary key (id_os, id_servico),
    foreign key (id_os) references ordemservico(id_os) on delete cascade,
    foreign key (id_servico) references servico(id_servico) on delete cascade
);

-- tabela ospeca (N:N)
-- =========================
create table osPeca (
    id_os int,
    id_peca int,
    quantidade int default 1,
    primary key (id_os, id_peca),
    foreign key (id_os) references ordemservico(id_os) on delete cascade,
    foreign key (id_peca) references peca(id_peca) on delete cascade
);

-- tabela pagamento
-- =========================
create table pagamento (
    id_pagamento int auto_increment primary key,
    id_os int not null,
    forma_pagamento enum('dinheiro','cartao','pix','boleto'),
    valor decimal(10,2),
    data_pagamento date,
    foreign key (id_os) references ordemservico(id_os) on delete cascade
);
