insert into pacientes (id_paciente, nome, email, cpf, data_cadastro) values
(1, 'Ana Silva', 'ana.silva@email.com', '111.111.111-11', '2026-06-01'),
(3, 'Carlos Souza', 'carlos.souza@email.com', '333.333.333-33', '2026-07-02'),
(5, 'Eduardo Santos', 'eduardo.santos@email.com', '555.555.555-55', '2026-09-25'),
(2, 'Bruno Costa', 'bruno.costa@email.com', '222.222.222-22', '2026-06-15'),
(4, 'Daniela Lima', 'daniela.lima@email.com', '444.444.444-44', '2026-08-10');


insert into telefone_pacientes (id_paciente, telefone) values
(1, '11 98888-1111'),
(1, '11 97777-1111'),
(2, '21 99999-2222'),
(3, '31 98888-3333'),
(4, '41 97777-4444'),
(5, '51 96666-5555');

insert into medicos (id_medico, nome_medico, especialidade, valor_consulta, sala_atendimento) values
(1, 'Dr. Roberto Pro', 'Cardiologia', 4500.00, 'Sala 101'),
(2, 'Dra. Maria Monitor', 'Pediatria', 1800.00, 'Sala 102'),
(3, 'Dr. Sergio Teclado', 'Ortopedia', 350.00, 'Sala 103'),
(4, 'Dra. Vanessa Wireless', 'Dermatologia', 150.00, 'Sala 104'),
(5, 'Dr. Fabio Mouse', 'Clínica Geral', 200.00, 'Sala 105');

insert into agendamento (id_agendamento, id_paciente, data_agendamento, status_agendamento) values
(1, 1, '2026-06-01', 2),
(2, 2, '2026-06-15', 2),
(3, 3, '2026-07-02', 1),
(4, 4, '2026-08-10', 2),
(5, 5, '2026-09-25', 3),
(6, 1, '2026-10-05', default);

insert into agendamento_medico (id_agendamento, id_medico, quant_procedimentos, valor_aplicado) values
(1, 1, 1, 4500.00),
(1, 3, 1, 350.00),
(2, 2, 3, 1800.00),
(2, 5, 3, 199.93),
(3, 2, 1, 1800.00),
(4, 3, 1, 350.00),
(4, 4, 1, 100.00),
(5, 1, 1, 4500.00),
(6, 3, 2, 350.00); 