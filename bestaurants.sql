USE [Bestaurants]
GO
/****** Object:  Table [dbo].[cuisines]    Script Date: 6/8/2017 11:55:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuisines](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[restaurants]    Script Date: 6/8/2017 11:55:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restaurants](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[cuisine_id] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[cuisines] ON 

INSERT [dbo].[cuisines] ([id], [name]) VALUES (26, N'The best')
INSERT [dbo].[cuisines] ([id], [name]) VALUES (27, N'The best')
INSERT [dbo].[cuisines] ([id], [name]) VALUES (28, N'The Worst')
SET IDENTITY_INSERT [dbo].[cuisines] OFF
SET IDENTITY_INSERT [dbo].[restaurants] ON 

INSERT [dbo].[restaurants] ([id], [name], [cuisine_id]) VALUES (12, N'Good', 26)
INSERT [dbo].[restaurants] ([id], [name], [cuisine_id]) VALUES (13, N'Bad', 28)
SET IDENTITY_INSERT [dbo].[restaurants] OFF
