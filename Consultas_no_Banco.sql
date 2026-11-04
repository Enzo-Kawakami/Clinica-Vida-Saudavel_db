select nome, email, cpf from pacientes order by nome asc;

select p.nome, t.telefone from pacientes p
inner join telefone_pacientes t on
p.id_paciente = t.id_paciente
where p.nome = 'Ana Silva';

select nome_medico, valor_consulta from medicos 
where valor_consulta between 100.00 and 1000.00;

select nome_medico, especialidade from medicos where nome_medico like '%Monitor%';

select id_agendamento, sum(quant_procedimentos * valor_aplicado) as total_aplicado
from agendamento_medico group by id_agendamento;

select id_agendamento, id_paciente, data_agendamento, status_agendamento
from agendamento where data_agendamento
between '2026-06-01' and '2026-06-30';

select status_agendamento, count(*) as quant_agendamentos
from agendamento group by status_agendamento;

select p.nome, a.data_agendamento, a.status_agendamento
from agendamento a 
inner join pacientes p on a.id_paciente = p.id_paciente;

select sum(quant_procedimentos) as total_procedimentos from agendamento_medico;

select nome_medico, valor_consulta from medicos where valor_consulta < 950.00;

select m.nome_medico, i.quant_procedimentos, i.valor_aplicado, (i.quant_procedimentos)
from agendamento_medico i 
inner join medicos m on i.id_medico = m.id_medico
where i.id_agendamento = 1;

select p.nome, count(a.id_agendamento) as total_agendamentos
from pacientes p 
inner join agendamento a on p.id_paciente = a.id_paciente
group by p.nome
having count(a.id_agendamento) > 1;

select max(valor_consulta) as maior_valor, min(valor_consulta) as menor_valor from medicos;

select distinct p.email
from pacientes p
inner join agendamento a on p.id_paciente = a.id_paciente
where a.status_agendamento = 3;

select sum(i.quant_procedimentos * i.valor_aplicado) as faturamento_liquido
from agendamento_medico i
inner join agendamento a on i.id_agendamento = a.id_agendamento
where a.status_agendamento = 2;



