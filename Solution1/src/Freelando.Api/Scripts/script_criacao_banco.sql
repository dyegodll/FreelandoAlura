CREATE DATABASE Freelando0;
GO

USE Freelando0;
GO

SET ANSI_NULLS ON;
GO

SET QUOTED_IDENTIFIER ON;
GO

CREATE TABLE [dbo].[TB_Candidaturas] (
    [ID_Candidatura]   UNIQUEIDENTIFIER,
    [ID_Profissional]  UNIQUEIDENTIFIER,
    [ID_Servico]       UNIQUEIDENTIFIER,
    [Valor_Proposto]   FLOAT (53),
    [DS_Proposta]      NVARCHAR (MAX),
    [Duracao_Proposta] NVARCHAR (50),
    [Status]           NVARCHAR (50)
);
GO

CREATE TABLE [dbo].[TB_Clientes] (
    [ID_Cliente] UNIQUEIDENTIFIER,
    [Nome]       NVARCHAR (MAX),
    [Cpf]        NVARCHAR (MAX),
    [Email]      NVARCHAR (MAX),
    [Telefone]   NVARCHAR (MAX)
);
GO

CREATE TABLE [dbo].[TB_Contratos] (
    [ID_Contrato]       UNIQUEIDENTIFIER,
    [ID_Servico]        UNIQUEIDENTIFIER,
    [ID_Profissional]   UNIQUEIDENTIFIER,
    [Valor]             FLOAT (53),
    [Data_Inicio]       DATETIME2 (7),
    [Data_Encerramento] DATETIME2 (7)
);
GO

CREATE TABLE [dbo].[TB_Especialidade_Profissional] (
    [Id_Especialidade] UNIQUEIDENTIFIER,
    [Id_Profissional]  UNIQUEIDENTIFIER
);
GO

CREATE TABLE [dbo].[TB_Especialidade_Projeto] (
    [Id_Especialidade] UNIQUEIDENTIFIER,
    [Id_Projeto]       UNIQUEIDENTIFIER
);
GO

CREATE TABLE [dbo].[TB_Especialidades] (
    [ID_Especialidade] UNIQUEIDENTIFIER,
    [DS_Especialidade] NVARCHAR (MAX)
);
GO

CREATE TABLE [dbo].[TB_Profissionais] (
    [ID_Profissional] UNIQUEIDENTIFIER,
    [Nome]            NVARCHAR (MAX),
    [Cpf]             NVARCHAR (MAX),
    [Email]           NVARCHAR (MAX),
    [Telefone]        NVARCHAR (MAX)
);
GO

CREATE TABLE [dbo].[TB_Projetos] (
    [ID_Projeto] UNIQUEIDENTIFIER,
    [ID_Cliente] UNIQUEIDENTIFIER,
    [Titulo]     NVARCHAR (MAX),
    [DS_Projeto] NVARCHAR (MAX),
    [Status]     NVARCHAR (50)
);
GO

CREATE TABLE [dbo].[TB_Servicos] (
    [ID_Servico] UNIQUEIDENTIFIER,
    [ID_Projeto] UNIQUEIDENTIFIER,
    [Titulo]     NVARCHAR (MAX),
    [DS_Projeto] NVARCHAR (MAX),
    [Status]     NVARCHAR (50)
);
GO
