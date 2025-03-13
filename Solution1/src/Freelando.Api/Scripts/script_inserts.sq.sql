﻿-- Gerando dados para a tabela TB_Especialidades
INSERT INTO TB_Especialidades (Id_Especialidade, DS_Especialidade)
VALUES
    ('6F9619FF-8B86-D011-B42D-00C04FC964FF', 'Engenharia de Software'),
    ('709619FF-8B86-D011-B42D-00C04FC964FF', 'Ciência de Dados'),
    ('719619FF-8B86-D011-B42D-00C04FC964FF', 'Gestão de Projetos'),
    ('729619FF-8B86-D011-B42D-00C04FC964FF', 'Design de UI/UX'),
    ('739619FF-8B86-D011-B42D-00C04FC964FF', 'Marketing Digital'),
    ('749619FF-8B86-D011-B42D-00C04FC964FF', 'Redação Publicitária'),
    ('759619FF-8B86-D011-B42D-00C04FC964FF', 'Vendas'),
    ('769619FF-8B86-D011-B42D-00C04FC964FF', 'Recursos Humanos'),
    ('779619FF-8B86-D011-B42D-00C04FC964FF', 'Administração Financeira'),
    ('789619FF-8B86-D011-B42D-00C04FC964FF', 'Engenharia Civil'),
    ('799619FF-8B86-D011-B42D-00C04FC964FF', 'Medicina'),
    ('7A9619FF-8B86-D011-B42D-00C04FC964FF', 'Direito'),
    ('7B9619FF-8B86-D011-B42D-00C04FC964FF', 'Psicologia'),
    ('7C9619FF-8B86-D011-B42D-00C04FC964FF', 'Fisioterapia'),
    ('7D9619FF-8B86-D011-B42D-00C04FC964FF', 'Arquitetura'),
    ('7E9619FF-8B86-D011-B42D-00C04FC964FF', 'Artes');
-- Repetindo os valores para completar 50 registros
INSERT INTO TB_Especialidades (Id_Especialidade, DS_Especialidade)
SELECT NEWID(), DS_Especialidade FROM TB_Especialidades;
INSERT INTO TB_Especialidades (Id_Especialidade, DS_Especialidade)
SELECT NEWID(), DS_Especialidade FROM TB_Especialidades;
INSERT INTO TB_Especialidades (Id_Especialidade, DS_Especialidade)
SELECT NEWID(), DS_Especialidade FROM TB_Especialidades;
DELETE FROM TB_Especialidades WHERE Id_Especialidade NOT IN (SELECT TOP 50 Id_Especialidade FROM TB_Especialidades);

-- Gerando dados para a tabela TB_Clientes
INSERT INTO TB_Clientes (Id_Cliente, Nome, Cpf, Email, Telefone)
VALUES
    ('8F9619FF-8B86-D011-B42D-00C04FC964FF', 'João Silva', '12345678901', 'joao.silva@example.com', '(11) 98765-4321'),
    ('909619FF-8B86-D011-B42D-00C04FC964FF', 'Maria Oliveira', '98765432101', 'maria.oliveira@example.com', '(21) 91234-5678'),
    ('919619FF-8B86-D011-B42D-00C04FC964FF', 'Pedro Souza', '45678912301', 'pedro.souza@example.com', '(31) 94567-8901'),
    ('929619FF-8B86-D011-B42D-00C04FC964FF', 'Ana Pereira', '87654321019', 'ana.pereira@example.com', '(41) 97890-1234');
-- Repetindo os valores para completar 50 registros
INSERT INTO TB_Clientes (Id_Cliente, Nome, Cpf, Email, Telefone)
SELECT NEWID(), Nome, Cpf, Email, Telefone FROM TB_Clientes;
INSERT INTO TB_Clientes (Id_Cliente, Nome, Cpf, Email, Telefone)
SELECT NEWID(), Nome, Cpf, Email, Telefone FROM TB_Clientes;
INSERT INTO TB_Clientes (Id_Cliente, Nome, Cpf, Email, Telefone)
SELECT NEWID(), Nome, Cpf, Email, Telefone FROM TB_Clientes;
DELETE FROM TB_Clientes WHERE Id_Cliente NOT IN (SELECT TOP 50 Id_Cliente FROM TB_Clientes);

