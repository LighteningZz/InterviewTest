USE [master]
GO
/****** Object:  Database [interview_test]    Script Date: 25/3/2562 15:15:55 ******/
CREATE DATABASE [interview_test] ON  PRIMARY 
( NAME = N'interview_test', FILENAME = N'Z:\Database\Data\interview_test.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'interview_test_log', FILENAME = N'Z:\Database\Data\interview_test_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [interview_test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [interview_test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [interview_test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [interview_test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [interview_test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [interview_test] SET ARITHABORT OFF 
GO
ALTER DATABASE [interview_test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [interview_test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [interview_test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [interview_test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [interview_test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [interview_test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [interview_test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [interview_test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [interview_test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [interview_test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [interview_test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [interview_test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [interview_test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [interview_test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [interview_test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [interview_test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [interview_test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [interview_test] SET RECOVERY FULL 
GO
ALTER DATABASE [interview_test] SET  MULTI_USER 
GO
ALTER DATABASE [interview_test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [interview_test] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'interview_test', N'ON'
GO
USE [interview_test]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 25/3/2562 15:15:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[FirstName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NULL,
	[Telephone] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[IdCardNo] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [uniqueidentifier] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [uniqueidentifier] NULL,
	[Revision] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Telephone], [Email], [IdCardNo], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Revision]) VALUES (N'1e871ace-7e41-454b-8a12-41390284b6aa', N'Somchai', N'Parker', N'123456', N'a@a.com', N'123456', CAST(N'2019-03-25T15:11:54.620' AS DateTime), NULL, CAST(N'2019-03-25T15:11:54.620' AS DateTime), NULL, 0)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Telephone], [Email], [IdCardNo], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Revision]) VALUES (N'd49847b5-0171-472c-9a7f-6792eadce1b3', N'Richard', N'Polsawad', N'+66840033986', N'richard,polsawad@gmail.com', N'12345678910', CAST(N'2019-03-25T15:14:30.730' AS DateTime), NULL, CAST(N'2019-03-25T15:14:30.730' AS DateTime), NULL, 0)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Telephone], [Email], [IdCardNo], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy], [Revision]) VALUES (N'4ef36679-b50a-42d0-aba5-67f9bb382c0d', N'Nunthachai', N'Noisanti', N'+66840033986', N'nunthachai.n@gmail.com', N'1123456789', CAST(N'2019-03-25T15:12:06.723' AS DateTime), NULL, CAST(N'2019-03-25T15:14:04.527' AS DateTime), NULL, 1)
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_Id]  DEFAULT (newid()) FOR [Id]
GO
USE [master]
GO
ALTER DATABASE [interview_test] SET  READ_WRITE 
GO
