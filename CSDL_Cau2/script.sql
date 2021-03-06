USE [Quanlyhoc1]
GO
/****** Object:  Table [dbo].[DangKyHoc]    Script Date: 12/9/2020 8:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyHoc](
	[MaDK] [int] IDENTITY(1,1) NOT NULL,
	[MaSV] [int] NOT NULL,
	[MaMon] [int] NOT NULL,
	[NamHK] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_DangKyHoc] PRIMARY KEY CLUSTERED 
(
	[MaDK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhoaDaoTao]    Script Date: 12/9/2020 8:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaDaoTao](
	[MaKhoa] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhoaDaoTao] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/9/2020 8:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMon] [int] IDENTITY(1,1) NOT NULL,
	[MaKhoa] [int] NOT NULL,
	[TenMon] [nvarchar](50) NULL,
	[SoTinChi] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/9/2020 8:37:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [int] IDENTITY(1,1) NOT NULL,
	[MaKhoa] [int] NOT NULL,
	[LopBC] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DangKyHoc] ON 

INSERT [dbo].[DangKyHoc] ([MaDK], [MaSV], [MaMon], [NamHK], [GhiChu]) VALUES (1, 1, 1, N'2019-2020', NULL)
INSERT [dbo].[DangKyHoc] ([MaDK], [MaSV], [MaMon], [NamHK], [GhiChu]) VALUES (2, 2, 1, N'2018-2020', NULL)
INSERT [dbo].[DangKyHoc] ([MaDK], [MaSV], [MaMon], [NamHK], [GhiChu]) VALUES (3, 2, 1, N'2017-2018', NULL)
SET IDENTITY_INSERT [dbo].[DangKyHoc] OFF
SET IDENTITY_INSERT [dbo].[KhoaDaoTao] ON 

INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (1, N'CNTT', N'09234579')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (2, N'GDMN', N'03456234')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (3, N'Kinh tế', N'')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (4, N'Kế toán', N'034562789')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (5, N'Ngôn ngữ anh', N'098705656')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (6, N'Luật', N'0967452345')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (7, N'GDTH', N'034562789')
SET IDENTITY_INSERT [dbo].[KhoaDaoTao] OFF
SET IDENTITY_INSERT [dbo].[MonHoc] ON 

INSERT [dbo].[MonHoc] ([MaMon], [MaKhoa], [TenMon], [SoTinChi], [GhiChu]) VALUES (1, 1, N'Lập trình Web', 3, NULL)
INSERT [dbo].[MonHoc] ([MaMon], [MaKhoa], [TenMon], [SoTinChi], [GhiChu]) VALUES (2, 2, N'Hệ điều hành', 4, NULL)
INSERT [dbo].[MonHoc] ([MaMon], [MaKhoa], [TenMon], [SoTinChi], [GhiChu]) VALUES (3, 3, N'Lập trình Java', 3, NULL)
SET IDENTITY_INSERT [dbo].[MonHoc] OFF
SET IDENTITY_INSERT [dbo].[SinhVien] ON 

INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (1, 3, N'58K2', N'Doãn Hải My', N'04/09/1999', N'Hà Nội')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (2, 5, N'58B', N'Trần Phương Linh', N'09/09/1998', N'Nghĩa Đàn')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (4, 2, N'58A', N'Nguyen mai phuong', N'09/09/1998', N'Vinh')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (5, 4, N'57B1', N'Trần Gia Huy', N'23/09/2001', N'Nghĩa Đàn')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (6, 1, N'58K2', N'Nguyễn Hải Yến', N'04/09/1999', N'Hà Tĩnh')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (7, 1, N'58K1', N'Trần Gia Huy', N'04/09/1999', N'Nghĩa Đàn')
SET IDENTITY_INSERT [dbo].[SinhVien] OFF
ALTER TABLE [dbo].[DangKyHoc]  WITH CHECK ADD  CONSTRAINT [FK_DangKyHoc_MonHoc] FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonHoc] ([MaMon])
GO
ALTER TABLE [dbo].[DangKyHoc] CHECK CONSTRAINT [FK_DangKyHoc_MonHoc]
GO
ALTER TABLE [dbo].[DangKyHoc]  WITH CHECK ADD  CONSTRAINT [FK_DangKyHoc_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[DangKyHoc] CHECK CONSTRAINT [FK_DangKyHoc_SinhVien]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_KhoaDaoTao] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[KhoaDaoTao] ([MaKhoa])
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_KhoaDaoTao]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_KhoaDaoTao] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[KhoaDaoTao] ([MaKhoa])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_KhoaDaoTao]
GO