-- Gerando dados para a tabela TB_Projetos
-- Esta tabela depende de TB_Clientes, certifique-se de popular TB_Clientes antes de executar esta inserção.
INSERT INTO TB_Projetos (Id_Projeto, Titulo, DS_Projeto, Id_Cliente, Status)
VALUES
    ('1F9619FF-8B86-D011-B42D-00C04FC964FF', 'Projeto Alpha', 'Desenvolvimento de um sistema web', (SELECT TOP 1 Id_Cliente FROM TB_Clientes ORDER BY NEWID()), 'Disponivel'),
    ('209619FF-8B86-D011-B42D-00C04FC964FF', 'Projeto Beta', 'Criação de um aplicativo mobile', (SELECT TOP 1 Id_Cliente FROM TB_Clientes ORDER BY NEWID()), 'Concluido'),
    ('219619FF-8B86-D011-B42D-00C04FC964FF', 'Projeto Gama', 'Implementação de uma solução de big data', (SELECT TOP 1 Id_Cliente FROM TB_Clientes ORDER BY NEWID()), 'Cancelado'),
    ('229619FF-8B86-D011-B42D-00C04FC964FF', 'Projeto Delta', 'Consultoria em marketing digital', (SELECT TOP 1 Id_Cliente FROM TB_Clientes ORDER BY NEWID()), 'Pausado');
-- Repetindo os valores para completar 50 registros
INSERT INTO TB_Projetos (Id_Projeto, Titulo, DS_Projeto, Id_Cliente, Status)
SELECT NEWID(), Titulo, DS_Projeto, (SELECT TOP 1 Id_Cliente FROM TB_Clientes ORDER BY NEWID()), Status FROM TB_Projetos;
INSERT INTO TB_Projetos (Id_Projeto, Titulo, DS_Projeto, Id_Cliente, Status)
SELECT NEWID(), Titulo, DS_Projeto, (SELECT TOP 1 Id_Cliente FROM TB_Clientes ORDER BY NEWID()), Status FROM TB_Projetos;
INSERT INTO TB_Projetos (Id_Projeto, Titulo, DS_Projeto, Id_Cliente, Status)
SELECT NEWID(), Titulo, DS_Projeto, (SELECT TOP 1 Id_Cliente FROM TB_Clientes ORDER BY NEWID()), Status FROM TB_Projetos;
DELETE FROM TB_Projetos WHERE Id_Projeto NOT IN (SELECT TOP 50 Id_Projeto FROM TB_Projetos);


-- Gerando dados para a tabela TB_Servicos
-- Esta tabela depende de TB_Projetos, certifique-se de popular TB_Projetos antes de executar esta inserção.
INSERT INTO TB_Servicos (Id_Servico, Titulo, DS_Projeto, Status, Id_Projeto)
VALUES
    ('2F9619FF-8B86-D011-B42D-00C04FC964FF', 'Desenvolvimento Backend', 'Criação da lógica de negócio do sistema', 'Concluido', (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID())),
    ('309619FF-8B86-D011-B42D-00C04FC964FF', 'Desenvolvimento Frontend', 'Criação da interface do usuário', 'EmAndamento', (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID())),
    ('319619FF-8B86-D011-B42D-00C04FC964FF', 'Banco de Dados', 'Modelagem e implementação do banco de dados', 'Cancelado', (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID())),
    ('329619FF-8B86-D011-B42D-00C04FC964FF', 'Testes', 'Testes de funcionalidade e usabilidade', 'EmAndamento', (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID()));
-- Repetindo os valores para completar 50 registros
INSERT INTO TB_Servicos (Id_Servico, Titulo, DS_Projeto, Status, Id_Projeto)
SELECT NEWID(), Titulo, DS_Projeto, Status, (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID()) FROM TB_Servicos;
INSERT INTO TB_Servicos (Id_Servico, Titulo, DS_Projeto, Status, Id_Projeto)
SELECT NEWID(), Titulo, DS_Projeto, Status, (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID()) FROM TB_Servicos;
INSERT INTO TB_Servicos (Id_Servico, Titulo, DS_Projeto, Status, Id_Projeto)
SELECT NEWID(), Titulo, DS_Projeto, Status, (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID()) FROM TB_Servicos;
DELETE FROM TB_Servicos WHERE Id_Servico NOT IN (SELECT TOP 50 Id_Servico FROM TB_Servicos);

