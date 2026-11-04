create database clinica_vida_saudavel;
use clinica_vida_saudavel;

create table pacientes(
	id_paciente int  primary key auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null unique,
    cpf varchar(14) not null unique,
    data_cadastro datetime not null
);

create table telefone_pacientes(
	id_telefone int primary key auto_increment,
    telefone varchar(13) not null,
    id_paciente int not null,
    foreign key (id_paciente) references pacientes (id_paciente)
);

create table medicos(
	id_medico int primary key auto_increment,
    nome_medico varchar(100) not null,
    especialidade varchar(50) not null,
    valor_consulta decimal (10 , 2),
    sala_atendimento varchar(10) not null
);

create table agendamento(
	id_agendamento int primary key auto_increment,
    id_paciente int not null,
    data_agendamento datetime not null,
    status_agendamento enum('Pendente','Realizada','Cancelada') default 'Pendente',
    foreign key (id_paciente) references pacientes (id_paciente)
);

create table agendamento_medico(
	id_agendamento int not null,
    id_medico int not null,
    quant_procedimentos int not null,
    valor_aplicado decimal (10,2) not null,
    foreign key (id_agendamento) references agendamento (id_agendamento),
    foreign key (id_medico) references medicos (id_medico)
);



