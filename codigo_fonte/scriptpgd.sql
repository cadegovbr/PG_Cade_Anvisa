USE [PGD]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Administrador]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrador](
	[IdAdministrador] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [varchar](14) NOT NULL,
 CONSTRAINT [PK_dbo.Administrador] PRIMARY KEY CLUSTERED 
(
	[IdAdministrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Atividade]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atividade](
	[IdAtividade] [int] IDENTITY(1,1) NOT NULL,
	[NomAtividade] [varchar](1000) NOT NULL,
	[PctMinimoReducao] [int] NOT NULL,
	[Inativo] [bit] NOT NULL,
	[DescLinkAtividade] [varchar](300) NULL,
 CONSTRAINT [PK_dbo.Atividade] PRIMARY KEY CLUSTERED 
(
	[IdAtividade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AvaliacaoDetalhadaProduto]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AvaliacaoDetalhadaProduto](
	[IdAvaliacaoDetalhadaProduto] [int] IDENTITY(1,1) NOT NULL,
	[IdAvaliacaoProduto] [int] NOT NULL,
	[IdOS_ItemAvaliacao] [int] NOT NULL,
	[IdOS_CriterioAvaliacao] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AvaliacaoDetalhadaProduto] PRIMARY KEY CLUSTERED 
(
	[IdAvaliacaoDetalhadaProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AvaliacaoProduto]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AvaliacaoProduto](
	[IdAvaliacaoProduto] [int] IDENTITY(1,1) NOT NULL,
	[IdProduto] [int] NOT NULL,
	[CPFAvaliador] [varchar](11) NOT NULL,
	[DataAvaliacao] [datetime] NOT NULL,
	[QuantidadeProdutosAvaliados] [int] NOT NULL,
	[Avaliacao] [int] NOT NULL,
	[EntregueNoPrazo] [bit] NULL,
	[LocalizacaoProduto] [varchar](max) NULL,
	[DataTerminoReal] [datetime] NULL,
	[IdJustificativa] [int] NULL,
	[TipoAvaliacao] [int] NOT NULL,
	[IdNivelAvaliacao] [int] NOT NULL,
	[NotaFinalAvaliacaoDetalhada] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.AvaliacaoProduto] PRIMARY KEY CLUSTERED 
(
	[IdAvaliacaoProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CriterioAvaliacao]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriterioAvaliacao](
	[IdCriterioAvaliacao] [int] IDENTITY(1,1) NOT NULL,
	[DescCriterioAvaliacao] [varchar](100) NOT NULL,
	[strTextoExplicativo] [varchar](1000) NOT NULL,
	[Inativo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.CriterioAvaliacao] PRIMARY KEY CLUSTERED 
(
	[IdCriterioAvaliacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cronograma]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cronograma](
	[IdCronograma] [int] IDENTITY(1,1) NOT NULL,
	[DataCronograma] [datetime] NOT NULL,
	[HorasCronograma] [float] NOT NULL,
	[IdPacto] [int] NOT NULL,
	[DiaUtil] [bit] NOT NULL,
	[Feriado] [bit] NOT NULL,
	[DuracaoFeriado] [float] NULL,
	[Suspenso] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Cronograma] PRIMARY KEY CLUSTERED 
(
	[IdCronograma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoAtividade]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoAtividade](
	[IdGrupoAtividade] [int] IDENTITY(1,1) NOT NULL,
	[NomGrupoAtividade] [varchar](500) NOT NULL,
	[Inativo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.GrupoAtividade] PRIMARY KEY CLUSTERED 
(
	[IdGrupoAtividade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoAtividade_Atividade]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoAtividade_Atividade](
	[IdGrupoAtividade] [int] NOT NULL,
	[IdAtividade] [int] NOT NULL,
 CONSTRAINT [PK_dbo.GrupoAtividade_Atividade] PRIMARY KEY CLUSTERED 
(
	[IdGrupoAtividade] ASC,
	[IdAtividade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historico]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historico](
	[IdHistorico] [int] IDENTITY(1,1) NOT NULL,
	[IdPacto] [int] NOT NULL,
	[Descricao] [varchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Historico] PRIMARY KEY CLUSTERED 
(
	[IdHistorico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IniciativaPlanoOperacional]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IniciativaPlanoOperacional](
	[IdIniciativaPlanoOperacional] [varchar](5) NOT NULL,
	[DescIniciativaPlanoOperacional] [varchar](max) NULL,
 CONSTRAINT [PK_dbo.IniciativaPlanoOperacional] PRIMARY KEY CLUSTERED 
(
	[IdIniciativaPlanoOperacional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IniciativaPlanoOperacionalProduto]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IniciativaPlanoOperacionalProduto](
	[IdIniciativaPlanoOperacional] [varchar](5) NOT NULL,
	[IdProduto] [int] NOT NULL,
 CONSTRAINT [PK_dbo.IniciativaPlanoOperacionalProduto] PRIMARY KEY CLUSTERED 
(
	[IdIniciativaPlanoOperacional] ASC,
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemAvaliacao]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemAvaliacao](
	[IdItemAvaliacao] [int] IDENTITY(1,1) NOT NULL,
	[DescItemAvaliacao] [varchar](500) NOT NULL,
	[ImpactoNota] [decimal](18, 2) NOT NULL,
	[IdNotaMaxima] [int] NOT NULL,
	[IdCriterioAvaliacao] [int] NOT NULL,
	[Inativo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ItemAvaliacao] PRIMARY KEY CLUSTERED 
(
	[IdItemAvaliacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Justificativa]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Justificativa](
	[IdJustificativa] [int] IDENTITY(1,1) NOT NULL,
	[DescJustificativa] [varchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.Justificativa] PRIMARY KEY CLUSTERED 
(
	[IdJustificativa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[IdLog] [int] IDENTITY(1,1) NOT NULL,
	[Data] [datetime] NOT NULL,
	[Operacao] [varchar](20) NOT NULL,
	[Tabela] [varchar](50) NOT NULL,
	[IdTabela] [int] NOT NULL,
	[Valores] [varchar](max) NOT NULL,
	[CpfUsuario] [varchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.Log] PRIMARY KEY CLUSTERED 
(
	[IdLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogComum]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogComum](
	[IdLog] [int] IDENTITY(1,1) NOT NULL,
	[SiglaOrigem] [nvarchar](5) NOT NULL,
	[NivelLog] [nvarchar](5) NOT NULL,
	[DataLog] [datetime] NOT NULL,
	[LoginUsuario] [varchar](200) NULL,
	[Mensagem] [varchar](max) NULL,
	[StackTrace] [varchar](max) NULL,
 CONSTRAINT [PK_dbo.LogComum] PRIMARY KEY CLUSTERED 
(
	[IdLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NivelAvaliacao]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelAvaliacao](
	[IdNivelAvaliacao] [int] NOT NULL,
	[DescNivelAvaliacao] [varchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.NivelAvaliacao] PRIMARY KEY CLUSTERED 
(
	[IdNivelAvaliacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaAvaliacao]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaAvaliacao](
	[IdNotaAvaliacao] [int] NOT NULL,
	[DescNotaAvaliacao] [varchar](20) NOT NULL,
	[IndAtivoAvaliacaoSimplificada] [bit] NOT NULL,
	[IndAtivoAvaliacaoDetalhada] [bit] NOT NULL,
	[LimiteSuperiorFaixa] [decimal](18, 2) NOT NULL,
	[LimiteInferiorFaixa] [decimal](18, 2) NOT NULL,
	[Conceito] [int] NOT NULL,
 CONSTRAINT [PK_dbo.NotaAvaliacao] PRIMARY KEY CLUSTERED 
(
	[IdNotaAvaliacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdemServico]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdemServico](
	[IdOrdemServico] [int] IDENTITY(1,1) NOT NULL,
	[DatInicioSistema] [datetime] NOT NULL,
	[DatInicioNormativo] [datetime] NOT NULL,
	[DescOrdemServico] [varchar](1000) NOT NULL,
	[Inativo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.OrdemServico] PRIMARY KEY CLUSTERED 
(
	[IdOrdemServico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OS_Atividade]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OS_Atividade](
	[IdAtividade] [int] IDENTITY(1,1) NOT NULL,
	[NomAtividade] [varchar](1000) NOT NULL,
	[PctMinimoReducao] [int] NOT NULL,
	[Inativo] [bit] NOT NULL,
	[IdOS_GrupoAtividade] [int] NOT NULL,
	[Grupo_IdGrupoAtividade] [int] NULL,
	[DescLinkAtividade] [varchar](300) NULL,
 CONSTRAINT [PK_dbo.OS_Atividade] PRIMARY KEY CLUSTERED 
(
	[IdAtividade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OS_CriterioAvaliacao]    Script Date: 14/04/2020 15:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OS_CriterioAvaliacao](
	[IdCriterioAvaliacao] [int] IDENTITY(1,1) NOT NULL,
	[IdCriterioAvaliacaoOriginal] [int] NOT NULL,
	[DescCriterioAvaliacao] [varchar](100) NOT NULL,
	[StrTextoExplicativo] [varchar](1000) NOT NULL,
	[IdOrdemServico] [int] NOT NULL,
	[Inativo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.OS_CriterioAvaliacao] PRIMARY KEY CLUSTERED 
(
	[IdCriterioAvaliacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OS_GrupoAtividade]    Script Date: 14/04/2020 15:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OS_GrupoAtividade](
	[IdGrupoAtividade] [int] IDENTITY(1,1) NOT NULL,
	[IdGrupoAtividadeOriginal] [int] NOT NULL,
	[NomGrupoAtividade] [varchar](500) NOT NULL,
	[Inativo] [bit] NOT NULL,
	[IdOrdemServico] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OS_GrupoAtividade] PRIMARY KEY CLUSTERED 
(
	[IdGrupoAtividade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OS_ItemAvaliacao]    Script Date: 14/04/2020 15:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OS_ItemAvaliacao](
	[IdItemAvaliacao] [int] IDENTITY(1,1) NOT NULL,
	[DescItemAvaliacao] [varchar](100) NOT NULL,
	[ImpactoNota] [decimal](18, 2) NOT NULL,
	[IdNotaMaxima] [int] NOT NULL,
	[IdCriterioAvaliacao] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OS_ItemAvaliacao] PRIMARY KEY CLUSTERED 
(
	[IdItemAvaliacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OS_TipoAtividade]    Script Date: 14/04/2020 15:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OS_TipoAtividade](
	[IdTipoAtividade] [int] IDENTITY(1,1) NOT NULL,
	[Faixa] [varchar](100) NOT NULL,
	[DuracaoFaixa] [float] NOT NULL,
	[DuracaoFaixaPresencial] [float] NOT NULL,
	[IdOS_Atividade] [int] NOT NULL,
	[Atividade_IdAtividade] [int] NULL,
	[DescTextoExplicativo] [varchar](300) NULL,
 CONSTRAINT [PK_dbo.OS_TipoAtividade] PRIMARY KEY CLUSTERED 
(
	[IdTipoAtividade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OS_TipoPacto_GrupoAtividade]    Script Date: 14/04/2020 15:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OS_TipoPacto_GrupoAtividade](
	[IdGrupoAtividade] [int] NOT NULL,
	[IdTipoPacto] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OS_TipoPacto_GrupoAtividade] PRIMARY KEY CLUSTERED 
(
	[IdGrupoAtividade] ASC,
	[IdTipoPacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacto]    Script Date: 14/04/2020 15:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacto](
	[IdPacto] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[MatriculaSIAPE] [varchar](100) NULL,
	[UnidadeExercicio] [int] NOT NULL,
	[TelefoneFixoServidor] [varchar](100) NULL,
	[TelefoneMovelServidor] [varchar](100) NULL,
	[PossuiCargaHoraria] [bit] NOT NULL,
	[DataPrevistaInicio] [datetime] NOT NULL,
	[DataPrevistaTermino] [datetime] NOT NULL,
	[CargaHorariaTotal] [float] NOT NULL,
	[OrdemServico_IdOrdemServico] [int] NULL,
	[Motivo] [varchar](max) NULL,
	[SuspensoAPartirDe] [datetime] NULL,
	[IdOrdemServico] [int] NOT NULL,
	[CargaHoraria] [float] NOT NULL,
	[EntregueNoPrazo] [int] NULL,
	[DataTerminoReal] [datetime] NULL,
	[StatusAprovacaoSolicitante] [int] NULL,
	[DataAprovacaoSolicitante] [datetime] NULL,
	[StatusAprovacaoDirigente] [int] NULL,
	[DataAprovacaoDirigente] [datetime] NULL,
	[CpfUsuario] [varchar](100) NULL,
	[CpfUsuarioSolicitante] [varchar](100) NULL,
	[CpfUsuarioDirigente] [varchar](100) NULL,
	[CpfUsuarioCriador] [varchar](100) NULL,
	[SuspensoAte] [datetime] NULL,
	[DataInterrupcao] [datetime] NULL,
	[IdSituacaoPacto] [int] NOT NULL,
	[IdTipoPacto] [int] NOT NULL,
	[TAP] [varchar](500) NULL,
	[PactoExecutadoNoExterior] [bit] NOT NULL,
	[ProcessoSEI] [varchar](100) NULL,
	[IndVisualizacaoRestrita] [bit] NOT NULL,
	[JustificativaVisualizacaoRestrita] [varchar](100) NULL,
 CONSTRAINT [PK_dbo.Pacto] PRIMARY KEY CLUSTERED 
(
	[IdPacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParametroSistema]    Script Date: 14/04/2020 15:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametroSistema](
	[IdParametroSistema] [int] IDENTITY(1,1) NOT NULL,
	[DescParametroSistema] [varchar](150) NOT NULL,
	[Valor] [varchar](25) NOT NULL,
 CONSTRAINT [PK_dbo.ParametroSistema] PRIMARY KEY CLUSTERED 
(
	[IdParametroSistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 14/04/2020 15:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[IdProduto] [int] IDENTITY(1,1) NOT NULL,
	[IdGrupoAtividade] [int] NOT NULL,
	[IdAtividade] [int] NOT NULL,
	[CargaHoraria] [int] NOT NULL,
	[QuantidadeProduto] [int] NOT NULL,
	[CargaHorariaProduto] [float] NOT NULL,
	[Observacoes] [varchar](max) NULL,
	[IdPacto] [int] NOT NULL,
	[IdTipoAtividade] [int] NOT NULL,
	[Avaliacao] [int] NOT NULL,
	[ObservacoesAdicionais] [varchar](max) NULL,
	[Motivo] [varchar](max) NULL,
	[EntregueNoPrazo] [bit] NULL,
	[IdJustificativa] [int] NULL,
	[DataTerminoReal] [datetime] NULL,
 CONSTRAINT [PK_dbo.Produto] PRIMARY KEY CLUSTERED 
(
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SituacaoPacto]    Script Date: 14/04/2020 15:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SituacaoPacto](
	[IdSituacaoPacto] [int] IDENTITY(1,1) NOT NULL,
	[DescSituacaoPacto] [varchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.SituacaoPacto] PRIMARY KEY CLUSTERED 
(
	[IdSituacaoPacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAtividade]    Script Date: 14/04/2020 15:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAtividade](
	[IdTipoAtividade] [int] IDENTITY(1,1) NOT NULL,
	[Faixa] [varchar](100) NOT NULL,
	[DuracaoFaixa] [float] NOT NULL,
	[DuracaoFaixaPresencial] [float] NOT NULL,
	[IdAtividade] [int] NOT NULL,
	[DescTextoExplicativo] [varchar](300) NULL,
 CONSTRAINT [PK_dbo.TipoAtividade] PRIMARY KEY CLUSTERED 
(
	[IdTipoAtividade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPacto]    Script Date: 14/04/2020 15:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPacto](
	[IdTipoPacto] [int] IDENTITY(1,1) NOT NULL,
	[DescTipoPacto] [varchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.TipoPacto] PRIMARY KEY CLUSTERED 
(
	[IdTipoPacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPactoGrupoAtividade]    Script Date: 14/04/2020 15:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPactoGrupoAtividade](
	[IdTipoPacto] [int] NOT NULL,
	[IdGrupoAtividade] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TipoPactoGrupoAtividade] PRIMARY KEY CLUSTERED 
(
	[IdTipoPacto] ASC,
	[IdGrupoAtividade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unidade]    Script Date: 14/04/2020 15:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unidade](
	[id_unidade] [int] NOT NULL,
	[unidade_responsavel] [int] NULL,
	[nome] [varchar](200) NOT NULL,
	[codigo_unidade] [bigint] NULL,
	[sigla] [varchar](20) NULL,
	[hierarquia] [varchar](50) NULL,
	[nome_capa] [varchar](200) NULL,
	[hierarquia_organizacional] [varchar](50) NULL,
	[nome_ascii] [varchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unidade_TipoPacto]    Script Date: 14/04/2020 15:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unidade_TipoPacto](
	[IdUnidade_TipoPacto] [int] IDENTITY(1,1) NOT NULL,
	[IdUnidade] [int] NOT NULL,
	[IdTipoPacto] [int] NOT NULL,
	[IndPermitePactoExterior] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Unidade_TipoPacto] PRIMARY KEY CLUSTERED 
(
	[IdUnidade_TipoPacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AvaliacaoDetalhadaProduto] ADD  DEFAULT ((0)) FOR [IdOS_CriterioAvaliacao]
GO
ALTER TABLE [dbo].[CriterioAvaliacao] ADD  DEFAULT ((0)) FOR [Inativo]
GO
ALTER TABLE [dbo].[Cronograma] ADD  DEFAULT ((0)) FOR [DiaUtil]
GO
ALTER TABLE [dbo].[Cronograma] ADD  DEFAULT ((0)) FOR [Feriado]
GO
ALTER TABLE [dbo].[Cronograma] ADD  DEFAULT ((0)) FOR [Suspenso]
GO
ALTER TABLE [dbo].[ItemAvaliacao] ADD  DEFAULT ((0)) FOR [Inativo]
GO
ALTER TABLE [dbo].[NotaAvaliacao] ADD  DEFAULT ((0)) FOR [IndAtivoAvaliacaoSimplificada]
GO
ALTER TABLE [dbo].[NotaAvaliacao] ADD  DEFAULT ((0)) FOR [IndAtivoAvaliacaoDetalhada]
GO
ALTER TABLE [dbo].[NotaAvaliacao] ADD  DEFAULT ((0)) FOR [LimiteSuperiorFaixa]
GO
ALTER TABLE [dbo].[NotaAvaliacao] ADD  DEFAULT ((0)) FOR [LimiteInferiorFaixa]
GO
ALTER TABLE [dbo].[OS_CriterioAvaliacao] ADD  DEFAULT ((0)) FOR [Inativo]
GO
ALTER TABLE [dbo].[Pacto] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [SuspensoAPartirDe]
GO
ALTER TABLE [dbo].[Pacto] ADD  DEFAULT ((0)) FOR [IdOrdemServico]
GO
ALTER TABLE [dbo].[Pacto] ADD  DEFAULT ((0)) FOR [PactoExecutadoNoExterior]
GO
ALTER TABLE [dbo].[Pacto] ADD  DEFAULT ((0)) FOR [IndVisualizacaoRestrita]
GO
ALTER TABLE [dbo].[Produto] ADD  DEFAULT ((0)) FOR [IdTipoAtividade]
GO
ALTER TABLE [dbo].[AvaliacaoDetalhadaProduto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AvaliacaoDetalhadaProduto_dbo.AvaliacaoProduto_IdAvaliacaoProduto] FOREIGN KEY([IdAvaliacaoProduto])
REFERENCES [dbo].[AvaliacaoProduto] ([IdAvaliacaoProduto])
GO
ALTER TABLE [dbo].[AvaliacaoDetalhadaProduto] CHECK CONSTRAINT [FK_dbo.AvaliacaoDetalhadaProduto_dbo.AvaliacaoProduto_IdAvaliacaoProduto]
GO
ALTER TABLE [dbo].[AvaliacaoDetalhadaProduto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AvaliacaoDetalhadaProduto_dbo.OS_CriterioAvaliacao_IdOS_CriterioAvaliacao] FOREIGN KEY([IdOS_CriterioAvaliacao])
REFERENCES [dbo].[OS_CriterioAvaliacao] ([IdCriterioAvaliacao])
GO
ALTER TABLE [dbo].[AvaliacaoDetalhadaProduto] CHECK CONSTRAINT [FK_dbo.AvaliacaoDetalhadaProduto_dbo.OS_CriterioAvaliacao_IdOS_CriterioAvaliacao]
GO
ALTER TABLE [dbo].[AvaliacaoDetalhadaProduto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AvaliacaoDetalhadaProduto_dbo.OS_ItemAvaliacao_IdOS_ItemAvaliacao] FOREIGN KEY([IdOS_ItemAvaliacao])
REFERENCES [dbo].[OS_ItemAvaliacao] ([IdItemAvaliacao])
GO
ALTER TABLE [dbo].[AvaliacaoDetalhadaProduto] CHECK CONSTRAINT [FK_dbo.AvaliacaoDetalhadaProduto_dbo.OS_ItemAvaliacao_IdOS_ItemAvaliacao]
GO
ALTER TABLE [dbo].[AvaliacaoProduto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AvaliacaoProduto_dbo.Justificativa_IdJustificativa] FOREIGN KEY([IdJustificativa])
REFERENCES [dbo].[Justificativa] ([IdJustificativa])
GO
ALTER TABLE [dbo].[AvaliacaoProduto] CHECK CONSTRAINT [FK_dbo.AvaliacaoProduto_dbo.Justificativa_IdJustificativa]
GO
ALTER TABLE [dbo].[AvaliacaoProduto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AvaliacaoProduto_dbo.NivelAvaliacao_IdNivelAvaliacao] FOREIGN KEY([IdNivelAvaliacao])
REFERENCES [dbo].[NivelAvaliacao] ([IdNivelAvaliacao])
GO
ALTER TABLE [dbo].[AvaliacaoProduto] CHECK CONSTRAINT [FK_dbo.AvaliacaoProduto_dbo.NivelAvaliacao_IdNivelAvaliacao]
GO
ALTER TABLE [dbo].[AvaliacaoProduto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AvaliacaoProduto_dbo.Produto_IdProduto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([IdProduto])
GO
ALTER TABLE [dbo].[AvaliacaoProduto] CHECK CONSTRAINT [FK_dbo.AvaliacaoProduto_dbo.Produto_IdProduto]
GO
ALTER TABLE [dbo].[Cronograma]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cronograma_dbo.Pacto_Pacto_IdPacto] FOREIGN KEY([IdPacto])
REFERENCES [dbo].[Pacto] ([IdPacto])
GO
ALTER TABLE [dbo].[Cronograma] CHECK CONSTRAINT [FK_dbo.Cronograma_dbo.Pacto_Pacto_IdPacto]
GO
ALTER TABLE [dbo].[GrupoAtividade_Atividade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoAtividade_Atividade_dbo.Atividade_IdAtividade] FOREIGN KEY([IdAtividade])
REFERENCES [dbo].[Atividade] ([IdAtividade])
GO
ALTER TABLE [dbo].[GrupoAtividade_Atividade] CHECK CONSTRAINT [FK_dbo.GrupoAtividade_Atividade_dbo.Atividade_IdAtividade]
GO
ALTER TABLE [dbo].[GrupoAtividade_Atividade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoAtividade_Atividade_dbo.GrupoAtividade_IdGrupoAtividade] FOREIGN KEY([IdGrupoAtividade])
REFERENCES [dbo].[GrupoAtividade] ([IdGrupoAtividade])
GO
ALTER TABLE [dbo].[GrupoAtividade_Atividade] CHECK CONSTRAINT [FK_dbo.GrupoAtividade_Atividade_dbo.GrupoAtividade_IdGrupoAtividade]
GO
ALTER TABLE [dbo].[Historico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Historico_dbo.Pacto_IdPacto] FOREIGN KEY([IdPacto])
REFERENCES [dbo].[Pacto] ([IdPacto])
GO
ALTER TABLE [dbo].[Historico] CHECK CONSTRAINT [FK_dbo.Historico_dbo.Pacto_IdPacto]
GO
ALTER TABLE [dbo].[IniciativaPlanoOperacionalProduto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IniciativaPlanoOperacionalProduto_dbo.Produto_IdProduto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([IdProduto])
GO
ALTER TABLE [dbo].[IniciativaPlanoOperacionalProduto] CHECK CONSTRAINT [FK_dbo.IniciativaPlanoOperacionalProduto_dbo.Produto_IdProduto]
GO
ALTER TABLE [dbo].[ItemAvaliacao]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ItemAvaliacao_dbo.CriterioAvaliacao_IdCriterioAvaliacao] FOREIGN KEY([IdCriterioAvaliacao])
REFERENCES [dbo].[CriterioAvaliacao] ([IdCriterioAvaliacao])
GO
ALTER TABLE [dbo].[ItemAvaliacao] CHECK CONSTRAINT [FK_dbo.ItemAvaliacao_dbo.CriterioAvaliacao_IdCriterioAvaliacao]
GO
ALTER TABLE [dbo].[ItemAvaliacao]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ItemAvaliacao_dbo.NotaAvaliacao_IdNotaMaxima] FOREIGN KEY([IdNotaMaxima])
REFERENCES [dbo].[NotaAvaliacao] ([IdNotaAvaliacao])
GO
ALTER TABLE [dbo].[ItemAvaliacao] CHECK CONSTRAINT [FK_dbo.ItemAvaliacao_dbo.NotaAvaliacao_IdNotaMaxima]
GO
ALTER TABLE [dbo].[OS_Atividade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OS_Atividade_dbo.OS_GrupoAtividade_Grupo_IdGrupoAtividade] FOREIGN KEY([Grupo_IdGrupoAtividade])
REFERENCES [dbo].[OS_GrupoAtividade] ([IdGrupoAtividade])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OS_Atividade] CHECK CONSTRAINT [FK_dbo.OS_Atividade_dbo.OS_GrupoAtividade_Grupo_IdGrupoAtividade]
GO
ALTER TABLE [dbo].[OS_CriterioAvaliacao]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OS_CriterioAvaliacao_dbo.OrdemServico_IdOrdemServico] FOREIGN KEY([IdOrdemServico])
REFERENCES [dbo].[OrdemServico] ([IdOrdemServico])
GO
ALTER TABLE [dbo].[OS_CriterioAvaliacao] CHECK CONSTRAINT [FK_dbo.OS_CriterioAvaliacao_dbo.OrdemServico_IdOrdemServico]
GO
ALTER TABLE [dbo].[OS_GrupoAtividade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OS_GrupoAtividade_dbo.OrdemServico_IdOrdemServico] FOREIGN KEY([IdOrdemServico])
REFERENCES [dbo].[OrdemServico] ([IdOrdemServico])
GO
ALTER TABLE [dbo].[OS_GrupoAtividade] CHECK CONSTRAINT [FK_dbo.OS_GrupoAtividade_dbo.OrdemServico_IdOrdemServico]
GO
ALTER TABLE [dbo].[OS_ItemAvaliacao]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OS_ItemAvaliacao_dbo.NotaAvaliacao_IdNotaMaxima] FOREIGN KEY([IdNotaMaxima])
REFERENCES [dbo].[NotaAvaliacao] ([IdNotaAvaliacao])
GO
ALTER TABLE [dbo].[OS_ItemAvaliacao] CHECK CONSTRAINT [FK_dbo.OS_ItemAvaliacao_dbo.NotaAvaliacao_IdNotaMaxima]
GO
ALTER TABLE [dbo].[OS_ItemAvaliacao]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OS_ItemAvaliacao_dbo.OS_CriterioAvaliacao_IdCriterioAvaliacao] FOREIGN KEY([IdCriterioAvaliacao])
REFERENCES [dbo].[OS_CriterioAvaliacao] ([IdCriterioAvaliacao])
GO
ALTER TABLE [dbo].[OS_ItemAvaliacao] CHECK CONSTRAINT [FK_dbo.OS_ItemAvaliacao_dbo.OS_CriterioAvaliacao_IdCriterioAvaliacao]
GO
ALTER TABLE [dbo].[OS_TipoAtividade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OS_TipoAtividade_dbo.OS_Atividade_Atividade_IdAtividade] FOREIGN KEY([Atividade_IdAtividade])
REFERENCES [dbo].[OS_Atividade] ([IdAtividade])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OS_TipoAtividade] CHECK CONSTRAINT [FK_dbo.OS_TipoAtividade_dbo.OS_Atividade_Atividade_IdAtividade]
GO
ALTER TABLE [dbo].[OS_TipoPacto_GrupoAtividade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OS_TipoPacto_GrupoAtividade_dbo.OS_GrupoAtividade_IdGrupoAtividade] FOREIGN KEY([IdGrupoAtividade])
REFERENCES [dbo].[OS_GrupoAtividade] ([IdGrupoAtividade])
GO
ALTER TABLE [dbo].[OS_TipoPacto_GrupoAtividade] CHECK CONSTRAINT [FK_dbo.OS_TipoPacto_GrupoAtividade_dbo.OS_GrupoAtividade_IdGrupoAtividade]
GO
ALTER TABLE [dbo].[OS_TipoPacto_GrupoAtividade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OS_TipoPacto_GrupoAtividade_dbo.TipoPacto_IdTipoPacto] FOREIGN KEY([IdTipoPacto])
REFERENCES [dbo].[TipoPacto] ([IdTipoPacto])
GO
ALTER TABLE [dbo].[OS_TipoPacto_GrupoAtividade] CHECK CONSTRAINT [FK_dbo.OS_TipoPacto_GrupoAtividade_dbo.TipoPacto_IdTipoPacto]
GO
ALTER TABLE [dbo].[Pacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pacto_dbo.OrdemServico_IdOrdemServico] FOREIGN KEY([IdOrdemServico])
REFERENCES [dbo].[OrdemServico] ([IdOrdemServico])
GO
ALTER TABLE [dbo].[Pacto] CHECK CONSTRAINT [FK_dbo.Pacto_dbo.OrdemServico_IdOrdemServico]
GO
ALTER TABLE [dbo].[Pacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pacto_dbo.SituacaoPacto_IdSituacaoPacto] FOREIGN KEY([IdSituacaoPacto])
REFERENCES [dbo].[SituacaoPacto] ([IdSituacaoPacto])
GO
ALTER TABLE [dbo].[Pacto] CHECK CONSTRAINT [FK_dbo.Pacto_dbo.SituacaoPacto_IdSituacaoPacto]
GO
ALTER TABLE [dbo].[Pacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pacto_dbo.TipoPacto_IdTipoPacto] FOREIGN KEY([IdTipoPacto])
REFERENCES [dbo].[TipoPacto] ([IdTipoPacto])
GO
ALTER TABLE [dbo].[Pacto] CHECK CONSTRAINT [FK_dbo.Pacto_dbo.TipoPacto_IdTipoPacto]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Produto_dbo.Justificativa_IdJustificativa] FOREIGN KEY([IdJustificativa])
REFERENCES [dbo].[Justificativa] ([IdJustificativa])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_dbo.Produto_dbo.Justificativa_IdJustificativa]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Produto_dbo.OS_Atividade_IdAtividade] FOREIGN KEY([IdAtividade])
REFERENCES [dbo].[OS_Atividade] ([IdAtividade])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_dbo.Produto_dbo.OS_Atividade_IdAtividade]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Produto_dbo.OS_GrupoAtividade_IdGrupoAtividade] FOREIGN KEY([IdGrupoAtividade])
REFERENCES [dbo].[OS_GrupoAtividade] ([IdGrupoAtividade])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_dbo.Produto_dbo.OS_GrupoAtividade_IdGrupoAtividade]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Produto_dbo.OS_TipoAtividade_IdTipoAtividade] FOREIGN KEY([IdTipoAtividade])
REFERENCES [dbo].[OS_TipoAtividade] ([IdTipoAtividade])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_dbo.Produto_dbo.OS_TipoAtividade_IdTipoAtividade]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Produto_dbo.Pacto_IdPacto] FOREIGN KEY([IdPacto])
REFERENCES [dbo].[Pacto] ([IdPacto])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_dbo.Produto_dbo.Pacto_IdPacto]
GO
ALTER TABLE [dbo].[TipoAtividade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TipoAtividade_dbo.Atividade_IdAtividade] FOREIGN KEY([IdAtividade])
REFERENCES [dbo].[Atividade] ([IdAtividade])
GO
ALTER TABLE [dbo].[TipoAtividade] CHECK CONSTRAINT [FK_dbo.TipoAtividade_dbo.Atividade_IdAtividade]
GO
ALTER TABLE [dbo].[TipoPactoGrupoAtividade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TipoPactoGrupoAtividade_dbo.GrupoAtividade_IdGrupoAtividade] FOREIGN KEY([IdGrupoAtividade])
REFERENCES [dbo].[GrupoAtividade] ([IdGrupoAtividade])
GO
ALTER TABLE [dbo].[TipoPactoGrupoAtividade] CHECK CONSTRAINT [FK_dbo.TipoPactoGrupoAtividade_dbo.GrupoAtividade_IdGrupoAtividade]
GO
ALTER TABLE [dbo].[TipoPactoGrupoAtividade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TipoPactoGrupoAtividade_dbo.TipoPacto_IdTipoPacto] FOREIGN KEY([IdTipoPacto])
REFERENCES [dbo].[TipoPacto] ([IdTipoPacto])
GO
ALTER TABLE [dbo].[TipoPactoGrupoAtividade] CHECK CONSTRAINT [FK_dbo.TipoPactoGrupoAtividade_dbo.TipoPacto_IdTipoPacto]
GO
ALTER TABLE [dbo].[Unidade_TipoPacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Unidade_TipoPacto_dbo.TipoPacto_IdTipoPacto] FOREIGN KEY([IdTipoPacto])
REFERENCES [dbo].[TipoPacto] ([IdTipoPacto])
GO
ALTER TABLE [dbo].[Unidade_TipoPacto] CHECK CONSTRAINT [FK_dbo.Unidade_TipoPacto_dbo.TipoPacto_IdTipoPacto]
GO
