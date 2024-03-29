USE [interview_test]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 25/3/2562 15:19:39 ******/
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