-- Gerando dados para a tabela TB_Profissionais
INSERT INTO TB_Profissionais (Id_Profissional, Nome, Cpf, Email, Telefone)
VALUES
    ('3F9619FF-8B86-D011-B42D-00C04FC964FF', 'Amanda Costa', '23456789012', 'amanda.costa@example.com', '(11) 91234-5678'),
    ('409619FF-8B86-D011-B42D-00C04FC964FF', 'Bruno Santos', '56789012345', 'bruno.santos@example.com', '(21) 94567-8901'),
    ('419619FF-8B86-D011-B42D-00C04FC964FF', 'Carolina Rodrigues', '90123456789', 'carolina.rodrigues@example.com', '(31) 97890-1234'),
    ('429619FF-8B86-D011-B42D-00C04FC964FF', 'Daniel Ferreira', '34567890123', 'daniel.ferreira@example.com', '(41) 90123-4567');
-- Repetindo os valores para completar 50 registros
INSERT INTO TB_Profissionais (Id_Profissional, Nome, Cpf, Email, Telefone)
SELECT NEWID(), Nome, Cpf, Email, Telefone FROM TB_Profissionais;
INSERT INTO TB_Profissionais (Id_Profissional, Nome, Cpf, Email, Telefone)
SELECT NEWID(), Nome, Cpf, Email, Telefone FROM TB_Profissionais;
INSERT INTO TB_Profissionais (Id_Profissional, Nome, Cpf, Email, Telefone)
SELECT NEWID(), Nome, Cpf, Email, Telefone FROM TB_Profissionais;
DELETE FROM TB_Profissionais WHERE Id_Profissional NOT IN (SELECT TOP 50 Id_Profissional FROM TB_Profissionais);

-- Gerando dados para a tabela TB_Especialidade_Prof
-- Esta tabela depende de TB_Especialidades e TB_Profissionais, certifique-se de popular ambas as tabelas antes de executar esta inserção.
INSERT INTO TB_Especialidade_Profissional (Id_Especialidade, Id_Profissional)
VALUES
    ((SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID())),
    ((SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID())),
    ((SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID())),
    ((SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()));
-- Repetindo os valores para completar 50 registros
INSERT INTO TB_Especialidade_Profissional (Id_Especialidade, Id_Profissional)
SELECT (SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()) FROM TB_Especialidade_Profissional;
INSERT INTO TB_Especialidade_Profissional (Id_Especialidade, Id_Profissional)
SELECT (SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()) FROM TB_Especialidade_Profissional;
INSERT INTO TB_Especialidade_Profissional (Id_Especialidade, Id_Profissional)
SELECT (SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()) FROM TB_Especialidade_Profissional;
DELETE FROM TB_Especialidade_Profissional WHERE Id_Especialidade NOT IN (SELECT TOP 50 Id_Especialidade FROM TB_Especialidade_Profissional);


-- Gerando dados para a tabela TB_Contratos
-- Esta tabela depende de TB_Servicos e TB_Profissionais, certifique-se de popular ambas as tabelas antes de executar esta inserção.
INSERT INTO TB_Contratos (Id_Contrato, Valor, Data_Inicio, Data_Encerramento, Id_Servico, Id_Profissional)
VALUES
    ('4F9619FF-8B86-D011-B42D-00C04FC964FF', 10000, '2023-01-15', '2023-06-15', (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID())),
    ('509619FF-8B86-D011-B42D-00C04FC964FF', 5000, '2023-02-20', '2023-05-20', (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID())),
    ('519619FF-8B86-D011-B42D-00C04FC964FF', 7500, '2023-03-01', '2023-08-01', (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID())),
    ('529619FF-8B86-D011-B42D-00C04FC964FF', 12000, '2023-04-10', '2023-09-10', (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()));
-- Repetindo os valores para completar 50 registros
INSERT INTO TB_Contratos (Id_Contrato, Valor, Data_Inicio, Data_Encerramento, Id_Servico, Id_Profissional)
SELECT NEWID(), Valor, Data_Inicio, Data_Encerramento, (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()) FROM TB_Contratos;
INSERT INTO TB_Contratos (Id_Contrato, Valor, Data_Inicio, Data_Encerramento, Id_Servico, Id_Profissional)
SELECT NEWID(), Valor, Data_Inicio, Data_Encerramento, (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()) FROM TB_Contratos;
INSERT INTO TB_Contratos (Id_Contrato, Valor, Data_Inicio, Data_Encerramento, Id_Servico, Id_Profissional)
SELECT NEWID(), Valor, Data_Inicio, Data_Encerramento, (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()) FROM TB_Contratos;
DELETE FROM TB_Contratos WHERE Id_Contrato NOT IN (SELECT TOP 50 Id_Contrato FROM TB_Contratos);

