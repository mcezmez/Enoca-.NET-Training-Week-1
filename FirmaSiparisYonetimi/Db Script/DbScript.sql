USE [FirmaSiparisYonetimiAPIDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2.01.2023 21:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 2.01.2023 21:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
	[OST] [datetime2](7) NOT NULL,
	[OET] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2.01.2023 21:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NOT NULL,
	[ProductID] [uniqueidentifier] NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2.01.2023 21:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyID] [uniqueidentifier] NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[Stock] [int] NOT NULL,
	[Price] [bigint] NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230101205119_mig_1', N'7.0.1')
GO
INSERT [dbo].[Companies] ([ID], [CompanyName], [Status], [OST], [OET], [CreateDate]) VALUES (N'3583d9ad-9795-4a0b-690a-08daece605b9', N'Company 1', 1, CAST(N'2023-01-02T17:00:00.0000000' AS DateTime2), CAST(N'2023-01-02T19:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Companies] ([ID], [CompanyName], [Status], [OST], [OET], [CreateDate]) VALUES (N'6855fcb2-fbf5-4e80-690b-08daece605b9', N'Company 2', 1, CAST(N'2023-01-02T15:00:00.0000000' AS DateTime2), CAST(N'2023-01-02T19:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Companies] ([ID], [CompanyName], [Status], [OST], [OET], [CreateDate]) VALUES (N'a1a07124-5c9c-4ee4-690c-08daece605b9', N'Company 3', 0, CAST(N'2023-01-02T23:00:00.0000000' AS DateTime2), CAST(N'2023-01-02T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Companies] ([ID], [CompanyName], [Status], [OST], [OET], [CreateDate]) VALUES (N'2e2ab481-6c35-46a1-690d-08daece605b9', N'Company 5', 0, CAST(N'2023-01-02T20:00:00.0000000' AS DateTime2), CAST(N'2023-01-02T22:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Companies] ([ID], [CompanyName], [Status], [OST], [OET], [CreateDate]) VALUES (N'a5da0c41-5f0f-43cf-690e-08daece605b9', N'Company 6', 1, CAST(N'2023-01-02T20:00:00.0000000' AS DateTime2), CAST(N'2023-01-02T22:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Companies] ([ID], [CompanyName], [Status], [OST], [OET], [CreateDate]) VALUES (N'abc64fce-5ea3-44eb-690f-08daece605b9', N'Company 7', 0, CAST(N'2023-01-02T21:00:00.0000000' AS DateTime2), CAST(N'2023-01-02T22:30:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Companies] ([ID], [CompanyName], [Status], [OST], [OET], [CreateDate]) VALUES (N'143e291c-10b9-4c83-6910-08daece605b9', N'Company 8', 1, CAST(N'2023-01-02T21:30:00.0000000' AS DateTime2), CAST(N'2023-01-02T22:45:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Companies] ([ID], [CompanyName], [Status], [OST], [OET], [CreateDate]) VALUES (N'b647c0c2-b47a-465e-6911-08daece605b9', N'Company 9', 1, CAST(N'2023-01-02T21:55:00.0000000' AS DateTime2), CAST(N'2023-01-02T00:15:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Companies] ([ID], [CompanyName], [Status], [OST], [OET], [CreateDate]) VALUES (N'e3aebce9-ef62-4b80-6912-08daece605b9', N'Company 10', 0, CAST(N'2023-01-02T14:55:00.0000000' AS DateTime2), CAST(N'2023-01-02T22:15:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Companies_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Companies] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Companies_CompanyID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Products_ProductID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Companies_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Companies] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Companies_CompanyID]
GO
