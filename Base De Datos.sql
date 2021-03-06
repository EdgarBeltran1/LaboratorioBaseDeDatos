USE [master]
GO
/****** Object:  Database [Proyecto]    Script Date: 04/11/2017 12:21:47 a. m. ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Proyecto')
BEGIN
CREATE DATABASE [Proyecto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Proyecto.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Proyecto_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Proyecto_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [Proyecto] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Proyecto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Proyecto] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Proyecto]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 04/11/2017 12:21:47 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Area]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Area](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](500) NOT NULL,
 CONSTRAINT [Area_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Aula]    Script Date: 04/11/2017 12:21:47 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Aula]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Aula](
	[Numero] [int] NOT NULL,
	[Capacidad] [smallint] NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
 CONSTRAINT [Aula_pk] PRIMARY KEY CLUSTERED 
(
	[Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 04/11/2017 12:21:47 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Candidato]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Candidato](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](70) NOT NULL,
	[Apellido_Paterno] [varchar](40) NOT NULL,
	[Apellido_Materno] [varchar](40) NULL,
	[Correo] [varchar](100) NOT NULL,
	[Calle] [varchar](100) NOT NULL,
	[Numero] [int] NOT NULL,
	[Colonia] [varchar](100) NOT NULL,
	[Fecha_nacimiento] [date] NOT NULL,
	[Fecha_solicitud] [date] NOT NULL,
	[Estatus_ID] [int] NOT NULL,
 CONSTRAINT [Candidato_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cuenta_Estudiante]    Script Date: 04/11/2017 12:21:47 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cuenta_Estudiante]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cuenta_Estudiante](
	[contrasena] [varchar](50) NOT NULL,
	[Estudiante_Matricula] [int] NOT NULL,
 CONSTRAINT [Cuenta_Estudiante_pk] PRIMARY KEY CLUSTERED 
(
	[contrasena] ASC,
	[Estudiante_Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cuenta_profesor]    Script Date: 04/11/2017 12:21:47 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cuenta_profesor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cuenta_profesor](
	[contrasena] [varchar](50) NOT NULL,
	[Profesor_Empleado_No_empleado] [int] NOT NULL,
 CONSTRAINT [Cuenta_profesor_pk] PRIMARY KEY CLUSTERED 
(
	[contrasena] ASC,
	[Profesor_Empleado_No_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 04/11/2017 12:21:47 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Curso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Curso](
	[Clave] [int] NOT NULL,
	[Materia_Clave] [int] NOT NULL,
	[Aula_Numero] [int] NOT NULL,
	[Profesor_Empleado_No_empleado] [int] NOT NULL,
 CONSTRAINT [Curso_pk] PRIMARY KEY CLUSTERED 
(
	[Clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Curso_Horario]    Script Date: 04/11/2017 12:21:47 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Curso_Horario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Curso_Horario](
	[Curso_Clave] [int] NOT NULL,
	[Horario_Clave] [int] NOT NULL,
 CONSTRAINT [Curso_Horario_pk] PRIMARY KEY CLUSTERED 
(
	[Curso_Clave] ASC,
	[Horario_Clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 04/11/2017 12:21:47 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empleado](
	[No_empleado] [int] NOT NULL,
	[Nombre] [varchar](70) NOT NULL,
	[Apellido_Paterno] [varchar](40) NOT NULL,
	[Apellido_Materno] [varchar](40) NULL,
	[Fecha_Ingreso] [date] NOT NULL,
	[Calle] [varchar](100) NOT NULL,
	[Numero] [int] NOT NULL,
	[Colonia] [varchar](100) NOT NULL,
	[Fecha_nacimiento] [date] NOT NULL,
 CONSTRAINT [Empleado_pk] PRIMARY KEY CLUSTERED 
(
	[No_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estatus]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Estatus](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](500) NOT NULL,
	[Tipo] [varchar](25) NOT NULL,
 CONSTRAINT [Estatus_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estudiante]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Estudiante](
	[Matricula] [int] NOT NULL,
	[Nombre] [varchar](70) NOT NULL,
	[Apellido_Paterno] [varchar](40) NOT NULL,
	[Apellido_Materno] [varchar](40) NULL,
	[Correo] [varchar](100) NOT NULL,
	[Fecha_ingreso] [date] NOT NULL,
	[Calle] [varchar](100) NOT NULL,
	[Numero] [int] NOT NULL,
	[Colonia] [varchar](100) NOT NULL,
	[Fecha_nacimiento] [date] NOT NULL,
	[Estatus_ID] [int] NOT NULL,
 CONSTRAINT [Estudiante_pk] PRIMARY KEY CLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Grupo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Grupo](
	[Calificacion] [numeric](4, 2) NULL,
	[Curso_Clave] [int] NOT NULL,
	[Estudiante_Matricula] [int] NOT NULL,
 CONSTRAINT [Grupo_pk] PRIMARY KEY CLUSTERED 
(
	[Curso_Clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Horario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Horario](
	[Clave] [int] NOT NULL,
	[Hora_inicio] [time](7) NOT NULL,
	[Hora_fin] [time](7) NOT NULL,
	[Dia] [varchar](15) NOT NULL,
 CONSTRAINT [Horario_pk] PRIMARY KEY CLUSTERED 
(
	[Clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inscripcion]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inscripcion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Inscripcion](
	[Candidato_ID] [int] NOT NULL,
	[ID] [int] NOT NULL,
 CONSTRAINT [Inscripcion_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Materia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Materia](
	[Clave] [int] NOT NULL,
	[Hora_semanal] [smallint] NOT NULL,
	[Semestre] [smallint] NOT NULL,
	[Creditos] [smallint] NOT NULL,
	[Area_ID] [int] NOT NULL,
 CONSTRAINT [Materia_pk] PRIMARY KEY CLUSTERED 
(
	[Clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pagos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pagos](
	[Inscripcion_ID] [int] NOT NULL,
	[ID] [int] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[Tipo_pago_Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [Pagos_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Profesor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Profesor](
	[Estatus_ID] [int] NOT NULL,
	[Area_ID] [int] NOT NULL,
	[Empleado_No_empleado] [int] NOT NULL,
	[Titulo] [varchar](100) NOT NULL,
 CONSTRAINT [Profesor_pk] PRIMARY KEY CLUSTERED 
(
	[Empleado_No_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Telefono_empleado]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Telefono_empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Telefono_empleado](
	[Numero] [int] NOT NULL,
	[Empleado_No_empleado] [int] NOT NULL,
	[Tipo] [varchar](20) NOT NULL,
 CONSTRAINT [Telefono_empleado_pk] PRIMARY KEY CLUSTERED 
(
	[Numero] ASC,
	[Empleado_No_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Telefono_estudiante]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Telefono_estudiante]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Telefono_estudiante](
	[Numero] [int] NOT NULL,
	[Estudiante_Matricula] [int] NOT NULL,
	[Tipo] [varchar](20) NOT NULL,
 CONSTRAINT [Telefono_estudiante_pk] PRIMARY KEY CLUSTERED 
(
	[Numero] ASC,
	[Estudiante_Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo_pago]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_pago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tipo_pago](
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](150) NOT NULL,
 CONSTRAINT [Tipo_pago_pk] PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[AulasCapacidadProm]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[AulasCapacidadProm]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[AulasCapacidadProm] AS
Select AVG (Capacidad) AS Promedio
From Aula' 
GO
/****** Object:  View [dbo].[AulasChicas]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[AulasChicas]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[AulasChicas] AS
Select Numero, Tipo
From Aula
Where Tipo = ''Chico''' 
GO
/****** Object:  View [dbo].[ColoniaEstudiantes]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ColoniaEstudiantes]'))
EXEC dbo.sp_executesql @statement = N'Create view [dbo].[ColoniaEstudiantes] AS
Select Matricula, Nombre, Apellido_Paterno, Apellido_Materno, Colonia
From Estudiante' 
GO
/****** Object:  View [dbo].[EstudiantesAceptados]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[EstudiantesAceptados]'))
EXEC dbo.sp_executesql @statement = N'Create view [dbo].[EstudiantesAceptados] AS
Select Estatus.ID, Estatus.Descripcion, Estudiante.Matricula, Estudiante.Nombre
From Estatus inner join Estudiante ON Estatus.ID = Estudiante.Estatus_ID
Where Estatus.Nombre = ''Aceptado''' 
GO
/****** Object:  View [dbo].[Matematica]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Matematica]'))
EXEC dbo.sp_executesql @statement = N'Create view [dbo].[Matematica] AS
Select Nombre, Descripcion
From Area
Where Nombre = ''Matemáticas''' 
GO
/****** Object:  View [dbo].[UltimosAlumnosReg]    Script Date: 04/11/2017 12:21:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[UltimosAlumnosReg]'))
EXEC dbo.sp_executesql @statement = N'Create view [dbo].[UltimosAlumnosReg] AS
Select Matricula, Nombre, Apellido_Paterno, Apellido_Materno
From Estudiante
Where Matricula >=15090' 
GO
INSERT [dbo].[Area] ([ID], [Nombre], [Descripcion]) VALUES (1122334, N'Historia', N'Encargados de impartir cualquier materia historica')
INSERT [dbo].[Area] ([ID], [Nombre], [Descripcion]) VALUES (1234123, N'Ciencias', N'Encargados de impartir cualquiera de las ciencias')
INSERT [dbo].[Area] ([ID], [Nombre], [Descripcion]) VALUES (1234567, N'Matemáticas', N'Encargados de impartir cualquier materia matemática')
INSERT [dbo].[Aula] ([Numero], [Capacidad], [Tipo]) VALUES (91, 38, N'Grande')
INSERT [dbo].[Aula] ([Numero], [Capacidad], [Tipo]) VALUES (92, 35, N'Grande')
INSERT [dbo].[Aula] ([Numero], [Capacidad], [Tipo]) VALUES (93, 30, N'Chico')
INSERT [dbo].[Aula] ([Numero], [Capacidad], [Tipo]) VALUES (94, 38, N'Grande')
INSERT [dbo].[Aula] ([Numero], [Capacidad], [Tipo]) VALUES (95, 38, N'Grande')
INSERT [dbo].[Aula] ([Numero], [Capacidad], [Tipo]) VALUES (96, 38, N'Grande')
INSERT [dbo].[Aula] ([Numero], [Capacidad], [Tipo]) VALUES (97, 40, N'Grande')
INSERT [dbo].[Aula] ([Numero], [Capacidad], [Tipo]) VALUES (98, 32, N'Chico')
INSERT [dbo].[Aula] ([Numero], [Capacidad], [Tipo]) VALUES (99, 32, N'Chico')
INSERT [dbo].[Aula] ([Numero], [Capacidad], [Tipo]) VALUES (100, 33, N'Chico')
INSERT [dbo].[Aula] ([Numero], [Capacidad], [Tipo]) VALUES (201, 40, N'Salón de Clases')
INSERT [dbo].[Aula] ([Numero], [Capacidad], [Tipo]) VALUES (301, 20, N'Laboratorio')
INSERT [dbo].[Aula] ([Numero], [Capacidad], [Tipo]) VALUES (401, 50, N'Salón de Clases')
INSERT [dbo].[Cuenta_profesor] ([contrasena], [Profesor_Empleado_No_empleado]) VALUES (N'ProfeHistoria', 1633212)
INSERT [dbo].[Cuenta_profesor] ([contrasena], [Profesor_Empleado_No_empleado]) VALUES (N'ProfeMatematicas', 1575621)
INSERT [dbo].[Cuenta_profesor] ([contrasena], [Profesor_Empleado_No_empleado]) VALUES (N'ProfesorDeCienciasNaturales', 1721333)
INSERT [dbo].[Empleado] ([No_empleado], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento]) VALUES (1575621, N'John', N'Garza', N'García', CAST(0xB33B0B00 AS Date), N'Riveras del Rio', 3523, N'Los Fierros', CAST(0x9BFA0A00 AS Date))
INSERT [dbo].[Empleado] ([No_empleado], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento]) VALUES (1633212, N'José', N'Ramírez', N'López', CAST(0xB33B0B00 AS Date), N'Rincón de la Sierra', 3975, N'Santa María', CAST(0x6B0F0B00 AS Date))
INSERT [dbo].[Empleado] ([No_empleado], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento]) VALUES (1721333, N'Pedro', N'Rodríguez', N'Torres', CAST(0xB33B0B00 AS Date), N'Rosales', 1055, N'ExHacienda', CAST(0x0F080B00 AS Date))
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1000, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1001, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1002, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1003, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1004, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1005, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1006, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1007, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1008, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1009, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1010, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1011, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1012, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1013, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1014, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1015, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1016, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1017, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1018, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1019, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1020, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1021, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1022, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1023, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1024, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1025, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1026, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1027, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1028, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1029, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1030, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1031, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1032, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1033, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1034, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1035, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1036, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1037, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1038, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1039, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1040, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1041, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1042, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1043, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1044, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1045, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1046, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1047, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1048, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1049, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1050, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1051, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1052, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1053, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1054, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1055, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1056, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1057, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1058, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1059, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1060, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1061, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1062, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1063, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1064, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1065, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1066, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1067, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1068, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1069, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1070, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1071, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1072, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1073, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1074, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1075, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1076, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1077, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1078, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1079, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1080, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1081, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1082, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1083, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1084, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1085, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1086, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1087, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1088, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1089, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1090, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1091, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1092, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1093, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1094, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1095, N'Rechazado', N'Su estatus es Rechazado', N'Rechazado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1096, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1097, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1098, N'Pendiente', N'Su estatus esta Pendiente', N'Pendiente')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1099, N'Aceptado', N'Su estatus es Aceptado', N'Finalizado')
GO
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1555555, N'Aceptado', N'El estatus del usuario es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1689884, N'Aceptado', N'El estatus del usuario es Aceptado', N'Finalizado')
INSERT [dbo].[Estatus] ([ID], [Nombre], [Descripcion], [Tipo]) VALUES (1987654, N'Aceptado', N'El estatus del usuario es Aceptado', N'Finalizado')
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15000, N'Maia', N'Decker', N'Buck', N'nunc.ullamcorper@nequeSed.com', CAST(0x9F3D0B00 AS Date), N'Ap #340-4831 Feugiat Road', 9441, N'Knokke', CAST(0xCB3D0B00 AS Date), 1000)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15001, N'Blaze', N'Singleton', N'Hyde', N'mauris@Nunc.edu', CAST(0xAD3C0B00 AS Date), N'Ap #599-7773 Rhoncus. Road', 7321, N'Saint-Marc', CAST(0xBC3D0B00 AS Date), 1001)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15002, N'Shad', N'Herrera', N'Salas', N'Aenean@Proinvelarcu.co.uk', CAST(0x5B3E0B00 AS Date), N'580-5690 Metus. Rd.', 9146, N'San Miguel', CAST(0xB33E0B00 AS Date), 1002)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15003, N'Wing', N'Reyes', N'Welch', N'consequat@vulputatemaurissagittis.net', CAST(0x513C0B00 AS Date), N'Ap #138-5799 Fermentum Av.', 9498, N'Fayetteville', CAST(0x973C0B00 AS Date), 1003)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15004, N'Maya', N'Frank', N'Luna', N'tincidunt.adipiscing.Mauris@justonecante.ca', CAST(0x983E0B00 AS Date), N'637-1199 Luctus. Rd.', 7762, N'Salem', CAST(0xE93D0B00 AS Date), 1004)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15005, N'Dante', N'Irwin', N'Trevino', N'Nunc.commodo.auctor@volutpatNulladignissim.ca', CAST(0xA53E0B00 AS Date), N'P.O. Box 916, 7950 Sit St.', 5923, N'Jhelum', CAST(0xB33C0B00 AS Date), 1005)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15006, N'Castor', N'Wagner', N'Wolf', N'nibh@nibh.edu', CAST(0x0F3E0B00 AS Date), N'9474 Molestie St.', 6306, N'Brye', CAST(0x733C0B00 AS Date), 1006)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15007, N'Fleur', N'Hobbs', N'Baldwin', N'Quisque.porttitor@dignissim.edu', CAST(0x4E3C0B00 AS Date), N'530 Ligula. Street', 6376, N'San Jose', CAST(0x263E0B00 AS Date), 1007)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15008, N'Rhonda', N'Foley', N'Ramsey', N'augue.scelerisque@eratvolutpat.ca', CAST(0x8C3C0B00 AS Date), N'Ap #737-8322 Natoque Rd.', 8608, N'Sint-Lambrechts-Woluwe', CAST(0x5F3E0B00 AS Date), 1008)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15009, N'Simon', N'Rivers', N'Jacobson', N'vel.nisl.Quisque@hendrerit.co.uk', CAST(0xB13C0B00 AS Date), N'Ap #524-5118 Curabitur Rd.', 6043, N'Knokke-Heist', CAST(0x9D3E0B00 AS Date), 1009)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15010, N'Pamela', N'Townsend', N'Phelps', N'convallis@felisDonectempor.edu', CAST(0xA33C0B00 AS Date), N'704 Sed Avenue', 6681, N'Wabamun', CAST(0x453C0B00 AS Date), 1010)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15011, N'Amir', N'Jones', N'Holt', N'rutrum@liberoProin.org', CAST(0x7B3D0B00 AS Date), N'Ap #746-9436 Habitant Av.', 5543, N'Saint-Laurent', CAST(0xDE3C0B00 AS Date), 1011)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15012, N'Fletcher', N'Mendoza', N'Willis', N'pede.Nunc.sed@malesuadautsem.edu', CAST(0xCC3E0B00 AS Date), N'P.O. Box 417, 1679 Dignissim St.', 8360, N'Cinco Esquinas', CAST(0x6B3D0B00 AS Date), 1012)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15013, N'Janna', N'Kirkland', N'Holmes', N'quis.pede.Praesent@pede.ca', CAST(0x3A3E0B00 AS Date), N'2278 Ultrices Ave', 8172, N'Salem', CAST(0x203D0B00 AS Date), 1013)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15014, N'Zeph', N'Richards', N'Grant', N'libero@velitAliquam.com', CAST(0x683E0B00 AS Date), N'393-2187 Vivamus Avenue', 8918, N'Stoke-on-Trent', CAST(0x213D0B00 AS Date), 1014)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15015, N'Nasim', N'English', N'Wolfe', N'aliquam.eu@arcuCurabitur.co.uk', CAST(0xCC3C0B00 AS Date), N'Ap #957-8615 Justo. Av.', 7283, N'Huntley', CAST(0x453D0B00 AS Date), 1015)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15016, N'Anika', N'Stephenson', N'Riddle', N'dolor.sit.amet@vel.com', CAST(0xB33E0B00 AS Date), N'526-5320 Non Av.', 9127, N'Caccamo', CAST(0x883D0B00 AS Date), 1016)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15017, N'Nasim', N'Meadows', N'Sykes', N'ligula.Aliquam.erat@luctusvulputatenisi.ca', CAST(0xAB3C0B00 AS Date), N'P.O. Box 429, 7426 Risus. Street', 7391, N'East Linton', CAST(0x243E0B00 AS Date), 1017)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15018, N'Phelan', N'Boyd', N'Burris', N'penatibus@mauriselitdictum.net', CAST(0x123C0B00 AS Date), N'153 A Road', 8559, N'Mauá', CAST(0xF23D0B00 AS Date), 1018)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15019, N'Reece', N'Ramos', N'Peck', N'vitae.mauris@ultricesVivamus.org', CAST(0x663E0B00 AS Date), N'Ap #444-9581 Nulla. Rd.', 8682, N'Corvino San Quirico', CAST(0xB43C0B00 AS Date), 1019)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15020, N'Garrett', N'Wall', N'Padilla', N'fermentum.vel.mauris@Nullamenim.com', CAST(0xD13C0B00 AS Date), N'Ap #236-7414 Fringilla. St.', 8845, N'Waterbury', CAST(0x903E0B00 AS Date), 1020)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15021, N'Reed', N'Avila', N'Nash', N'malesuada.vel.venenatis@metusIn.net', CAST(0xFC3C0B00 AS Date), N'418-1048 Bibendum Street', 7998, N'Narcao', CAST(0x0B3E0B00 AS Date), 1021)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15022, N'Zorita', N'Walton', N'Poole', N'Proin.eget@dolortempus.org', CAST(0x6B3E0B00 AS Date), N'650-8005 Enim, Street', 9448, N'Ulhasnagar', CAST(0x2C3C0B00 AS Date), 1022)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15023, N'Octavius', N'Walters', N'Nielsen', N'sagittis@odioEtiamligula.org', CAST(0xB23E0B00 AS Date), N'Ap #565-1270 Quam Avenue', 6126, N'Pellizzano', CAST(0x173E0B00 AS Date), 1023)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15024, N'Deacon', N'Schneider', N'Mayer', N'convallis@nequetellus.edu', CAST(0x113E0B00 AS Date), N'Ap #489-923 Cras St.', 7518, N'Augusta', CAST(0x933C0B00 AS Date), 1024)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15025, N'Claire', N'Barker', N'Robles', N'ornare.lectus@Pellentesque.com', CAST(0x213C0B00 AS Date), N'294-375 Mollis. Road', 7884, N'Montreuil', CAST(0x223E0B00 AS Date), 1025)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15026, N'Anne', N'Ware', N'Weeks', N'ultricies.ligula.Nullam@pharetraut.co.uk', CAST(0xB23E0B00 AS Date), N'4128 Integer Rd.', 6284, N'Turrialba', CAST(0x313D0B00 AS Date), 1026)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15027, N'Christen', N'Abbott', N'Weeks', N'mattis@molestiedapibusligula.ca', CAST(0x193C0B00 AS Date), N'P.O. Box 513, 1138 Justo Rd.', 9247, N'Toulon', CAST(0x893E0B00 AS Date), 1027)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15028, N'Hope', N'Knapp', N'Williamson', N'tincidunt.congue@Curabiturvel.org', CAST(0x483D0B00 AS Date), N'Ap #264-8369 Augue, St.', 9315, N'Gualdo Tadino', CAST(0x413E0B00 AS Date), 1028)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15029, N'Breanna', N'Slater', N'Bradshaw', N'in.dolor@lectus.org', CAST(0x9B3C0B00 AS Date), N'302-1095 Fusce St.', 6801, N'Rocky Mountain House', CAST(0x513C0B00 AS Date), 1029)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15030, N'Regina', N'Pratt', N'Daniel', N'nulla@loremluctus.org', CAST(0x313E0B00 AS Date), N'4163 Neque Street', 7370, N'Governador Valadares', CAST(0xD33C0B00 AS Date), 1030)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15031, N'Grant', N'Day', N'Weaver', N'enim.diam.vel@Integertincidunt.edu', CAST(0xAC3D0B00 AS Date), N'Ap #809-9400 Scelerisque Rd.', 8102, N'Saint-Rhémy-en-Bosses', CAST(0xBF3D0B00 AS Date), 1031)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15032, N'Breanna', N'Meadows', N'Chaney', N'ac.arcu@diamlorem.ca', CAST(0xCF3E0B00 AS Date), N'Ap #991-2106 Eros St.', 8704, N'Montebelluna', CAST(0x7F3C0B00 AS Date), 1032)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15033, N'Clayton', N'Berg', N'Shields', N'interdum.Curabitur@facilisisnonbibendum.co.uk', CAST(0xA63E0B00 AS Date), N'555-8430 Proin Avenue', 9129, N'Girifalco', CAST(0x683D0B00 AS Date), 1033)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15034, N'Kelsie', N'Chan', N'Chandler', N'non.quam@Crasinterdum.edu', CAST(0x6F3D0B00 AS Date), N'4476 At Ave', 6972, N'Stevenage', CAST(0x443E0B00 AS Date), 1034)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15035, N'Scarlet', N'Lee', N'Kim', N'est.mauris.rhoncus@dis.ca', CAST(0xB43D0B00 AS Date), N'Ap #342-8003 Sodales. Av.', 8600, N'Malegaon', CAST(0xDD3E0B00 AS Date), 1035)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15036, N'Zachary', N'Evans', N'Wyatt', N'at.augue@tellusimperdiet.org', CAST(0x3C3C0B00 AS Date), N'Ap #530-5878 Ullamcorper, St.', 5944, N'Carapicuíba', CAST(0x6B3D0B00 AS Date), 1036)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15037, N'Rhiannon', N'Thompson', N'Carson', N'Fusce.mollis.Duis@lacus.com', CAST(0x453C0B00 AS Date), N'2714 Aptent Rd.', 6309, N'Cunco', CAST(0x903D0B00 AS Date), 1037)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15038, N'Kuame', N'Holcomb', N'Mcguire', N'a@vulputateposuere.org', CAST(0xD43D0B00 AS Date), N'509-3206 Massa Rd.', 5848, N'Warri', CAST(0x483D0B00 AS Date), 1038)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15039, N'Beatrice', N'Massey', N'Kim', N'Quisque.tincidunt.pede@purusNullamscelerisque.com', CAST(0xD43E0B00 AS Date), N'236-9160 Pharetra St.', 6576, N'Talgarth', CAST(0x6D3E0B00 AS Date), 1039)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15040, N'Lacey', N'Gill', N'Mccall', N'dictum@necurnasuscipit.com', CAST(0xAE3D0B00 AS Date), N'Ap #264-6632 Sem, Road', 9078, N'Little Rock', CAST(0x163C0B00 AS Date), 1040)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15041, N'Dieter', N'Blankenship', N'Blevins', N'sagittis.augue.eu@felisNullatempor.net', CAST(0x953C0B00 AS Date), N'Ap #803-3859 Nullam St.', 7299, N'Melbourne', CAST(0x143E0B00 AS Date), 1041)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15042, N'Liberty', N'Hansen', N'Chapman', N'orci.Ut@Uttinciduntvehicula.edu', CAST(0xC63C0B00 AS Date), N'Ap #344-9522 Vulputate Avenue', 5389, N'Newark', CAST(0x003E0B00 AS Date), 1042)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15043, N'Ariana', N'Mullen', N'Mcdonald', N'eleifend.egestas.Sed@accumsan.co.uk', CAST(0x3B3D0B00 AS Date), N'P.O. Box 768, 4970 Lorem Av.', 5953, N'Sandy', CAST(0xEC3C0B00 AS Date), 1043)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15044, N'Kevyn', N'Flores', N'Kim', N'mollis.vitae@erosnec.co.uk', CAST(0xAA3D0B00 AS Date), N'P.O. Box 265, 5796 Egestas. St.', 7053, N'Silverton', CAST(0x353E0B00 AS Date), 1044)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15045, N'Ainsley', N'Johns', N'Powers', N'aliquam.iaculis@ultriciesornare.com', CAST(0xB63C0B00 AS Date), N'904-2461 Diam Ave', 9510, N'Los Angeles', CAST(0x7A3C0B00 AS Date), 1045)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15046, N'Uta', N'Harrington', N'Ryan', N'imperdiet@velturpis.ca', CAST(0x9C3C0B00 AS Date), N'680-2703 Lorem Avenue', 8776, N'Silifke', CAST(0x583E0B00 AS Date), 1046)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15047, N'Violet', N'Bowers', N'Rush', N'aliquam.adipiscing@vestibulumneque.edu', CAST(0x3F3E0B00 AS Date), N'362-8150 Lorem, Av.', 9448, N'Roio del Sangro', CAST(0x9F3D0B00 AS Date), 1047)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15048, N'Austin', N'Bond', N'Zamora', N'hendrerit@mattisvelitjusto.org', CAST(0x9A3C0B00 AS Date), N'588-8234 Aliquet Avenue', 8836, N'Fort Laird', CAST(0x863D0B00 AS Date), 1048)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15049, N'Rae', N'Noel', N'Doyle', N'Praesent.eu@afelisullamcorper.edu', CAST(0x353E0B00 AS Date), N'Ap #561-5996 Mollis. Ave', 6079, N'Szczecin', CAST(0xA03E0B00 AS Date), 1049)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15050, N'Alfonso', N'Cobb', N'Bryan', N'risus.Donec.egestas@nisi.edu', CAST(0xE93C0B00 AS Date), N'Ap #405-6279 Eu Rd.', 5357, N'Casnate con Bernate', CAST(0x5F3E0B00 AS Date), 1050)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15051, N'Dalton', N'Atkinson', N'Gross', N'arcu.eu@auctornunc.edu', CAST(0x8E3D0B00 AS Date), N'570-4577 Faucibus. Av.', 5758, N'Beverlo', CAST(0x363D0B00 AS Date), 1051)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15052, N'Ulysses', N'Munoz', N'Mathis', N'nec@Phasellusdapibusquam.edu', CAST(0xBB3C0B00 AS Date), N'533-9396 Ut, St.', 8471, N'Perk', CAST(0xEC3D0B00 AS Date), 1052)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15053, N'Aurora', N'Ellison', N'Saunders', N'luctus.et@pellentesque.net', CAST(0xB63E0B00 AS Date), N'8403 Eget St.', 6449, N'Wichelen', CAST(0x143D0B00 AS Date), 1053)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15054, N'Griffith', N'Mullins', N'Gill', N'Quisque.fringilla@interdum.com', CAST(0xE03C0B00 AS Date), N'P.O. Box 531, 1919 Dui. Rd.', 6092, N'Haddington', CAST(0xE63D0B00 AS Date), 1054)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15055, N'Quail', N'Quinn', N'Tyler', N'luctus@vitae.ca', CAST(0x9B3E0B00 AS Date), N'P.O. Box 469, 104 Curae; Ave', 8574, N'Golspie', CAST(0x333C0B00 AS Date), 1055)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15056, N'Yasir', N'Baxter', N'Noble', N'dui@lectus.com', CAST(0x0B3D0B00 AS Date), N'803-3880 Amet, St.', 9548, N'Glendon', CAST(0xC43C0B00 AS Date), 1056)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15057, N'Jaquelyn', N'Cherry', N'Ball', N'libero.nec.ligula@risus.co.uk', CAST(0x713E0B00 AS Date), N'7689 Leo, Rd.', 8593, N'Dunoon', CAST(0xC33D0B00 AS Date), 1057)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15058, N'Charlotte', N'Fry', N'Little', N'blandit.at@maurisrhoncus.ca', CAST(0x8A3C0B00 AS Date), N'Ap #720-9764 Cursus Road', 5932, N'Courbevoie', CAST(0x883D0B00 AS Date), 1058)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15059, N'Xander', N'Bright', N'Moran', N'eu.placerat@vulputate.co.uk', CAST(0x623D0B00 AS Date), N'493-5406 Ac Street', 6706, N'Baasrode', CAST(0xD23D0B00 AS Date), 1059)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15060, N'Idona', N'Taylor', N'Molina', N'Proin.vel@disparturient.net', CAST(0x1E3D0B00 AS Date), N'5479 Iaculis Rd.', 8134, N'Serrata', CAST(0x173D0B00 AS Date), 1060)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15061, N'Bruno', N'Frazier', N'Bartlett', N'neque@sem.net', CAST(0x633C0B00 AS Date), N'150 Metus Avenue', 6632, N'Portsmouth', CAST(0x143D0B00 AS Date), 1061)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15062, N'Jerry', N'Baxter', N'Singleton', N'non@interdumlibero.edu', CAST(0x943E0B00 AS Date), N'469-2451 Molestie Avenue', 6545, N'Tiegem', CAST(0x8F3C0B00 AS Date), 1062)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15063, N'Christen', N'Potter', N'Webster', N'Nunc.quis@iaculis.ca', CAST(0x143E0B00 AS Date), N'700-1542 Interdum Rd.', 6210, N'Anjou', CAST(0x5B3D0B00 AS Date), 1063)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15064, N'Shelby', N'Brady', N'Baird', N'faucibus.orci.luctus@eratvolutpatNulla.co.uk', CAST(0x863D0B00 AS Date), N'P.O. Box 102, 3427 Nibh. Ave', 7017, N'Amelia', CAST(0x873C0B00 AS Date), 1064)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15065, N'Idona', N'Valdez', N'Vang', N'egestas.Aliquam.fringilla@est.com', CAST(0xF23D0B00 AS Date), N'564-7896 Luctus St.', 8435, N'Antwerpen', CAST(0x2B3D0B00 AS Date), 1065)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15066, N'Lawrence', N'Brock', N'Bonner', N'ac.tellus.Suspendisse@auctorveliteget.co.uk', CAST(0x413C0B00 AS Date), N'Ap #494-4018 Orci, St.', 7500, N'Rupelmonde', CAST(0x5E3E0B00 AS Date), 1066)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15067, N'Maisie', N'Sweet', N'Fowler', N'feugiat@non.ca', CAST(0x553E0B00 AS Date), N'617-9312 Fusce Rd.', 5792, N'Aix-en-Provence', CAST(0x8F3E0B00 AS Date), 1067)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15068, N'Dillon', N'Morgan', N'Ballard', N'fringilla.Donec.feugiat@scelerisque.edu', CAST(0x983E0B00 AS Date), N'797-3446 Ridiculus Road', 8233, N'Molina', CAST(0x4C3C0B00 AS Date), 1068)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15069, N'Fay', N'Frederick', N'Cotton', N'lectus@Phasellusnulla.edu', CAST(0xFF3D0B00 AS Date), N'Ap #154-1065 Turpis. Av.', 6140, N'Castel Maggiore', CAST(0x8A3C0B00 AS Date), 1069)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15070, N'Odette', N'Clements', N'Baker', N'erat.vel@aenimSuspendisse.org', CAST(0x623C0B00 AS Date), N'Ap #175-4432 Molestie Avenue', 8579, N'Buckley', CAST(0x703D0B00 AS Date), 1070)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15071, N'Illiana', N'Donaldson', N'Cole', N'In.mi.pede@turpisnon.org', CAST(0x423D0B00 AS Date), N'309-6028 Adipiscing, Avenue', 9506, N'Strijtem', CAST(0xB63E0B00 AS Date), 1071)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15072, N'Axel', N'Casey', N'Grimes', N'hendrerit.consectetuer@metus.ca', CAST(0x343E0B00 AS Date), N'Ap #852-2261 Malesuada Street', 8074, N'Warisoulx', CAST(0x2B3E0B00 AS Date), 1072)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15073, N'Nathaniel', N'Calderon', N'Edwards', N'orci@nec.net', CAST(0x6A3D0B00 AS Date), N'P.O. Box 455, 2795 Nisl St.', 6508, N'Hanau', CAST(0xD73D0B00 AS Date), 1073)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15074, N'Basil', N'Knight', N'Shannon', N'Vestibulum@congue.edu', CAST(0xD73D0B00 AS Date), N'5494 Tincidunt Av.', 6822, N'Görlitz', CAST(0x8D3D0B00 AS Date), 1074)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15075, N'Cora', N'Calhoun', N'Sexton', N'justo.sit@aliquetmolestie.com', CAST(0x273E0B00 AS Date), N'Ap #224-1772 Massa. Rd.', 7678, N'Casanova Elvo', CAST(0x6E3D0B00 AS Date), 1075)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15076, N'Jenette', N'Stokes', N'Eaton', N'erat.eget.tincidunt@mauris.com', CAST(0x873E0B00 AS Date), N'2357 Eget Ave', 8511, N'Pietragalla', CAST(0x0D3E0B00 AS Date), 1076)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15077, N'Cadman', N'Cortez', N'Rice', N'nunc@fermentumfermentum.edu', CAST(0xDE3C0B00 AS Date), N'5599 Et St.', 7015, N'Schwalbach', CAST(0x683D0B00 AS Date), 1077)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15078, N'Ali', N'Hodge', N'Stevens', N'eu@sollicitudinorci.net', CAST(0x8C3C0B00 AS Date), N'Ap #953-5479 Egestas Rd.', 6889, N'Klagenfurt', CAST(0x003E0B00 AS Date), 1078)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15079, N'Rhiannon', N'Lawson', N'Flowers', N'non.feugiat.nec@magna.ca', CAST(0x403E0B00 AS Date), N'389-8105 Felis Avenue', 6804, N'Chiavari', CAST(0xBD3C0B00 AS Date), 1079)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15080, N'Jordan', N'Flynn', N'Finley', N'mauris.ipsum@Crasconvallis.edu', CAST(0xB33C0B00 AS Date), N'P.O. Box 995, 1838 Nunc Avenue', 8020, N'Avelgem', CAST(0xBE3C0B00 AS Date), 1080)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15081, N'Tamekah', N'Joseph', N'English', N'libero.Morbi@pedeac.org', CAST(0xDE3C0B00 AS Date), N'8890 Cras Road', 8816, N'Wetaskiwin', CAST(0x8A3C0B00 AS Date), 1081)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15082, N'Amir', N'Harmon', N'Hood', N'Nullam@nibhvulputate.org', CAST(0xAC3D0B00 AS Date), N'Ap #576-568 Magna. Avenue', 8931, N'Warszawa', CAST(0x803D0B00 AS Date), 1082)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15083, N'Connor', N'Giles', N'Luna', N'libero.Donec.consectetuer@Maecenasmi.net', CAST(0xD53C0B00 AS Date), N'P.O. Box 713, 3680 Dignissim Road', 7232, N'Orlando', CAST(0x2D3E0B00 AS Date), 1083)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15084, N'Price', N'Acevedo', N'Ferrell', N'libero@ultricessit.ca', CAST(0x2B3C0B00 AS Date), N'Ap #626-2128 Nunc St.', 8737, N'Sherbrooke', CAST(0x233D0B00 AS Date), 1084)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15085, N'Brian', N'Hardy', N'Lester', N'nulla.at@erateget.co.uk', CAST(0x773D0B00 AS Date), N'Ap #300-4522 Integer Ave', 7096, N'Cittanova', CAST(0x843E0B00 AS Date), 1085)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15086, N'Dorothy', N'Wong', N'Rose', N'orci@Donecvitaeerat.com', CAST(0xA33D0B00 AS Date), N'Ap #249-9838 Lobortis Road', 9388, N'Ratlam', CAST(0xB13D0B00 AS Date), 1086)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15087, N'Hakeem', N'Wolfe', N'Castillo', N'Class@Integer.edu', CAST(0x5C3D0B00 AS Date), N'8456 Ligula St.', 6770, N'Colli a Volturno', CAST(0xC63E0B00 AS Date), 1087)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15088, N'Doris', N'Noel', N'Knowles', N'id.sapien.Cras@nulla.org', CAST(0x5C3E0B00 AS Date), N'106-6277 Libero Street', 6805, N'Telford', CAST(0x883E0B00 AS Date), 1088)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15089, N'Caleb', N'Maxwell', N'Mcgowan', N'sollicitudin@diamvel.org', CAST(0xDC3E0B00 AS Date), N'1377 Dignissim Ave', 9519, N'Ruddervoorde', CAST(0xBD3C0B00 AS Date), 1089)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15090, N'Oliver', N'Vega', N'Ratliff', N'eleifend@Aliquamadipiscinglobortis.com', CAST(0x773C0B00 AS Date), N'3393 Vulputate, Rd.', 7425, N'Mondolfo', CAST(0x203E0B00 AS Date), 1090)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15091, N'Yen', N'Stevenson', N'Hahn', N'Donec.non@etnetuset.co.uk', CAST(0x723C0B00 AS Date), N'832-3986 Feugiat St.', 5790, N'Preore', CAST(0x6F3E0B00 AS Date), 1091)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15092, N'Quynn', N'Burns', N'Flowers', N'Nam.nulla.magna@mauris.ca', CAST(0xB23C0B00 AS Date), N'Ap #226-7818 Risus St.', 5843, N'Straubing', CAST(0x923C0B00 AS Date), 1092)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15093, N'Abigail', N'Cruz', N'Bray', N'lorem@tincidunt.org', CAST(0x723D0B00 AS Date), N'130 Tincidunt Rd.', 6621, N'Keumiee', CAST(0xE53C0B00 AS Date), 1093)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15094, N'Walter', N'Richmond', N'Cunningham', N'dignissim.lacus@velvulputateeu.net', CAST(0xEB3D0B00 AS Date), N'Ap #155-2860 Nec Road', 7962, N'Pettineo', CAST(0x423E0B00 AS Date), 1094)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15095, N'Marah', N'Day', N'Blankenship', N'Sed.dictum@feugiat.co.uk', CAST(0x783D0B00 AS Date), N'Ap #288-8310 Sagittis Street', 8664, N'Nellore', CAST(0x4C3E0B00 AS Date), 1095)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15096, N'Zenaida', N'Joseph', N'Mathews', N'orci.consectetuer.euismod@risusquisdiam.co.uk', CAST(0x423E0B00 AS Date), N'Ap #933-835 Mauris St.', 6467, N'Prince George', CAST(0xD03E0B00 AS Date), 1096)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15097, N'Hamilton', N'Haynes', N'Klein', N'ac@non.co.uk', CAST(0xEE3C0B00 AS Date), N'138-2529 Congue Rd.', 6610, N'Sambreville', CAST(0x273D0B00 AS Date), 1097)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15098, N'Rana', N'Burnett', N'Meyers', N'consequat.purus@orci.edu', CAST(0x493D0B00 AS Date), N'172-7736 Est, Road', 6684, N'Zandhoven', CAST(0xF63D0B00 AS Date), 1098)
INSERT [dbo].[Estudiante] ([Matricula], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Correo], [Fecha_ingreso], [Calle], [Numero], [Colonia], [Fecha_nacimiento], [Estatus_ID]) VALUES (15099, N'Nomlanga', N'Sexton', N'Bowen', N'Ut.semper@vulputateeu.org', CAST(0x563C0B00 AS Date), N'8540 Euismod Av.', 7378, N'Sinaai-Waas', CAST(0x093C0B00 AS Date), 1099)
GO
INSERT [dbo].[Materia] ([Clave], [Hora_semanal], [Semestre], [Creditos], [Area_ID]) VALUES (22, 5, 2, 8, 1234567)
INSERT [dbo].[Materia] ([Clave], [Hora_semanal], [Semestre], [Creditos], [Area_ID]) VALUES (32, 3, 2, 5, 1122334)
INSERT [dbo].[Materia] ([Clave], [Hora_semanal], [Semestre], [Creditos], [Area_ID]) VALUES (42, 3, 3, 3, 1234123)
INSERT [dbo].[Profesor] ([Estatus_ID], [Area_ID], [Empleado_No_empleado], [Titulo]) VALUES (1555555, 1234567, 1575621, N'Licenciado en Matemáticas')
INSERT [dbo].[Profesor] ([Estatus_ID], [Area_ID], [Empleado_No_empleado], [Titulo]) VALUES (1689884, 1122334, 1633212, N'Licenciado en Educación Primaria')
INSERT [dbo].[Profesor] ([Estatus_ID], [Area_ID], [Empleado_No_empleado], [Titulo]) VALUES (1987654, 1234123, 1721333, N'Licenciado en Biología')
INSERT [dbo].[Telefono_empleado] ([Numero], [Empleado_No_empleado], [Tipo]) VALUES (10927654, 1633212, N'Domicilio')
INSERT [dbo].[Telefono_empleado] ([Numero], [Empleado_No_empleado], [Tipo]) VALUES (81123444, 1721333, N'Celular')
INSERT [dbo].[Telefono_empleado] ([Numero], [Empleado_No_empleado], [Tipo]) VALUES (81123456, 1721333, N'Celular')
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Candidato_Estatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Candidato]'))
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [Candidato_Estatus] FOREIGN KEY([Estatus_ID])
REFERENCES [dbo].[Estatus] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Candidato_Estatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Candidato]'))
ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [Candidato_Estatus]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Cuenta_Estudiante_Estudiante]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cuenta_Estudiante]'))
ALTER TABLE [dbo].[Cuenta_Estudiante]  WITH CHECK ADD  CONSTRAINT [Cuenta_Estudiante_Estudiante] FOREIGN KEY([Estudiante_Matricula])
REFERENCES [dbo].[Estudiante] ([Matricula])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Cuenta_Estudiante_Estudiante]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cuenta_Estudiante]'))
ALTER TABLE [dbo].[Cuenta_Estudiante] CHECK CONSTRAINT [Cuenta_Estudiante_Estudiante]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Cuenta_profesor_Profesor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cuenta_profesor]'))
ALTER TABLE [dbo].[Cuenta_profesor]  WITH CHECK ADD  CONSTRAINT [Cuenta_profesor_Profesor] FOREIGN KEY([Profesor_Empleado_No_empleado])
REFERENCES [dbo].[Profesor] ([Empleado_No_empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Cuenta_profesor_Profesor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cuenta_profesor]'))
ALTER TABLE [dbo].[Cuenta_profesor] CHECK CONSTRAINT [Cuenta_profesor_Profesor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Curso_Aula]') AND parent_object_id = OBJECT_ID(N'[dbo].[Curso]'))
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [Curso_Aula] FOREIGN KEY([Aula_Numero])
REFERENCES [dbo].[Aula] ([Numero])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Curso_Aula]') AND parent_object_id = OBJECT_ID(N'[dbo].[Curso]'))
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [Curso_Aula]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Curso_Materia]') AND parent_object_id = OBJECT_ID(N'[dbo].[Curso]'))
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [Curso_Materia] FOREIGN KEY([Materia_Clave])
REFERENCES [dbo].[Materia] ([Clave])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Curso_Materia]') AND parent_object_id = OBJECT_ID(N'[dbo].[Curso]'))
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [Curso_Materia]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Curso_Profesor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Curso]'))
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [Curso_Profesor] FOREIGN KEY([Profesor_Empleado_No_empleado])
REFERENCES [dbo].[Profesor] ([Empleado_No_empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Curso_Profesor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Curso]'))
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [Curso_Profesor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Curso_Horario_Curso]') AND parent_object_id = OBJECT_ID(N'[dbo].[Curso_Horario]'))
ALTER TABLE [dbo].[Curso_Horario]  WITH CHECK ADD  CONSTRAINT [Curso_Horario_Curso] FOREIGN KEY([Curso_Clave])
REFERENCES [dbo].[Curso] ([Clave])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Curso_Horario_Curso]') AND parent_object_id = OBJECT_ID(N'[dbo].[Curso_Horario]'))
ALTER TABLE [dbo].[Curso_Horario] CHECK CONSTRAINT [Curso_Horario_Curso]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Curso_Horario_Horario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Curso_Horario]'))
ALTER TABLE [dbo].[Curso_Horario]  WITH CHECK ADD  CONSTRAINT [Curso_Horario_Horario] FOREIGN KEY([Horario_Clave])
REFERENCES [dbo].[Horario] ([Clave])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Curso_Horario_Horario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Curso_Horario]'))
ALTER TABLE [dbo].[Curso_Horario] CHECK CONSTRAINT [Curso_Horario_Horario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Estudiante_Estatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Estudiante]'))
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [Estudiante_Estatus] FOREIGN KEY([Estatus_ID])
REFERENCES [dbo].[Estatus] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Estudiante_Estatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Estudiante]'))
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [Estudiante_Estatus]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Grupo_Estudiante]') AND parent_object_id = OBJECT_ID(N'[dbo].[Grupo]'))
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [Grupo_Estudiante] FOREIGN KEY([Estudiante_Matricula])
REFERENCES [dbo].[Estudiante] ([Matricula])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Grupo_Estudiante]') AND parent_object_id = OBJECT_ID(N'[dbo].[Grupo]'))
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [Grupo_Estudiante]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Inscripcion_Curso]') AND parent_object_id = OBJECT_ID(N'[dbo].[Grupo]'))
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [Inscripcion_Curso] FOREIGN KEY([Curso_Clave])
REFERENCES [dbo].[Curso] ([Clave])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Inscripcion_Curso]') AND parent_object_id = OBJECT_ID(N'[dbo].[Grupo]'))
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [Inscripcion_Curso]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Venta_Candidato]') AND parent_object_id = OBJECT_ID(N'[dbo].[Inscripcion]'))
ALTER TABLE [dbo].[Inscripcion]  WITH CHECK ADD  CONSTRAINT [Venta_Candidato] FOREIGN KEY([Candidato_ID])
REFERENCES [dbo].[Candidato] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Venta_Candidato]') AND parent_object_id = OBJECT_ID(N'[dbo].[Inscripcion]'))
ALTER TABLE [dbo].[Inscripcion] CHECK CONSTRAINT [Venta_Candidato]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Materia_Area]') AND parent_object_id = OBJECT_ID(N'[dbo].[Materia]'))
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [Materia_Area] FOREIGN KEY([Area_ID])
REFERENCES [dbo].[Area] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Materia_Area]') AND parent_object_id = OBJECT_ID(N'[dbo].[Materia]'))
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [Materia_Area]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Pagos_Inscripcion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pagos]'))
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [Pagos_Inscripcion] FOREIGN KEY([Inscripcion_ID])
REFERENCES [dbo].[Inscripcion] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Pagos_Inscripcion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pagos]'))
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [Pagos_Inscripcion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Pagos_Tipo_pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pagos]'))
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [Pagos_Tipo_pago] FOREIGN KEY([Tipo_pago_Nombre])
REFERENCES [dbo].[Tipo_pago] ([Nombre])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Pagos_Tipo_pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pagos]'))
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [Pagos_Tipo_pago]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Profesor_Area]') AND parent_object_id = OBJECT_ID(N'[dbo].[Profesor]'))
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [Profesor_Area] FOREIGN KEY([Area_ID])
REFERENCES [dbo].[Area] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Profesor_Area]') AND parent_object_id = OBJECT_ID(N'[dbo].[Profesor]'))
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [Profesor_Area]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Profesor_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Profesor]'))
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [Profesor_Empleado] FOREIGN KEY([Empleado_No_empleado])
REFERENCES [dbo].[Empleado] ([No_empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Profesor_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Profesor]'))
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [Profesor_Empleado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Profesor_Estatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Profesor]'))
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [Profesor_Estatus] FOREIGN KEY([Estatus_ID])
REFERENCES [dbo].[Estatus] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Profesor_Estatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Profesor]'))
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [Profesor_Estatus]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Telefono_empleado_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Telefono_empleado]'))
ALTER TABLE [dbo].[Telefono_empleado]  WITH CHECK ADD  CONSTRAINT [Telefono_empleado_Empleado] FOREIGN KEY([Empleado_No_empleado])
REFERENCES [dbo].[Empleado] ([No_empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Telefono_empleado_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Telefono_empleado]'))
ALTER TABLE [dbo].[Telefono_empleado] CHECK CONSTRAINT [Telefono_empleado_Empleado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Telefono_estudiante_Estudiante]') AND parent_object_id = OBJECT_ID(N'[dbo].[Telefono_estudiante]'))
ALTER TABLE [dbo].[Telefono_estudiante]  WITH CHECK ADD  CONSTRAINT [Telefono_estudiante_Estudiante] FOREIGN KEY([Estudiante_Matricula])
REFERENCES [dbo].[Estudiante] ([Matricula])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Telefono_estudiante_Estudiante]') AND parent_object_id = OBJECT_ID(N'[dbo].[Telefono_estudiante]'))
ALTER TABLE [dbo].[Telefono_estudiante] CHECK CONSTRAINT [Telefono_estudiante_Estudiante]
GO
USE [master]
GO
ALTER DATABASE [Proyecto] SET  READ_WRITE 
GO
