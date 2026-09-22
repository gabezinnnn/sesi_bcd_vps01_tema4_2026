use manutencao_equipamentos;

insert into equipamento (nome, tipo, marca, modelo, numero_serie, data_aquisicao, status, setor, valor_aquisicao) values
('Prensa Hidráulica 50T', 'Prensa', 'Schuler', 'PH-50', 'SN-2021-001', '2021-03-15', 'Operacional', 'Linha de Estampagem', 120000.00),
('Torno CNC 4 Eixos', 'Torno', 'Mazak', 'QuickTurn 250', 'SN-2022-412', '2022-07-10', 'Operacional', 'Usinagem', 250000.00),
('Robô de Solda MIG', 'Robô', 'KUKA', 'KR 16', 'SN-2020-891', '2020-11-05', 'Em Manutenção', 'Soldagem', 180000.00),
('Compressor de Ar Parafuso', 'Compressor', 'Atlas Copco', 'GA 37', 'SN-2019-332', '2019-01-20', 'Operacional', 'Utilidades', 45000.00),
('Ponte Rolante 10t', 'Ponte Rolante', 'WEG', 'PR-10T', 'SN-2018-105', '2018-05-12', 'Operacional', 'Logística/Expedição', 95000.00);

insert into tecnico ( nome, especialidade) values
('Carlos Silva', 'Mecânica Geral'),
('Ana Souza', 'Automação e Robótica'),
('Marcos Oliveira', 'Sistemas Hidráulicos'),
('Juliana Lima', 'Elétrica Industrial');

insert into telefone (id_tecnico, telefone) values
(1, '(11) 98765-4321'),
(1, '(11) 3333-4444'),
(2, '(11) 97123-4567'),
(3, '(11) 96543-2109'),
(4, '(11) 99887-6655'),
(4, '(11) 2222-1111');

insert into email (id_tecnico, email) values
(1, 'carlos.silva@fabrica.com'),
(1, 'carlos.mecanica@fabrica.com'),
(2, 'ana.souza@fabrica.com'),
(3, 'marcos.oliveira@fabrica.com'),
(4, 'juliana.lima@fabrica.com'),
(4, 'juliana.eletrica@fabrica.com');

insert into peca (nome, descricao, quantidade_estoque, estoque_minimo, preco) values
('Filtro de Óleo Hidráulico', 'Filtro de alta pressão 10 micras', 15, 5, 150.00),
('Óleo Hidráulico AW 68 (Balde 20L)', 'Lubrificante mineral anti-desgaste', 8, 3, 320.00),
('Correia em V B-48', 'Correia de transmissão industrial', 25, 10, 45.00),
('Placa de Interface KUKA', 'Módulo de E/S para robô de solda', 2, 1, 2500.00),
('Cabo de Aço 1/2 Pol (Metro)', 'Cabo de aço para ponte rolante', 120, 30, 85.00);

insert into ordem_manutencao (id_equipamento, tipo, descricao, data_abertura, data_inicio, data_fim, status, prioridade) values
(3, 'Corretiva', 'Falha no eixo do manipulador e erro de comunicação', '2026-05-10 08:30:00', '2026-05-10 09:00:00', '2026-05-10 14:30:00', 'Concluída', 'Alta'),
(1, 'Preventiva', 'Troca de óleo do sistema hidráulico e limpeza de filtros', '2026-05-12 07:00:00', '2026-05-12 08:00:00', '2026-05-12 11:00:00', 'Concluída', 'Média'),
(4, 'Preventiva', 'Substituição de elemento filtrante e verificação de correias', '2026-05-15 08:00:00', '2026-05-15 08:30:00', '2026-05-15 10:00:00', 'Concluída', 'Baixa'),
(2, 'Corretiva', 'Vibração excessiva no fuso principal durante usinagem', '2026-05-18 13:00:00', '2026-05-18 13:30:00', null, 'Em Andamento', 'Alta'),
(5, 'Preventiva', 'Inspeção geral de cabos de aço e freios da ponte rolante', '2026-05-20 06:00:00', null, null, 'Aberta', 'Média');

insert into manutencao (id_ordem, id_tecnico, descricao_servico, data_execucao, horas_trabalhadas, observacoes) values
(1, 2, 'Substituição da placa de interface e reconfiguração dos parâmetros de rede do robô.', '2026-05-10', 5.5, 'Teste realizado com sucesso após o reparo.'),
(2, 3, 'Substituído o óleo hidráulico completo e trocados os elementos filtrantes da prensa.', '2026-05-12', 3.0, 'Descarte do óleo realizado conforme norma ambiental.'),
(3, 1, 'Troca de correias do compressor e limpeza dos radiadores de ar.', '2026-05-15', 1.5, 'Equipamento operando com menor nível de ruído.');

insert into peca_da_manutencao (id_manutencao, id_peca, quantidade) values
(1, 4, 1),
(2, 1, 2),
(2, 2, 2),
(3, 3, 2);