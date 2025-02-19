USE [Department]
GO
/****** Object:  Table [dbo].[DepartmentTb]    Script Date: 12-06-2024 22:50:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentTb](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[image] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DepartmentTb] ON 

INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (1, 0, N'Administration', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (2, 0, N'Marketing', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (3, 0, N'Sales', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (4, 1, N'Administration Team 1', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (5, 1, N'Administration Team 2', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (6, 1, N'Administration Team 3', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (7, 2, N'Marketing Team 1', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (8, 2, N'Marketing Team 2', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (9, 2, N'Marketing Team 3', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (10, 3, N'Sales Team 1', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (11, 3, N'Sales Team 2', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (12, 3, N'Sales Team 3', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (13, 4, N'Administration Team 1.1', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (14, 4, N'Administration Team 1.2', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (15, 4, N'Administration Team 1.3', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (16, 5, N'Administration Team 2.1', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (17, 5, N'Administration Team 2.2', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (18, 10, N'Administration Team 1.1.1', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (19, 6, N'Administration Team 3.1', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (20, 6, N'Administration Team 3.2', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (21, 6, N'Administration Team 3.3', NULL)
INSERT [dbo].[DepartmentTb] ([Id], [ParentId], [Name], [image]) VALUES (22, 19, N'Administration Team 3.1.1', NULL)
SET IDENTITY_INSERT [dbo].[DepartmentTb] OFF
GO
