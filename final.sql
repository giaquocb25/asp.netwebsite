
USE [BTCKWeb1]
GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 3/6/2022 5:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CHITIETDONTHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUDE]    Script Date: 3/6/2022 5:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 3/6/2022 5:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 3/6/2022 5:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Email] [varchar](50) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 3/6/2022 5:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 3/6/2022 5:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Mota] [nvarchar](max) NULL,
	[Anhbia] [nvarchar](max) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Soluongton] [int] NULL,
	[MaCD] [int] NULL,
	[MaNCC] [int] NULL,
	[DaXoa] [bit] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (1, N'Card Đồ Họa')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (2, N'CPU')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (3, N'Ram')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (4, N'Ổ Cứng')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (5, N'PSU')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (6, N'Vỏ Case')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (7, N'Tản Nhiệt')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (8, N'Màn Hình')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (9, N'Laptop-Tablet')
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (1, N'bgq', N'bgq123', N'123', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (1, N'Nvidia', N'USA', N'0942118795')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (2, N'Asus', N'TaiWan', N'0942118795')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (3, N'MSI', N'ShangHai', N'0942118795')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (6, N'MSI Amd', N'USA', N'0942118795')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (1, N'Gigabyte GeForce GTX 1660 SUPER MINI ITX OC 6G
', CAST(0 AS Decimal(18, 0)), N'Thông tin chung:

Nhà sản xuất: GIGABYTE
Mã sản phẩm: GV-N166SOC-6GD
Bảo hành: 36 tháng
', N'https://product.hstatic.net/1000026716/product/01_4783c3db87b3417893307d6a943568cb.png', CAST(N'2021-09-20T00:00:00.000' AS DateTime), 50, 1, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (2, N'ASUS Phoenix GeForce GTX 1660 OC 6GB
', CAST(10490000 AS Decimal(18, 0)), N'Thông tin chung:

Nhà sản xuất: ASUS
Mã sản phẩm: PH-GTX1660-O6G
Bảo hành: 36 tháng', N'https://product.hstatic.net/1000026716/product/nnm00jhvutes6d3z_setting_xxx_0_90_end_1000_1817b56df6054775961b30f39cbe3435.png', CAST(N'2021-09-20T00:00:00.000' AS DateTime), 50, 2, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (3, N'MSI GeForce GTX 1660 Ti ARMOR 6G OC
', CAST(13590000 AS Decimal(18, 0)), N'Thông tin chung:

Nhà sản xuất: MSI
Bảo hành: 36 tháng
', N'https://product.hstatic.net/1000026716/product/3_7901aaaa606140b1b836db4e7920b41b.jpg', CAST(N'2021-09-20T00:00:00.000' AS DateTime), 105, 3, 3, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (4, N'MSI Radeon RX 6600 XT GAMING X 8G
', CAST(15490000 AS Decimal(18, 0)), N'Thông tin chung:

Hãng sản xuất: MSI
Bảo hành: 36 Tháng', N'https://product.hstatic.net/1000026716/product/3_4ed4a2d8866f466d8da411b8fe0f11ed.jpg', CAST(N'2021-09-20T00:00:00.000' AS DateTime), 50, 4, 6, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (5, N'ASUS Phoenix GeForce GTX 1660 OC 6GB
', CAST(15490000 AS Decimal(18, 0)), N'Thông tin chung:

Hãng sản xuất: MSI
Bảo hành: 36 Tháng', N'https://product.hstatic.net/1000026716/product/3_4ed4a2d8866f466d8da411b8fe0f11ed.jpg', CAST(N'2021-09-20T00:00:00.000' AS DateTime), 105, 1, 1, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (6, N'Gigabyte GeForce GTX 1660 SUPER MINI ITX OC 6G
', CAST(10490000 AS Decimal(18, 0)), N'Thông tin chung:

Nhà sản xuất: GIGABYTE
Mã sản phẩm: GV-N166SOC-6GD
Bảo hành: 36 tháng
', N'https://product.hstatic.net/1000026716/product/nnm00jhvutes6d3z_setting_xxx_0_90_end_1000_1817b56df6054775961b30f39cbe3435.png', CAST(N'2021-09-20T00:00:00.000' AS DateTime), 50, 2, 2, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (7, N'MSI Radeon RX 6600 XT GAMING X 8G
', CAST(0 AS Decimal(18, 0)), N'Thông tin chung:

Nhà sản xuất: GIGABYTE
Mã sản phẩm: GV-N166SOC-6GD
Bảo hành: 36 tháng
', N'https://product.hstatic.net/1000026716/product/nnm00jhvutes6d3z_setting_xxx_0_90_end_1000_1817b56df6054775961b30f39cbe3435.png', CAST(N'2021-09-20T00:00:00.000' AS DateTime), 10, 3, 3, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (8, N'MSI GeForce GTX 1660 Ti ARMOR 6G OC
', CAST(15000000 AS Decimal(18, 0)), N'Thông tin chung:

Nhà sản xuất: GIGABYTE
Mã sản phẩm: GV-N166SOC-6GD
Bảo hành: 36 tháng
', N'https://product.hstatic.net/1000026716/product/3_7901aaaa606140b1b836db4e7920b41b.jpg', CAST(N'2021-09-20T00:00:00.000' AS DateTime), 60, 4, 6, NULL)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_SACH] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_SACH]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_Chude] FOREIGN KEY([MaCD])
REFERENCES [dbo].[CHUDE] ([MaCD])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_Chude]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_NhaXB] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_NhaXB]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Dongi__440B1D61] CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [CK__CHITIETDO__Dongi__440B1D61]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Soluo__4316F928] CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [CK__CHITIETDO__Soluo__4316F928]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [CK__SANPHAM__Giaban__20C1E124] CHECK  (([Giaban]>=(0)))
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [CK__SANPHAM__Giaban__20C1E124]
GO
