drop database if exists manutencao_equipamentos;

create database manutencao_equipamentos;

use manutencao_equipamentos;

create table equipamento (
    id int primary key auto_increment,
    nome varchar(100) not null,
    tipo varchar(50) not null,
    marca varchar(50),
    modelo varchar(50),
    numero_serie varchar(50) unique not null,
    data_aquisicao date default(curdate()),
    status varchar(30) not null,
    setor varchar(50) not null,
    valor_aquisicao decimal(12, 2)
);

create table ordem_manutencao (
    id_ordem int primary key auto_increment,
    id_equipamento int not null,
    tipo varchar(30) not null,
    descricao text not null,
    data_abertura datetime default(curdate()) not null,
    data_inicio datetime default(curdate()),
    data_fim datetime default(curdate()),
    status varchar(30) not null,
    prioridade varchar(20) not null
);

create table tecnico (
    id int primary key auto_increment,
    nome varchar(100) not null,
    especialidade varchar(50) not null
);

create table email(
    id int primary key auto_increment,
    id_tecnico int not null,
    email varchar(100) not null
);

create table telefone(
    id int primary key auto_increment,
    id_tecnico int not null,
    telefone varchar(20) not null
);

create table peca (
    id_peca int primary key auto_increment,
    nome varchar(100) not null,
    descricao text,
    quantidade_estoque int not null default 0,
    estoque_minimo int not null default 0,
    preco decimal(10, 2) not null
);

create table manutencao (
    id_manutencao int primary key auto_increment,
    id_ordem int not null,
    id_tecnico int not null,
    descricao_servico text not null,
    data_execucao date default(curdate()) not null,
    horas_trabalhadas decimal(5, 2) not null,
    observacoes text
);

create table peca_da_manutencao (
    id int primary key auto_increment,
    id_manutencao int not null,
    id_peca int not null,
    quantidade int not null
);

alter table
    ordem_manutencao
add
    constraint possui foreign key (id_equipamento) references equipamento(id);

alter table
    manutencao
add
    constraint descreve foreign key (id_ordem) references ordem_manutencao(id_ordem);

alter table
    manutencao
add
    constraint faz foreign key (id_tecnico) references tecnico(id);

alter table
    peca_da_manutencao
add
    constraint separa foreign key (id_manutencao) references manutencao(id_manutencao);

alter table
    peca_da_manutencao
add
    constraint contem foreign key (id_peca) references peca(id_peca);

alter table
    email
add
    constraint tem foreign key (id_tecnico) references tecnico(id);

alter table
    telefone
add
    constraint obtem foreign key (id_tecnico) references tecnico(id);