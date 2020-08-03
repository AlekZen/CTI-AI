USE [master]
GO

/****** Object:  Database [V6]    Script Date: 03/08/2020 05:17:37 p. m. ******/
CREATE DATABASE [V6]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'V6', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.ALEK\MSSQL\DATA\V6.mdf' , SIZE = 729088KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'V6_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.ALEK\MSSQL\DATA\V6_log.ldf' , SIZE = 860160KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [V6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [V6] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [V6] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [V6] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [V6] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [V6] SET ARITHABORT OFF 
GO

ALTER DATABASE [V6] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [V6] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [V6] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [V6] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [V6] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [V6] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [V6] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [V6] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [V6] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [V6] SET  DISABLE_BROKER 
GO

ALTER DATABASE [V6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [V6] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [V6] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [V6] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [V6] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [V6] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [V6] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [V6] SET RECOVERY FULL 
GO

ALTER DATABASE [V6] SET  MULTI_USER 
GO

ALTER DATABASE [V6] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [V6] SET DB_CHAINING OFF 
GO

ALTER DATABASE [V6] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [V6] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [V6] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [V6] SET QUERY_STORE = OFF
GO

ALTER DATABASE [V6] SET  READ_WRITE 
GO


USE [V6]
GO

/****** Object:  Table [AI].[DBs]    Script Date: 03/08/2020 05:17:46 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [AI].[DBs](
	[DB] [nvarchar](70) NOT NULL,
	[Latitud] [decimal](18, 0) NULL,
	[Longitud] [decimal](18, 0) NULL,
	[Sistema] [nvarchar](25) NULL,
	[Servidor] [nvarchar](50) NULL,
	[Empresa] [nvarchar](50) NULL,
	[Entidad] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [AI].[factDocumentos]    Script Date: 03/08/2020 05:17:54 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [AI].[factDocumentos](
	[CIDDOCUMENTO] [int] NULL,
	[CIDCONCEPTODOCUMENTO] [int] NULL,
	[CSERIEDOCUMENTO] [varchar](11) NULL,
	[CFOLIO] [float] NULL,
	[CFECHA] [datetime] NULL,
	[CIDCLIENTEPROVEEDOR] [int] NULL,
	[CNATURALEZA] [int] NULL,
	[CAFECTADO] [int] NULL,
	[CIMPRESO] [int] NULL,
	[CCANCELADO] [int] NULL,
	[CDEVUELTO] [int] NULL,
	[CNETO] [float] NULL,
	[CTOTAL] [float] NULL,
	[CUSUARIO] [varchar](15) NULL,
	[CGUIDDOCUMENTO] [varchar](40) NULL,
	[DB] [nvarchar](53) NULL,
	[CPENDIENTE] [float] NULL,
	[CIDDOCUMENTODE] [int] NULL,
	[CRAZONSOCIAL] [varchar](60) NULL,
	[CRFC] [varchar](20) NULL,
	[CIDAGENTE] [int] NULL,
	[CFECHAVENCIMIENTO] [datetime] NULL,
	[CFECHAPRONTOPAGO] [datetime] NULL,
	[CFECHAENTREGARECEPCION] [datetime] NULL,
	[CFECHAULTIMOINTERES] [datetime] NULL,
	[CIDMONEDA] [int] NULL,
	[CTIPOCAMBIO] [float] NULL,
	[CREFERENCIA] [varchar](20) NULL,
	[COBSERVACIONES] [varchar](max) NULL,
	[CIDDOCUMENTOORIGEN] [int] NULL,
	[CPLANTILLA] [int] NULL,
	[CUSACLIENTE] [int] NULL,
	[CUSAPROVEEDOR] [int] NULL,
	[CIDPREPOLIZA] [int] NULL,
	[CIDPREPOLIZACANCELACION] [int] NULL,
	[CESTADOCONTABLE] [int] NULL,
	[CIMPUESTO1] [float] NULL,
	[CIMPUESTO2] [float] NULL,
	[CIMPUESTO3] [float] NULL,
	[CRETENCION1] [float] NULL,
	[CRETENCION2] [float] NULL,
	[CDESCUENTOMOV] [float] NULL,
	[CDESCUENTODOC1] [float] NULL,
	[CDESCUENTODOC2] [float] NULL,
	[CGASTO1] [float] NULL,
	[CGASTO2] [float] NULL,
	[CGASTO3] [float] NULL,
	[CTOTALUNIDADES] [float] NULL,
	[CDESCUENTOPRONTOPAGO] [float] NULL,
	[CPORCENTAJEIMPUESTO1] [float] NULL,
	[CPORCENTAJEIMPUESTO2] [float] NULL,
	[CPORCENTAJEIMPUESTO3] [float] NULL,
	[CPORCENTAJERETENCION1] [float] NULL,
	[CPORCENTAJERETENCION2] [float] NULL,
	[CPORCENTAJEINTERES] [float] NULL,
	[CTEXTOEXTRA1] [varchar](50) NULL,
	[CTEXTOEXTRA2] [varchar](50) NULL,
	[CTEXTOEXTRA3] [varchar](50) NULL,
	[CFECHAEXTRA] [datetime] NULL,
	[CIMPORTEEXTRA1] [float] NULL,
	[CIMPORTEEXTRA2] [float] NULL,
	[CIMPORTEEXTRA3] [float] NULL,
	[CIMPORTEEXTRA4] [float] NULL,
	[CDESTINATARIO] [varchar](60) NULL,
	[CNUMEROGUIA] [varchar](60) NULL,
	[CMENSAJERIA] [varchar](20) NULL,
	[CCUENTAMENSAJERIA] [varchar](120) NULL,
	[CNUMEROCAJAS] [float] NULL,
	[CPESO] [float] NULL,
	[CBANOBSERVACIONES] [int] NULL,
	[CBANDATOSENVIO] [int] NULL,
	[CBANCONDICIONESCREDITO] [int] NULL,
	[CBANGASTOS] [int] NULL,
	[CUNIDADESPENDIENTES] [float] NULL,
	[CTIMESTAMP] [varchar](23) NULL,
	[CIMPCHEQPAQ] [float] NULL,
	[CSISTORIG] [int] NULL,
	[CIDMONEDCA] [int] NULL,
	[CTIPOCAMCA] [float] NULL,
	[CESCFD] [int] NULL,
	[CTIENECFD] [int] NULL,
	[CLUGAREXPE] [varchar](380) NULL,
	[CMETODOPAG] [varchar](100) NULL,
	[CNUMPARCIA] [int] NULL,
	[CCANTPARCI] [int] NULL,
	[CCONDIPAGO] [varchar](253) NULL,
	[CNUMCTAPAG] [varchar](100) NULL,
	[CIDPROYECTO] [int] NULL,
	[CIDCUENTA] [int] NULL,
	[CTRANSACTIONID] [varchar](26) NULL,
	[CIDCOPIADE] [int] NULL,
	[SKCliente] [int] NULL,
	[SKConcepto] [int] NULL,
	[CNOMBREMONEDA] [varchar](60) NULL,
	[CSIMBOLOMONEDA] [varchar](1) NULL,
	[SKMoneda] [int] NULL,
	[Neto] [money] NULL,
	[Total] [money] NULL,
	[Cancelado] [bit] NULL,
	[Afectado] [bit] NULL,
	[Folio] [nvarchar](50) NULL,
	[Saldo] [money] NULL,
	[SKDocumento] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SKDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [AI].[factMovimientos]    Script Date: 03/08/2020 05:18:02 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [AI].[factMovimientos](
	[CIDDOCUMENTO] [int] NULL,
	[CFECHA] [datetime] NULL,
	[CREFERENCIA] [varchar](20) NULL,
	[CNETO] [float] NULL,
	[CTOTAL] [float] NULL,
	[CIDPRODUCTO] [int] NULL,
	[CUNIDADES] [float] NULL,
	[CPRECIO] [float] NULL,
	[DB] [nvarchar](53) NULL,
	[CIDUNIDAD] [int] NULL,
	[CIDDOCUMENTODE] [int] NULL,
	[CIMPUESTO1] [float] NULL,
	[CIMPUESTO2] [float] NULL,
	[CIMPUESTO3] [float] NULL,
	[CRETENCION1] [float] NULL,
	[CRETENCION2] [float] NULL,
	[CPORCENTAJEIMPUESTO1] [float] NULL,
	[CPORCENTAJEIMPUESTO2] [float] NULL,
	[CPORCENTAJEIMPUESTO3] [float] NULL,
	[CPORCENTAJERETENCION1] [float] NULL,
	[CPORCENTAJERETENCION2] [float] NULL,
	[CTEXTOEXTRA1] [varchar](50) NULL,
	[CTEXTOEXTRA2] [varchar](50) NULL,
	[CTEXTOEXTRA3] [varchar](50) NULL,
	[CFECHAEXTRA] [datetime] NULL,
	[CIMPORTEEXTRA1] [float] NULL,
	[CIMPORTEEXTRA2] [float] NULL,
	[CIMPORTEEXTRA3] [float] NULL,
	[CIMPORTEEXTRA4] [float] NULL,
	[CUNIDADESPENDIENTES] [float] NULL,
	[CTIMESTAMP] [varchar](23) NULL,
	[CIDMOVIMIENTO] [int] NULL,
	[CNUMEROMOVIMIENTO] [float] NULL,
	[CIDALMACEN] [int] NULL,
	[CUNIDADESNC] [float] NULL,
	[CUNIDADESCAPTURADAS] [float] NULL,
	[CIDUNIDADNC] [int] NULL,
	[CPRECIOCAPTURADO] [float] NULL,
	[CCOSTOCAPTURADO] [float] NULL,
	[CCOSTOESPECIFICO] [float] NULL,
	[CDESCUENTO1] [float] NULL,
	[CPORCENTAJEDESCUENTO1] [float] NULL,
	[CDESCUENTO2] [float] NULL,
	[CPORCENTAJEDESCUENTO2] [float] NULL,
	[CDESCUENTO3] [float] NULL,
	[CPORCENTAJEDESCUENTO3] [float] NULL,
	[CDESCUENTO4] [float] NULL,
	[CPORCENTAJEDESCUENTO4] [float] NULL,
	[CDESCUENTO5] [float] NULL,
	[CPORCENTAJEDESCUENTO5] [float] NULL,
	[CPORCENTAJECOMISION] [float] NULL,
	[COBSERVAMOV] [varchar](max) NULL,
	[CAFECTAEXISTENCIA] [int] NULL,
	[CAFECTADOSALDOS] [int] NULL,
	[CAFECTADOINVENTARIO] [int] NULL,
	[CMOVTOOCULTO] [int] NULL,
	[CIDMOVTOOWNER] [int] NULL,
	[CIDMOVTOORIGEN] [int] NULL,
	[CUNIDADESNCPENDIENTES] [float] NULL,
	[CUNIDADESORIGEN] [float] NULL,
	[CUNIDADESNCORIGEN] [float] NULL,
	[CTIPOTRASPASO] [int] NULL,
	[CIDVALORCLASIFICACION] [int] NULL,
	[CGTOMOVTO] [float] NULL,
	[CSCMOVTO] [varchar](50) NULL,
	[CCOMVENTA] [float] NULL,
	[CIDMOVTODESTINO] [int] NULL,
	[CNUMEROCONSOLIDACIONES] [int] NULL,
	[SKProducto] [int] NULL,
	[SKUnidad] [int] NULL,
	[SKDocumento] [int] NULL,
	[NETO] [money] NULL,
	[TOTAL] [money] NULL,
	[PRECIO] [money] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [DIM].[Clasificaciones]    Script Date: 03/08/2020 05:18:13 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DIM].[Clasificaciones](
	[DB] [nvarchar](53) NULL,
	[CIDVALORCLASIFICACION] [int] NULL,
	[CNOMBRECLASIFICACION] [varchar](60) NULL,
	[CVALORCLASIFICACION] [varchar](60) NULL,
	[CCODIGOVALORCLASIFICACION] [varchar](3) NULL,
	[CSEGCONT1] [varchar](50) NULL,
	[SKClasificacion] [int] IDENTITY(1,1) NOT NULL,
	[SKDate1] [datetime] NULL,
	[SKDate2] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SKClasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [DIM].[Cliente]    Script Date: 03/08/2020 05:18:30 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DIM].[Cliente](
	[DB] [nvarchar](53) NULL,
	[CIDVALORCLASIFCLIENTE1] [int] NULL,
	[CIDVALORCLASIFCLIENTE2] [int] NULL,
	[CIDVALORCLASIFCLIENTE3] [int] NULL,
	[IdCliente] [int] NULL,
	[Codigo] [varchar](30) NULL,
	[Cliente] [varchar](60) NULL,
	[Fecha Alta] [datetime] NULL,
	[RFC] [varchar](20) NULL,
	[Lista de precios] [int] NULL,
	[Status] [int] NULL,
	[Segmento contable] [varchar](50) NULL,
	[Emal 1] [varchar](60) NULL,
	[Email 1] [varchar](60) NULL,
	[Email 3] [varchar](60) NULL,
	[Metodo Pago] [varchar](100) NULL,
	[Numero de Cuenta] [varchar](100) NULL,
	[Limite de credito] [float] NULL,
	[Dias Credito] [int] NULL,
	[Dias pronto pago] [int] NULL,
	[IDAgente Venta] [int] NULL,
	[IdAgente Cobranza] [int] NULL,
	[idMoneda] [int] NULL,
	[NC1] [varchar](60) NULL,
	[C1] [varchar](60) NULL,
	[NC2] [varchar](60) NULL,
	[C2] [varchar](60) NULL,
	[NC3] [varchar](60) NULL,
	[C3] [varchar](60) NULL,
	[SKMoneda] [int] NULL,
	[Moneda] [varchar](60) NULL,
	[Simbolo Moneda] [varchar](1) NULL,
	[Posicion Simbolo moneda] [int] NULL,
	[Decimales moneda] [int] NULL,
	[Clave SAT Moneda] [varchar](3) NULL,
	[SKCliente] [int] IDENTITY(1,1) NOT NULL,
	[SKDate1] [datetime] NULL,
	[SKDate2] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SKCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [DIM].[Concepto]    Script Date: 03/08/2020 05:18:39 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DIM].[Concepto](
	[Modelo] [varchar](50) NULL,
	[Concepto] [varchar](60) NULL,
	[IdModelo] [int] NULL,
	[DB] [nvarchar](53) NULL,
	[Naturaleza] [int] NULL,
	[Afecta Existencia] [int] NULL,
	[IdConcepto] [int] NULL,
	[Es a credito] [int] NULL,
	[SKConcepto] [int] IDENTITY(1,1) NOT NULL,
	[SKDate1] [datetime] NULL,
	[SKDate2] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SKConcepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [DIM].[Conversion]    Script Date: 03/08/2020 05:18:46 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DIM].[Conversion](
	[Nombre Origen] [varchar](60) NULL,
	[Abreviatura Origen] [varchar](3) NULL,
	[DB] [nvarchar](53) NULL,
	[IdUnidadOrigen] [int] NULL,
	[IdUnidad Conversion] [int] NULL,
	[Nombre unidad Conversion] [varchar](60) NULL,
	[Abreviatura Conversion] [varchar](3) NULL,
	[Factor Conversion] [float] NULL,
	[SKUnidad Origen] [int] NULL,
	[SKUnidad Destino] [int] NULL,
	[SKConversion] [int] IDENTITY(1,1) NOT NULL,
	[SKDate1] [datetime] NULL,
	[SKDate2] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SKConversion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [V6]
GO

/****** Object:  Table [DIM].[Moneda]    Script Date: 03/08/2020 05:18:53 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DIM].[Moneda](
	[DB] [nvarchar](53) NULL,
	[CIDMONEDA] [int] NULL,
	[CNOMBREMONEDA] [varchar](60) NULL,
	[CSIMBOLOMONEDA] [varchar](1) NULL,
	[CPOSICIONSIMBOLO] [int] NULL,
	[CPLURAL] [varchar](60) NULL,
	[CSINGULAR] [varchar](60) NULL,
	[CDESCRIPCIONPROTEGIDA] [varchar](60) NULL,
	[CIDBANDERA] [int] NULL,
	[CDECIMALESMONEDA] [int] NULL,
	[CTIMESTAMP] [varchar](23) NULL,
	[CCLAVESAT] [varchar](3) NULL,
	[SKMoneda] [int] IDENTITY(1,1) NOT NULL,
	[SKDate1] [datetime] NULL,
	[SKDate2] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SKMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [V6]
GO

/****** Object:  Table [DIM].[Producto]    Script Date: 03/08/2020 05:19:00 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DIM].[Producto](
	[CPRECIO1] [float] NULL,
	[CPRECIO2] [float] NULL,
	[CPRECIO3] [float] NULL,
	[DB] [nvarchar](53) NULL,
	[IdProducto] [int] NULL,
	[Codigo] [varchar](30) NULL,
	[Nombre] [varchar](60) NULL,
	[Tipo Producto] [int] NULL,
	[Fecha alta] [datetime] NULL,
	[Control existencia] [int] NULL,
	[Descripcion] [varchar](max) NULL,
	[Costo] [float] NULL,
	[Margen] [float] NULL,
	[Status] [int] NULL,
	[IdUnidad Base] [int] NULL,
	[IdCl1] [int] NULL,
	[IdCl2] [int] NULL,
	[IdCl3] [int] NULL,
	[Segmento Contable] [varchar](50) NULL,
	[IdUnidad XML] [int] NULL,
	[Clave SAT] [varchar](8) NULL,
	[NC1] [varchar](60) NULL,
	[C1] [varchar](60) NULL,
	[NC2] [varchar](60) NULL,
	[C2] [varchar](60) NULL,
	[NC3] [varchar](60) NULL,
	[C3] [varchar](60) NULL,
	[SKProducto] [int] IDENTITY(1,1) NOT NULL,
	[SKDate1] [datetime] NULL,
	[SKDate2] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SKProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [DIM].[Unidad]    Script Date: 03/08/2020 05:19:06 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DIM].[Unidad](
	[CCLAVESAT] [varchar](8) NULL,
	[CIDUNIDAD] [int] NULL,
	[CNOMBREUNIDAD] [varchar](60) NULL,
	[CABREVIATURA] [varchar](3) NULL,
	[CDESPLIEGUE] [varchar](3) NULL,
	[CCLAVEINT] [varchar](3) NULL,
	[DB] [nvarchar](53) NULL,
	[SKUnidad] [int] IDENTITY(1,1) NOT NULL,
	[SKDate1] [datetime] NULL,
	[SKDate2] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SKUnidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [STG].[Agente]    Script Date: 03/08/2020 05:19:13 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[Agente](
	[CIDAGENTE] [int] NULL,
	[CCODIGOAGENTE] [varchar](30) NULL,
	[CNOMBREAGENTE] [varchar](60) NULL,
	[CFECHAALTAAGENTE] [datetime] NULL,
	[CTIPOAGENTE] [int] NULL,
	[CCOMISIONVENTAAGENTE] [float] NULL,
	[CCOMISIONCOBROAGENTE] [float] NULL,
	[CIDCLIENTE] [int] NULL,
	[CIDPROVEEDOR] [int] NULL,
	[CIDVALORCLASIFICACION1] [int] NULL,
	[CIDVALORCLASIFICACION2] [int] NULL,
	[CIDVALORCLASIFICACION3] [int] NULL,
	[CIDVALORCLASIFICACION4] [int] NULL,
	[CIDVALORCLASIFICACION5] [int] NULL,
	[CIDVALORCLASIFICACION6] [int] NULL,
	[CSEGCONTAGENTE] [varchar](50) NULL,
	[CTEXTOEXTRA1] [varchar](50) NULL,
	[CTEXTOEXTRA2] [varchar](50) NULL,
	[CTEXTOEXTRA3] [varchar](50) NULL,
	[CFECHAEXTRA] [datetime] NULL,
	[CIMPORTEEXTRA1] [float] NULL,
	[CIMPORTEEXTRA2] [float] NULL,
	[CIMPORTEEXTRA3] [float] NULL,
	[CIMPORTEEXTRA4] [float] NULL,
	[CTIMESTAMP] [varchar](23) NULL,
	[CSCAGENTE2] [varchar](50) NULL,
	[CSCAGENTE3] [varchar](50) NULL,
	[BD origen] [nvarchar](53) NULL
) ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [STG].[Clasificaciones]    Script Date: 03/08/2020 05:19:19 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[Clasificaciones](
	[CIDVALORCLASIFICACION] [int] NULL,
	[CNOMBRECLASIFICACION] [varchar](60) NULL,
	[CVALORCLASIFICACION] [varchar](60) NULL,
	[CCODIGOVALORCLASIFICACION] [varchar](3) NULL,
	[CSEGCONT1] [varchar](50) NULL,
	[DB] [nvarchar](53) NULL
) ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [STG].[Clientes]    Script Date: 03/08/2020 05:19:25 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[Clientes](
	[CIDCLIENTEPROVEEDOR] [int] NULL,
	[CCODIGOCLIENTE] [varchar](30) NULL,
	[CRAZONSOCIAL] [varchar](60) NULL,
	[CFECHAALTA] [datetime] NULL,
	[CRFC] [varchar](20) NULL,
	[CCURP] [varchar](20) NULL,
	[CDENCOMERCIAL] [varchar](50) NULL,
	[CREPLEGAL] [varchar](50) NULL,
	[CIDMONEDA] [int] NULL,
	[CLISTAPRECIOCLIENTE] [int] NULL,
	[CDESCUENTODOCTO] [float] NULL,
	[CDESCUENTOMOVTO] [float] NULL,
	[CIDVALORCLASIFCLIENTE1] [int] NULL,
	[CIDVALORCLASIFCLIENTE2] [int] NULL,
	[CIDVALORCLASIFCLIENTE3] [int] NULL,
	[CIDVALORCLASIFCLIENTE4] [int] NULL,
	[CIDVALORCLASIFCLIENTE5] [int] NULL,
	[CIDVALORCLASIFCLIENTE6] [int] NULL,
	[CTIPOCLIENTE] [int] NULL,
	[CESTATUS] [int] NULL,
	[CLIMITECREDITOCLIENTE] [float] NULL,
	[CDIASCREDITOCLIENTE] [int] NULL,
	[CBANEXCEDERCREDITO] [int] NULL,
	[CDESCUENTOPRONTOPAGO] [float] NULL,
	[CDIASPRONTOPAGO] [int] NULL,
	[CINTERESMORATORIO] [float] NULL,
	[CDIAPAGO] [int] NULL,
	[CDIASREVISION] [int] NULL,
	[CMENSAJERIA] [varchar](20) NULL,
	[CCUENTAMENSAJERIA] [varchar](60) NULL,
	[CDIASEMBARQUECLIENTE] [int] NULL,
	[CIDALMACEN] [int] NULL,
	[CIDAGENTEVENTA] [int] NULL,
	[CIDAGENTECOBRO] [int] NULL,
	[CIMPUESTO1] [float] NULL,
	[CIMPUESTO2] [float] NULL,
	[CIMPUESTO3] [float] NULL,
	[CRETENCIONCLIENTE1] [float] NULL,
	[CRETENCIONCLIENTE2] [float] NULL,
	[CSEGCONTCLIENTE1] [varchar](50) NULL,
	[CSEGCONTCLIENTE2] [varchar](50) NULL,
	[CSEGCONTCLIENTE3] [varchar](50) NULL,
	[CEMAIL1] [varchar](60) NULL,
	[CEMAIL2] [varchar](60) NULL,
	[CEMAIL3] [varchar](60) NULL,
	[CMETODOPAG] [varchar](100) NULL,
	[CNUMCTAPAG] [varchar](100) NULL,
	[CIDCUENTA] [int] NULL,
	[CUSOCFDI] [varchar](30) NULL,
	[DB] [nvarchar](53) NULL
) ON [PRIMARY]
GO
USE [V6]
GO

/****** Object:  Table [STG].[Conceptos]    Script Date: 03/08/2020 05:19:31 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[Conceptos](
	[Modelo] [varchar](50) NULL,
	[Concepto] [varchar](60) NULL,
	[IdModelo] [int] NULL,
	[CNATURALEZA] [int] NULL,
	[CAFECTAEXISTENCIA] [int] NULL,
	[CIDCONCEPTODOCUMENTO] [int] NULL,
	[CDOCTOACREDITO] [int] NULL,
	[DB] [nvarchar](53) NULL
) ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [STG].[Conversiones]    Script Date: 03/08/2020 05:19:38 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[Conversiones](
	[IdUnidadOrigen] [int] NULL,
	[Nombre Origen] [varchar](60) NULL,
	[Abreviatura Origen] [varchar](3) NULL,
	[IdUnidad Conversion] [int] NULL,
	[Nombre unidad Conversion] [varchar](60) NULL,
	[Abreviatura Conversion] [varchar](3) NULL,
	[Factor Conversion] [float] NULL,
	[DB] [nvarchar](53) NULL
) ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [STG].[Documentos]    Script Date: 03/08/2020 05:19:44 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[Documentos](
	[CIDDOCUMENTO] [int] NULL,
	[CIDDOCUMENTODE] [int] NULL,
	[CIDCONCEPTODOCUMENTO] [int] NULL,
	[CSERIEDOCUMENTO] [varchar](11) NULL,
	[CFOLIO] [float] NULL,
	[CFECHA] [datetime] NULL,
	[CIDCLIENTEPROVEEDOR] [int] NULL,
	[CRAZONSOCIAL] [varchar](60) NULL,
	[CRFC] [varchar](20) NULL,
	[CIDAGENTE] [int] NULL,
	[CFECHAVENCIMIENTO] [datetime] NULL,
	[CFECHAPRONTOPAGO] [datetime] NULL,
	[CFECHAENTREGARECEPCION] [datetime] NULL,
	[CFECHAULTIMOINTERES] [datetime] NULL,
	[CIDMONEDA] [int] NULL,
	[CTIPOCAMBIO] [float] NULL,
	[CREFERENCIA] [varchar](20) NULL,
	[COBSERVACIONES] [varchar](max) NULL,
	[CNATURALEZA] [int] NULL,
	[CIDDOCUMENTOORIGEN] [int] NULL,
	[CPLANTILLA] [int] NULL,
	[CUSACLIENTE] [int] NULL,
	[CUSAPROVEEDOR] [int] NULL,
	[CAFECTADO] [int] NULL,
	[CIMPRESO] [int] NULL,
	[CCANCELADO] [int] NULL,
	[CDEVUELTO] [int] NULL,
	[CIDPREPOLIZA] [int] NULL,
	[CIDPREPOLIZACANCELACION] [int] NULL,
	[CESTADOCONTABLE] [int] NULL,
	[CNETO] [float] NULL,
	[CIMPUESTO1] [float] NULL,
	[CIMPUESTO2] [float] NULL,
	[CIMPUESTO3] [float] NULL,
	[CRETENCION1] [float] NULL,
	[CRETENCION2] [float] NULL,
	[CDESCUENTOMOV] [float] NULL,
	[CDESCUENTODOC1] [float] NULL,
	[CDESCUENTODOC2] [float] NULL,
	[CGASTO1] [float] NULL,
	[CGASTO2] [float] NULL,
	[CGASTO3] [float] NULL,
	[CTOTAL] [float] NULL,
	[CPENDIENTE] [float] NULL,
	[CTOTALUNIDADES] [float] NULL,
	[CDESCUENTOPRONTOPAGO] [float] NULL,
	[CPORCENTAJEIMPUESTO1] [float] NULL,
	[CPORCENTAJEIMPUESTO2] [float] NULL,
	[CPORCENTAJEIMPUESTO3] [float] NULL,
	[CPORCENTAJERETENCION1] [float] NULL,
	[CPORCENTAJERETENCION2] [float] NULL,
	[CPORCENTAJEINTERES] [float] NULL,
	[CTEXTOEXTRA1] [varchar](50) NULL,
	[CTEXTOEXTRA2] [varchar](50) NULL,
	[CTEXTOEXTRA3] [varchar](50) NULL,
	[CFECHAEXTRA] [datetime] NULL,
	[CIMPORTEEXTRA1] [float] NULL,
	[CIMPORTEEXTRA2] [float] NULL,
	[CIMPORTEEXTRA3] [float] NULL,
	[CIMPORTEEXTRA4] [float] NULL,
	[CDESTINATARIO] [varchar](60) NULL,
	[CNUMEROGUIA] [varchar](60) NULL,
	[CMENSAJERIA] [varchar](20) NULL,
	[CCUENTAMENSAJERIA] [varchar](120) NULL,
	[CNUMEROCAJAS] [float] NULL,
	[CPESO] [float] NULL,
	[CBANOBSERVACIONES] [int] NULL,
	[CBANDATOSENVIO] [int] NULL,
	[CBANCONDICIONESCREDITO] [int] NULL,
	[CBANGASTOS] [int] NULL,
	[CUNIDADESPENDIENTES] [float] NULL,
	[CTIMESTAMP] [varchar](23) NULL,
	[CIMPCHEQPAQ] [float] NULL,
	[CSISTORIG] [int] NULL,
	[CIDMONEDCA] [int] NULL,
	[CTIPOCAMCA] [float] NULL,
	[CESCFD] [int] NULL,
	[CTIENECFD] [int] NULL,
	[CLUGAREXPE] [varchar](380) NULL,
	[CMETODOPAG] [varchar](100) NULL,
	[CNUMPARCIA] [int] NULL,
	[CCANTPARCI] [int] NULL,
	[CCONDIPAGO] [varchar](253) NULL,
	[CNUMCTAPAG] [varchar](100) NULL,
	[CGUIDDOCUMENTO] [varchar](40) NULL,
	[CUSUARIO] [varchar](15) NULL,
	[CIDPROYECTO] [int] NULL,
	[CIDCUENTA] [int] NULL,
	[CTRANSACTIONID] [varchar](26) NULL,
	[CIDCOPIADE] [int] NULL,
	[DB] [nvarchar](53) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [STG].[Empresa]    Script Date: 03/08/2020 05:19:50 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[Empresa](
	[CGUIDDSL] [varchar](40) NULL,
	[CGUIDEMPRESA] [varchar](40) NULL,
	[CRFCEMPRESA] [varchar](20) NULL,
	[CIDEMPRESA] [int] NULL,
	[CNOMBREEMPRESA] [varchar](60) NULL,
	[CNOMBRECORTO] [varchar](20) NULL,
	[CFECHACIERRE] [datetime] NULL,
	[CIDMONEDABASE] [int] NULL,
	[CRUTACONTPAQ] [varchar](253) NULL,
	[CSEGCONTGENERAL1] [varchar](50) NULL,
	[CVERSIONACTUAL] [varchar](20) NULL,
	[CINTERFAZ] [int] NULL,
	[CPERFIL] [int] NULL,
	[CAUTORIZAR] [int] NULL,
	[CRUTAPLA01] [varchar](253) NULL,
	[CRUTAPLA02] [varchar](253) NULL,
	[BD origen] [nvarchar](53) NULL
) ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [STG].[Moneda]    Script Date: 03/08/2020 05:19:56 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[Moneda](
	[CIDMONEDA] [int] NULL,
	[CNOMBREMONEDA] [varchar](60) NULL,
	[CSIMBOLOMONEDA] [varchar](1) NULL,
	[CPOSICIONSIMBOLO] [int] NULL,
	[CPLURAL] [varchar](60) NULL,
	[CSINGULAR] [varchar](60) NULL,
	[CDESCRIPCIONPROTEGIDA] [varchar](60) NULL,
	[CIDBANDERA] [int] NULL,
	[CDECIMALESMONEDA] [int] NULL,
	[CTIMESTAMP] [varchar](23) NULL,
	[CCLAVESAT] [varchar](3) NULL,
	[DB] [nvarchar](53) NULL
) ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [STG].[Movimientos]    Script Date: 03/08/2020 05:20:03 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[Movimientos](
	[CIDDOCUMENTO] [int] NULL,
	[CIDDOCUMENTODE] [int] NULL,
	[CFECHA] [datetime] NULL,
	[CREFERENCIA] [varchar](20) NULL,
	[CNETO] [float] NULL,
	[CIMPUESTO1] [float] NULL,
	[CIMPUESTO2] [float] NULL,
	[CIMPUESTO3] [float] NULL,
	[CRETENCION1] [float] NULL,
	[CRETENCION2] [float] NULL,
	[CTOTAL] [float] NULL,
	[CPORCENTAJEIMPUESTO1] [float] NULL,
	[CPORCENTAJEIMPUESTO2] [float] NULL,
	[CPORCENTAJEIMPUESTO3] [float] NULL,
	[CPORCENTAJERETENCION1] [float] NULL,
	[CPORCENTAJERETENCION2] [float] NULL,
	[CTEXTOEXTRA1] [varchar](50) NULL,
	[CTEXTOEXTRA2] [varchar](50) NULL,
	[CTEXTOEXTRA3] [varchar](50) NULL,
	[CFECHAEXTRA] [datetime] NULL,
	[CIMPORTEEXTRA1] [float] NULL,
	[CIMPORTEEXTRA2] [float] NULL,
	[CIMPORTEEXTRA3] [float] NULL,
	[CIMPORTEEXTRA4] [float] NULL,
	[CUNIDADESPENDIENTES] [float] NULL,
	[CTIMESTAMP] [varchar](23) NULL,
	[CIDMOVIMIENTO] [int] NULL,
	[CNUMEROMOVIMIENTO] [float] NULL,
	[CIDPRODUCTO] [int] NULL,
	[CIDALMACEN] [int] NULL,
	[CUNIDADES] [float] NULL,
	[CUNIDADESNC] [float] NULL,
	[CUNIDADESCAPTURADAS] [float] NULL,
	[CIDUNIDAD] [int] NULL,
	[CIDUNIDADNC] [int] NULL,
	[CPRECIO] [float] NULL,
	[CPRECIOCAPTURADO] [float] NULL,
	[CCOSTOCAPTURADO] [float] NULL,
	[CCOSTOESPECIFICO] [float] NULL,
	[CDESCUENTO1] [float] NULL,
	[CPORCENTAJEDESCUENTO1] [float] NULL,
	[CDESCUENTO2] [float] NULL,
	[CPORCENTAJEDESCUENTO2] [float] NULL,
	[CDESCUENTO3] [float] NULL,
	[CPORCENTAJEDESCUENTO3] [float] NULL,
	[CDESCUENTO4] [float] NULL,
	[CPORCENTAJEDESCUENTO4] [float] NULL,
	[CDESCUENTO5] [float] NULL,
	[CPORCENTAJEDESCUENTO5] [float] NULL,
	[CPORCENTAJECOMISION] [float] NULL,
	[COBSERVAMOV] [varchar](max) NULL,
	[CAFECTAEXISTENCIA] [int] NULL,
	[CAFECTADOSALDOS] [int] NULL,
	[CAFECTADOINVENTARIO] [int] NULL,
	[CMOVTOOCULTO] [int] NULL,
	[CIDMOVTOOWNER] [int] NULL,
	[CIDMOVTOORIGEN] [int] NULL,
	[CUNIDADESNCPENDIENTES] [float] NULL,
	[CUNIDADESORIGEN] [float] NULL,
	[CUNIDADESNCORIGEN] [float] NULL,
	[CTIPOTRASPASO] [int] NULL,
	[CIDVALORCLASIFICACION] [int] NULL,
	[CGTOMOVTO] [float] NULL,
	[CSCMOVTO] [varchar](50) NULL,
	[CCOMVENTA] [float] NULL,
	[CIDMOVTODESTINO] [int] NULL,
	[CNUMEROCONSOLIDACIONES] [int] NULL,
	[DB] [nvarchar](53) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [STG].[Productos]    Script Date: 03/08/2020 05:20:09 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[Productos](
	[CIDMONEDA] [int] NULL,
	[CFECHABAJA] [datetime] NULL,
	[CIMPUESTO1] [float] NULL,
	[CIMPUESTO2] [float] NULL,
	[CIMPUESTO3] [float] NULL,
	[CTEXTOEXTRA1] [varchar](50) NULL,
	[CTEXTOEXTRA2] [varchar](50) NULL,
	[CTEXTOEXTRA3] [varchar](50) NULL,
	[CFECHAEXTRA] [datetime] NULL,
	[CIMPORTEEXTRA1] [float] NULL,
	[CIMPORTEEXTRA2] [float] NULL,
	[CIMPORTEEXTRA3] [float] NULL,
	[CIMPORTEEXTRA4] [float] NULL,
	[CBANIMPUESTO] [int] NULL,
	[CBANPRECIO] [int] NULL,
	[CTIMESTAMP] [varchar](23) NULL,
	[CDESGLOSAI2] [int] NULL,
	[CIDPRODUCTO] [int] NULL,
	[CCODIGOPRODUCTO] [varchar](30) NULL,
	[CNOMBREPRODUCTO] [varchar](60) NULL,
	[CTIPOPRODUCTO] [int] NULL,
	[CFECHAALTAPRODUCTO] [datetime] NULL,
	[CCONTROLEXISTENCIA] [int] NULL,
	[CIDFOTOPRODUCTO] [int] NULL,
	[CDESCRIPCIONPRODUCTO] [varchar](max) NULL,
	[CMETODOCOSTEO] [int] NULL,
	[CPESOPRODUCTO] [float] NULL,
	[CCOMVENTAEXCEPPRODUCTO] [float] NULL,
	[CCOMCOBROEXCEPPRODUCTO] [float] NULL,
	[CCOSTOESTANDAR] [float] NULL,
	[CMARGENUTILIDAD] [float] NULL,
	[CSTATUSPRODUCTO] [int] NULL,
	[CIDUNIDADBASE] [int] NULL,
	[CIDUNIDADNOCONVERTIBLE] [int] NULL,
	[CRETENCION1] [float] NULL,
	[CRETENCION2] [float] NULL,
	[CIDPADRECARACTERISTICA1] [int] NULL,
	[CIDPADRECARACTERISTICA2] [int] NULL,
	[CIDPADRECARACTERISTICA3] [int] NULL,
	[CIDVALORCLASIFICACION1] [int] NULL,
	[CIDVALORCLASIFICACION2] [int] NULL,
	[CIDVALORCLASIFICACION3] [int] NULL,
	[CIDVALORCLASIFICACION4] [int] NULL,
	[CIDVALORCLASIFICACION5] [int] NULL,
	[CIDVALORCLASIFICACION6] [int] NULL,
	[CSEGCONTPRODUCTO1] [varchar](50) NULL,
	[CSEGCONTPRODUCTO2] [varchar](50) NULL,
	[CSEGCONTPRODUCTO3] [varchar](50) NULL,
	[CPRECIO1] [float] NULL,
	[CPRECIO2] [float] NULL,
	[CPRECIO3] [float] NULL,
	[CPRECIO4] [float] NULL,
	[CPRECIO5] [float] NULL,
	[CPRECIO6] [float] NULL,
	[CPRECIO7] [float] NULL,
	[CPRECIO8] [float] NULL,
	[CPRECIO9] [float] NULL,
	[CPRECIO10] [float] NULL,
	[CBANUNIDADES] [int] NULL,
	[CBANCARACTERISTICAS] [int] NULL,
	[CBANMETODOCOSTEO] [int] NULL,
	[CBANMAXMIN] [int] NULL,
	[CBANCODIGOBARRA] [int] NULL,
	[CBANCOMPONENTE] [int] NULL,
	[CERRORCOSTO] [int] NULL,
	[CFECHAERRORCOSTO] [datetime] NULL,
	[CPRECIOCALCULADO] [float] NULL,
	[CESTADOPRECIO] [int] NULL,
	[CBANUBICACION] [int] NULL,
	[CESEXENTO] [int] NULL,
	[CEXISTENCIANEGATIVA] [int] NULL,
	[CCOSTOEXT1] [float] NULL,
	[CCOSTOEXT2] [float] NULL,
	[CCOSTOEXT3] [float] NULL,
	[CCOSTOEXT4] [float] NULL,
	[CCOSTOEXT5] [float] NULL,
	[CFECCOSEX1] [datetime] NULL,
	[CFECCOSEX2] [datetime] NULL,
	[CFECCOSEX3] [datetime] NULL,
	[CFECCOSEX4] [datetime] NULL,
	[CFECCOSEX5] [datetime] NULL,
	[CMONCOSEX1] [int] NULL,
	[CMONCOSEX2] [int] NULL,
	[CMONCOSEX3] [int] NULL,
	[CMONCOSEX4] [int] NULL,
	[CMONCOSEX5] [int] NULL,
	[CBANCOSEX] [int] NULL,
	[CESCUOTAI2] [int] NULL,
	[CESCUOTAI3] [int] NULL,
	[CIDUNIDADCOMPRA] [int] NULL,
	[CIDUNIDADVENTA] [int] NULL,
	[CSUBTIPO] [int] NULL,
	[CCODALTERN] [varchar](30) NULL,
	[CNOMALTERN] [varchar](60) NULL,
	[CDESCCORTA] [varchar](30) NULL,
	[CUSABASCU] [int] NULL,
	[CTIPOPAQUE] [int] NULL,
	[CPRECSELEC] [int] NULL,
	[CSEGCONTPRODUCTO4] [varchar](20) NULL,
	[CSEGCONTPRODUCTO5] [varchar](20) NULL,
	[CSEGCONTPRODUCTO6] [varchar](20) NULL,
	[CSEGCONTPRODUCTO7] [varchar](20) NULL,
	[CCTAPRED] [varchar](150) NULL,
	[CNODESCOMP] [int] NULL,
	[CIDUNIXML] [int] NULL,
	[CCLAVESAT] [varchar](8) NULL,
	[CCANTIDADFISCAL] [float] NULL,
	[CNOMODCOMP] [int] NULL,
	[DB] [nvarchar](53) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [V6]
GO

/****** Object:  Table [STG].[Unidades]    Script Date: 03/08/2020 05:20:14 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[Unidades](
	[CCLAVESAT] [varchar](8) NULL,
	[CIDUNIDAD] [int] NULL,
	[CNOMBREUNIDAD] [varchar](60) NULL,
	[CABREVIATURA] [varchar](3) NULL,
	[CDESPLIEGUE] [varchar](3) NULL,
	[CCLAVEINT] [varchar](3) NULL,
	[DB] [nvarchar](53) NULL
) ON [PRIMARY]
GO



