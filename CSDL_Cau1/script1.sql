USE [LOGIN]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 12/9/2020 9:12:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Đăng Nhập] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([UserID], [UserName], [PassWord], [Status]) VALUES (1, N'Hải My', N'haimy2002', NULL)
INSERT [dbo].[Login] ([UserID], [UserName], [PassWord], [Status]) VALUES (2, N'Thu Thảo', N'thuthao1997', NULL)
INSERT [dbo].[Login] ([UserID], [UserName], [PassWord], [Status]) VALUES (3, N'Hồng Ngân', N'hongngan99', NULL)
INSERT [dbo].[Login] ([UserID], [UserName], [PassWord], [Status]) VALUES (4, N'Gia Huy', N'giahuy2000', NULL)
SET IDENTITY_INSERT [dbo].[Login] OFF