-- Gerando dados para a tabela TB_Especialidade_Proj
-- Esta tabela depende de TB_Especialidades e TB_Projetos, certifique-se de popular ambas as tabelas antes de executar esta inserção.
INSERT INTO TB_Especialidade_Projeto (Id_Especialidade, Id_Projeto)
VALUES
    ((SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID())),
    ((SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID())),
    ((SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID())),
    ((SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID()));
-- Repetindo os valores para completar 50 registros
INSERT INTO TB_Especialidade_Projeto (Id_Especialidade, Id_Projeto)
SELECT (SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID()) FROM TB_Especialidade_Projeto;
INSERT INTO TB_Especialidade_Projeto (Id_Especialidade, Id_Projeto)
SELECT (SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID()) FROM TB_Especialidade_Projeto;
INSERT INTO TB_Especialidade_Projeto (Id_Especialidade, Id_Projeto)
SELECT (SELECT TOP 1 Id_Especialidade FROM TB_Especialidades ORDER BY NEWID()), (SELECT TOP 1 Id_Projeto FROM TB_Projetos ORDER BY NEWID()) FROM TB_Especialidade_Projeto;
DELETE FROM TB_Especialidade_Projeto WHERE Id_Especialidade NOT IN (SELECT TOP 50 Id_Especialidade FROM TB_Especialidade_Projeto);


-- Gerando dados para a tabela TB_Candidaturas
-- Esta tabela depende de TB_Projetos e TB_Servicos, certifique-se de popular ambas as tabelas antes de executar esta inserção.
INSERT INTO TB_Candidaturas (Id_Candidatura, Valor_Proposto, DS_Proposta, Id_Profissional, Id_Servico, Duracao_Proposta, Status)
VALUES
    ('5F9619FF-8B86-D011-B42D-00C04FC964FF', 8000, 'Proposta para desenvolvimento backend', (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()), (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), 120, 'Aprovada'),
    ('609619FF-8B86-D011-B42D-00C04FC964FF', 4000, 'Proposta para desenvolvimento frontend', (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()), (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), 90, 'Recusada'),
    ('619619FF-8B86-D011-B42D-00C04FC964FF', 6000, 'Proposta para banco de dados', (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()), (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), 150, 'Pendente'),
    ('629619FF-8B86-D011-B42D-00C04FC964FF', 10000, 'Proposta para testes', (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()), (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), 60, 'Aprovada');
-- Repetindo os valores para completar 50 registros
INSERT INTO TB_Candidaturas (Id_Candidatura, Valor_Proposto, DS_Proposta, Id_Profissional, Id_Servico, Duracao_Proposta, Status)
SELECT NEWID(), Valor_Proposto, DS_Proposta, (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()), (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), Duracao_Proposta, Status FROM TB_Candidaturas;
INSERT INTO TB_Candidaturas (Id_Candidatura, Valor_Proposto, DS_Proposta, Id_Profissional, Id_Servico, Duracao_Proposta, Status)
SELECT NEWID(), Valor_Proposto, DS_Proposta, (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()), (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), Duracao_Proposta, Status FROM TB_Candidaturas;
INSERT INTO TB_Candidaturas (Id_Candidatura, Valor_Proposto, DS_Proposta, Id_Profissional, Id_Servico, Duracao_Proposta, Status)
SELECT NEWID(), Valor_Proposto, DS_Proposta, (SELECT TOP 1 Id_Profissional FROM TB_Profissionais ORDER BY NEWID()), (SELECT TOP 1 Id_Servico FROM TB_Servicos ORDER BY NEWID()), Duracao_Proposta, Status FROM TB_Candidaturas;
DELETE FROM TB_Candidaturas WHERE Id_Candidatura NOT IN (SELECT TOP 50 Id_Candidatura FROM TB_Candidaturas);


----- CLEAR Tabelas
delete from TB_Clientes
delete from TB_Candidaturas
delete from TB_Profissionais
delete from TB_Contratos
delete from TB_Servicos
delete from TB_Projetos
delete from TB_Especialidades
delete from TB_Especialidade_Profissional
delete from TB_Especialidade_Projeto