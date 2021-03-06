USE [Laboratorio]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 16/09/2017 05:41:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Alumno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Alumno](
	[Matricula] [uniqueidentifier] NOT NULL,
	[Primer_nombre] [varchar](1) NOT NULL,
	[Segundo_nombre] [varchar](1) NOT NULL,
	[Primer_apellido] [varchar](1) NOT NULL,
	[Segundo_apellido] [varchar](1) NOT NULL,
	[Calificaciones] [float] NOT NULL,
	[Terceras] [bit] NOT NULL,
	[Edad] [tinyint] NULL,
	[Fecha_de_nacimiento] [date] NOT NULL,
	[Nombre_completo]  AS ((([Primer_nombre]+[Segundo_nombre])+[Primer_apellido])+[Segundo_apellido]),
PRIMARY KEY CLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Coche]    Script Date: 16/09/2017 05:41:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Coche]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Coche](
	[Matricula] [uniqueidentifier] NOT NULL,
	[Modelo] [varchar](20) NOT NULL,
	[Marca] [varchar](20) NOT NULL,
	[Precio_venta] [money] NOT NULL,
	[Color] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 16/09/2017 05:41:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Materia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Materia](
	[ID_materia] [uniqueidentifier] NOT NULL,
	[Nombre_materia] [varchar](20) NOT NULL,
	[Maestro] [varchar](50) NOT NULL,
	[Semestre] [int] NULL,
	[Hora] [time](7) NOT NULL,
	[Horario]  AS (([Nombre_materia]+[Maestro])+[Semestre]),
PRIMARY KEY CLUSTERED 
(
	[ID_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 16/09/2017 05:41:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paciente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Paciente](
	[Codigo] [uniqueidentifier] NOT NULL,
	[Primer_nombre] [varchar](20) NOT NULL,
	[Segundo_nombre] [varchar](20) NOT NULL,
	[Primer_apellido] [varchar](20) NOT NULL,
	[Segundo_apellido] [varchar](20) NOT NULL,
	[Calle] [varchar](20) NOT NULL,
	[Colonia] [varchar](20) NOT NULL,
	[Municipio] [varchar](20) NOT NULL,
	[Direccion]  AS (([Calle]+[Colonia])+[Municipio]),
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prestamo]    Script Date: 16/09/2017 05:41:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Prestamo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Prestamo](
	[ID_prestamo] [uniqueidentifier] NOT NULL,
	[Cliente] [varchar](50) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Importe] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_prestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 16/09/2017 05:41:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Producto](
	[ID_producto] [uniqueidentifier] NOT NULL,
	[Codigo_barras] [int] NOT NULL,
	[Precio_producto] [int] NOT NULL,
	[Info_producto]  AS ([Codigo_barras]+[Precio_producto]),
PRIMARY KEY CLUSTERED 
(
	[ID_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Proyecto]    Script Date: 16/09/2017 05:41:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proyecto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Proyecto](
	[Numero_proyecto] [uniqueidentifier] NOT NULL,
	[Patrocinador] [varchar](50) NOT NULL,
	[Director_proyecto] [varchar](50) NOT NULL,
	[Admin_proyecto] [varchar](50) NOT NULL,
	[Info_proyecto]  AS (([Patrocinador]+[Director_proyecto])+[Admin_proyecto]),
PRIMARY KEY CLUSTERED 
(
	[Numero_proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
