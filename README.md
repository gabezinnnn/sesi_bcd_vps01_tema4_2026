# VPS01 - Tema 04 - Manutenção de Equipamentos
Um banco de dados de manutenção de equipamentos em uma fábrica, onde o objetivo é controlar os equipamentos, seu histórico de manutenção, os técnicos responsáveis, peças utilizadas e as ordens de serviço.
## MER/DER Conceitual
![Conceitual](Conceitual.png)
## MER/DER Lógico
![Lógico](Lógico.png)
## Dicionário de Dados
| Tabela | Campo | Tipo de Dado | Descrição |
| :--- | :--- | :--- | :--- |
| `equipamento` | `id` | `INT` | Identificador único do equipamento. |
| `equipamento` | `nome` | `VARCHAR(100)` | Designação do equipamento. |
| `equipamento` | `tipo` | `VARCHAR(50)` | Categoria ou tipo de equipamento. |
| `equipamento` | `marca` | `VARCHAR(50)` | Fabricante do equipamento. |
| `equipamento` | `modelo` | `VARCHAR(50)` | Modelo específico. |
| `equipamento` | `numero_serie` | `VARCHAR(50)` | Número de série de identificação. |
| `equipamento` | `data_aquisicao` | `DATE` | Data de aquisição. |
| `equipamento` | `status` | `VARCHAR(30)` | Estado atual (ex: operacional). |
| `equipamento` | `setor` | `VARCHAR(50)` | Localização/setor na fábrica. |
| `equipamento` | `valor_aquisicao` | `DECIMAL(12, 2)` | Custo de compra do equipamento. |
| `ordem_manutencao` | `id_ordem` | `INT` | Identificador único da ordem. |
| `ordem_manutencao` | `id_equipamento` | `INT` | Equipamento associado à ordem. |
| `ordem_manutencao` | `tipo` | `VARCHAR(30)` | Tipo de manutenção (preventiva/corretiva). |
| `ordem_manutencao` | `descricao` | `TEXT` | Descrição detalhada do problema. |
| `ordem_manutencao` | `data_abertura` | `DATETIME` | Data e hora de abertura. |
| `ordem_manutencao` | `data_inicio` | `DATETIME` | Data de início dos trabalhos. |
| `ordem_manutencao` | `data_fim` | `DATETIME` | Data de encerramento. |
| `ordem_manutencao` | `status` | `VARCHAR(30)` | Estado da ordem (ex: concluída). |
| `ordem_manutencao` | `prioridade` | `VARCHAR(20)` | Nível de urgência (ex: alta, média). |
| `tecnico` | `id` | `INT` | Identificador único do técnico. |
| `tecnico` | `nome` | `VARCHAR(100)` | Nome completo do técnico. |
| `tecnico` | `especialidade` | `VARCHAR(50)` | Área de especialização. |
| `email` | `id` | `INT` | Identificador único do e-mail. |
| `email` | `id_tecnico` | `INT` | Técnico proprietário do e-mail. |
| `email` | `email` | `VARCHAR(100)` | Endereço de correio eletrónico. |
| `telefone` | `id` | `INT` | Identificador único do telefone. |
| `telefone` | `id_tecnico` | `INT` | Técnico proprietário do telefone. |
| `telefone` | `telefone` | `VARCHAR(20)` | Número de telefone/telemóvel. |
| `peca` | `id_peca` | `INT` | Identificador único da peça. |
| `peca` | `nome` | `VARCHAR(100)` | Nome da peça. |
| `peca` | `descricao` | `TEXT` | Detalhes adicionais. |
| `peca` | `quantidade_estoque` | `INT` | Quantidade atual em stock. |
| `peca` | `estoque_minimo` | `INT` | Limite mínimo para alertas. |
| `peca` | `preco` | `DECIMAL(10, 2)` | Preço unitário. |
| `manutencao` | `id_manutencao` | `INT` | Identificador único da execução. |
| `manutencao` | `id_ordem` | `INT` | Ordem de manutenção associada. |
| `manutencao` | `id_tecnico` | `INT` | Técnico responsável pelo serviço. |
| `manutencao` | `descricao_servico` | `TEXT` | Relatório do serviço prestado. |
| `manutencao` | `data_execucao` | `DATE` | Data de realização. |
| `manutencao` | `horas_trabalhadas` | `DECIMAL(5, 2)` | Tempo gasto no trabalho. |
| `manutencao` | `observacoes` | `TEXT` | Notas adicionais. |
| `peca_da_manutencao` | `id` | `INT` | Identificador único da associação. |
| `peca_da_manutencao` | `id_manutencao` | `INT` | Manutenção onde a peça foi usada. |
| `peca_da_manutencao` | `id_peca` | `INT` | Peça utilizada. |
| `peca_da_manutencao` | `quantidade` | `INT` | Quantidade da peça aplicada. |
## Dados de teste
- (Equipamento)[equipamento.csv]
- (Manutenção)[manutencao.csv]
- (Ordem da Manutenção)[ordem_manutencao.csv]
- (Peça)[peca.csv]
- (Peça da Manutenção)[peca_manutencao.csv]