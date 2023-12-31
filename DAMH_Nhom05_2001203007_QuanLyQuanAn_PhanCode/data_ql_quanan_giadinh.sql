USE [master]
GO
/****** Object:  Database [QUANLYQUANAN]    Script Date: 9/7/2023 10:26:47 PM ******/
CREATE DATABASE [QUANLYQUANAN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLYQUANAN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QUANLYQUANAN.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QUANLYQUANAN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QUANLYQUANAN_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QUANLYQUANAN] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYQUANAN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYQUANAN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYQUANAN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYQUANAN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYQUANAN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QUANLYQUANAN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYQUANAN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET RECOVERY FULL 
GO
ALTER DATABASE [QUANLYQUANAN] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYQUANAN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYQUANAN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYQUANAN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYQUANAN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QUANLYQUANAN', N'ON'
GO
USE [QUANLYQUANAN]
GO
/****** Object:  Table [dbo].[BANAN]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BANAN](
	[MABAN] [char](10) NOT NULL,
	[SOCHONGOI] [int] NULL,
	[TRANGTHAI] [nvarchar](30) NULL,
 CONSTRAINT [PK_BANAN] PRIMARY KEY CLUSTERED 
(
	[MABAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BoPhanNhanVien]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BoPhanNhanVien](
	[MaBP] [char](10) NOT NULL,
	[TenBP] [nvarchar](40) NULL,
 CONSTRAINT [PK_MaBP] PRIMARY KEY CLUSTERED 
(
	[MaBP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietThucPham]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietThucPham](
	[MaPhieu] [char](10) NOT NULL,
	[MaTP] [char](10) NOT NULL,
	[SOLUONGTHUCPHAM] [float] NULL,
	[DONGIATHUCPHAM] [float] NULL,
 CONSTRAINT [PK_ChiTietThucPham] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC,
	[MaTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietYeuCau]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietYeuCau](
	[MaPYC] [char](10) NOT NULL,
	[MaMA] [char](10) NOT NULL,
	[DONGIA] [float] NULL,
	[SOLUONG] [int] NULL,
 CONSTRAINT [PF_ChiTietYeuCau] PRIMARY KEY CLUSTERED 
(
	[MaPYC] ASC,
	[MaMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [char](10) NOT NULL,
	[NGAYLAP] [datetime] NULL,
	[MANV] [char](10) NOT NULL,
	[MaPYC] [char](10) NOT NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [char](10) NOT NULL,
	[TENKH] [nvarchar](40) NULL,
	[SDT] [varchar](11) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MONAN]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MONAN](
	[MaMA] [char](10) NOT NULL,
	[TenMA] [nvarchar](40) NULL,
	[DONVITINH] [nvarchar](10) NULL,
	[GiaBanMA] [float] NULL,
	[MaNhomMA] [char](10) NOT NULL,
	[TRANGTHAI] [nvarchar](10) NULL,
	[HINHANH] [varchar](20) NULL,
 CONSTRAINT [PK_MONAN] PRIMARY KEY CLUSTERED 
(
	[MaMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [char](10) NOT NULL,
	[TenNCC] [nvarchar](40) NULL,
	[DiaChiNCC] [nvarchar](40) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [char](10) NOT NULL,
	[TENNV] [nvarchar](40) NULL,
	[GIOITINH] [nchar](3) NULL,
	[NAMSINH] [datetime] NULL,
	[DIACHI] [nvarchar](40) NULL,
	[MaBP] [char](10) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhomMonAn]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhomMonAn](
	[MaNhomMA] [char](10) NOT NULL,
	[TenNhomMA] [nvarchar](40) NULL,
 CONSTRAINT [PK_NhomMonAn] PRIMARY KEY CLUSTERED 
(
	[MaNhomMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuNhapThucPham]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuNhapThucPham](
	[MaPhieu] [char](10) NOT NULL,
	[NgayNhapPhieu] [datetime] NULL,
	[TenPhieu] [nvarchar](40) NULL,
	[MANV] [char](10) NOT NULL,
	[MaNCC] [char](10) NOT NULL,
 CONSTRAINT [PK_PhieuNhapThucPham] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuYeuCau]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuYeuCau](
	[MaPYC] [char](10) NOT NULL,
	[MANV] [char](10) NOT NULL,
	[NgayYC] [datetime] NULL,
	[MABAN] [char](10) NOT NULL,
	[TrangThai] [nvarchar](30) NULL,
	[MaKH] [char](10) NOT NULL,
 CONSTRAINT [PK_PHIEUYEUCAU] PRIMARY KEY CLUSTERED 
(
	[MaPYC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TENTAIKHOAN] [varchar](20) NOT NULL,
	[MATKHAU] [varchar](40) NOT NULL,
	[QUYEN] [varchar](20) NULL,
	[MANV] [char](10) NULL,
	[TrangThai] [nvarchar](30) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[TENTAIKHOAN] ASC,
	[MATKHAU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THUCPHAM]    Script Date: 9/7/2023 10:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THUCPHAM](
	[MaTP] [char](10) NOT NULL,
	[TenTP] [nvarchar](10) NULL,
	[DONVITINH] [nvarchar](10) NULL,
 CONSTRAINT [PK_THUCPHAM] PRIMARY KEY CLUSTERED 
(
	[MaTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'001       ', 4, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'002       ', 4, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'003       ', 2, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'004       ', 8, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'005       ', 6, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'006       ', 4, N'Đã Có Khách')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'007       ', 8, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'008       ', 4, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'009       ', 10, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'010       ', 6, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'011       ', 10, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'012       ', 2, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'013       ', 4, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'014       ', 6, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'015       ', 10, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'016       ', 10, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'017       ', 4, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'018       ', 6, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'019       ', 6, N'Trống')
INSERT [dbo].[BANAN] ([MABAN], [SOCHONGOI], [TRANGTHAI]) VALUES (N'020       ', 4, N'Trống')
INSERT [dbo].[BoPhanNhanVien] ([MaBP], [TenBP]) VALUES (N'BP001     ', N'Phục vụ')
INSERT [dbo].[BoPhanNhanVien] ([MaBP], [TenBP]) VALUES (N'BP002     ', N'Thu ngân')
INSERT [dbo].[BoPhanNhanVien] ([MaBP], [TenBP]) VALUES (N'BP003     ', N'Tạp vụ')
INSERT [dbo].[BoPhanNhanVien] ([MaBP], [TenBP]) VALUES (N'BP004     ', N'Bếp')
INSERT [dbo].[BoPhanNhanVien] ([MaBP], [TenBP]) VALUES (N'BP005     ', N'Quản lý')
INSERT [dbo].[BoPhanNhanVien] ([MaBP], [TenBP]) VALUES (N'BP006     ', N'Bảo vệ')
INSERT [dbo].[BoPhanNhanVien] ([MaBP], [TenBP]) VALUES (N'BP007     ', N'Lao công')
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'1         ', N'TP001     ', 10, 500000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'10        ', N'TP010     ', 10, 10000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'11        ', N'TP011     ', 8, 20000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'12        ', N'TP012     ', 3, 50000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'13        ', N'TP013     ', 8, 10000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'14        ', N'TP014     ', 7, 5000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'15        ', N'TP015     ', 6, 8000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'16        ', N'TP016     ', 10, 50000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'17        ', N'TP017     ', 10, 150000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'18        ', N'TP018     ', 10, 50000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'19        ', N'TP019     ', 11, 24000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'2         ', N'TP002     ', 5, 50000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'20        ', N'TP020     ', 10, 150000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'3         ', N'TP003     ', 15, 60000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'4         ', N'TP004     ', 16, 30000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'5         ', N'TP005     ', 10, 100000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'6         ', N'TP006     ', 12, 40000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'7         ', N'TP007     ', 10, 50000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'8         ', N'TP008     ', 10, 50000)
INSERT [dbo].[ChiTietThucPham] ([MaPhieu], [MaTP], [SOLUONGTHUCPHAM], [DONGIATHUCPHAM]) VALUES (N'9         ', N'TP009     ', 10, 50000)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'01        ', N'MA005     ', 250000, 3)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'01        ', N'MA007     ', 30000, 2)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'01        ', N'MA017     ', 110000, 2)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'03        ', N'MA002     ', 150000, 2)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'03        ', N'MA005     ', 250000, 3)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'04        ', N'MA005     ', 250000, 4)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'04        ', N'MA011     ', 250000, 3)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'06        ', N'MA005     ', 250000, 2)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'06        ', N'MA008     ', 50000, 2)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'07        ', N'MA005     ', 250000, 2)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'07        ', N'MA017     ', 110000, 2)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'08        ', N'MA006     ', 30000, 2)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'08        ', N'MA010     ', 550000, 2)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'09        ', N'MA005     ', 250000, 2)
INSERT [dbo].[ChiTietYeuCau] ([MaPYC], [MaMA], [DONGIA], [SOLUONG]) VALUES (N'09        ', N'MA017     ', 110000, 3)
INSERT [dbo].[HOADON] ([MAHD], [NGAYLAP], [MANV], [MaPYC]) VALUES (N'HD001     ', CAST(0x0000B07300000000 AS DateTime), N'NV014     ', N'08        ')
INSERT [dbo].[HOADON] ([MAHD], [NGAYLAP], [MANV], [MaPYC]) VALUES (N'HD002     ', CAST(0x0000B07300000000 AS DateTime), N'NV014     ', N'01        ')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH001     ', N'Nguyễn Văn A', N'0110021122')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH002     ', N'Nguyễn Văn Nam', N'0110021132')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH003     ', N'Trần Thị Tuyết', N'0640021122')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH004     ', N'Nguyễn Lý', N'0134567189')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH005     ', N'Nguyễn Văn Đậu', N'0113311122')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH006     ', N'Nguyễn Văn B', N'0110013222')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH007     ', N'Trần Tâm', N'0321459816')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH008     ', N'Trương Trung', N'0123456789')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH009     ', N'Nguyễn Tuấn', N'0110021141')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH010     ', N'Đỗ Xuân Thủy', N'0269161651')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH011     ', N'Trần Khánh An', N'0261651650')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH012     ', N'Mai Quốc Khánh', N'0236849850')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH013     ', N'Nguyễn Kim Anh', N'0156848880')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH014     ', N'Trần Văn Út', N'087944450')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH015     ', N'Bùi Đức Chí', N'098426156')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH016     ', N'Nguyễn Văn C', N'023684985')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH017     ', N'Nguyễn Lê Tuấn', N'0110021122')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH018     ', N'Nguyễn Đức Thịnh', N'087944450')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH019     ', N'Trần Hậu', N'0236087240')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH020     ', N'Nguyễn Thị Châu', N'0681142515')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT]) VALUES (N'KH021     ', N'gfgujhj', N'45475')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA001     ', N'Bún đậu mắm tôm', N'Dĩa', 50000, N'001       ', N'Còn', N'bundau.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA002     ', N'Bún Bò', N'Tô', 150000, N'001       ', N'Còn', N'bunBo.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA003     ', N'Phở', N'Tô', 250000, N'001       ', N'Còn', N'pho.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA004     ', N'Bún Thịt Nướng', N'Dĩa', 100000, N'001       ', N'Còn', N'bunThitNuong.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA005     ', N'Cá Chép Chiên Giòn', N'Con', 250000, N'002       ', N'Còn', N'caChepChienGion.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA006     ', N'Cá Chép Hấp Xì Dầu', N'Con', 30000, N'002       ', N'Còn', N'caChepHap.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA007     ', N'Cá Nướng', N'Con', 30000, N'002       ', N'Còn', N'caNuong.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA008     ', N'Mực Tẩm Bột Chiên Giòn', N'Dĩa', 50000, N'002       ', N'Còn', N'mucTamBot.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA009     ', N'Bò Sốt Vang', N'Tô', 20000, N'003       ', N'Còn', N'boSotVang.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA010     ', N'Cà Ri Bò', N'Tô', 550000, N'003       ', N'Còn', N'cariBo.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA011     ', N'Chả Ram Tôm Đất', N'Dĩa', 250000, N'003       ', N'Còn', N'chaRamTom.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA012     ', N'Gà Hấp Muối', N'Con', 230000, N'003       ', N'Còn', N'gaHapMuoi.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA013     ', N'Lẩu Gà Lá É', N'Nồi', 80000, N'003       ', N'Còn', N'lauGaLae.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA014     ', N'Lẩu Hải Sản', N'Nồi', 150000, N'003       ', N'Còn', N'lauHaiSan.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA015     ', N'Lẩu Thái Chua Cay', N'Nồi', 230000, N'003       ', N'Còn', N'lauThaiChuaCay.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA016     ', N'Sường Nướng', N'Dĩa', 90000, N'003       ', N'Còn', N'suonNuong.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA017     ', N'Thịt Kho Mắm Ruốt', N'Tộ', 110000, N'003       ', N'Còn', N'thitKhoMam.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA018     ', N'Vịt Nướng', N'Con', 20000, N'003       ', N'Còn', N'vitNuong.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA019     ', N'Vịt Quay Bắc Kinh', N'Con', 70000, N'003       ', N'Còn', N'vitQuayBK.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA020     ', N'Vịt Xáo Măng', N'Nồi', 900000, N'003       ', N'Còn', N'vitXaoMang.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA021     ', N'7 Up', N'Lon', 10000, N'004       ', N'Còn', N'7up.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA022     ', N'CoCa CoLa', N'Lon', 10000, N'004       ', N'Còn', N'coca.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA023     ', N'Pessi', N'Lon', 10000, N'004       ', N'Còn', N'pessi.jpg')
INSERT [dbo].[MONAN] ([MaMA], [TenMA], [DONVITINH], [GiaBanMA], [MaNhomMA], [TRANGTHAI], [HINHANH]) VALUES (N'MA024     ', N'Sprite', N'Lon', 10000, N'004       ', N'Còn', N'sprite.jpg')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC001    ', N'Thực Phẩm Tấn Tài', N'TP.HCM')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC002    ', N'Thực Phẩm Thiên Linh Thanh', N'TP.HCM')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC003    ', N'Thực Phẩm Zin Food', N'TP.HCM')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC004    ', N'TThực Phẩm Xanh Đồng Nai', N'Đồng Nai')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC005    ', N'Công Ty TNHH Sơn Phát', N'TP.HCM')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC006    ', N'Công Ty Thực Phẩm Tân Vĩnh Phát', N'TP.HCM')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC007    ', N'Công Ty TNHH Trung Hiếu', N'TP.HCM')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC008    ', N'Thực Phẩm Tươi Sống Hùng Nguyên', N'TP.HCM')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC009    ', N'Thực Phẩm Tân Vĩnh Phát', N'TP.HCM')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC010    ', N'Thực Phẩm Trung Hiếu', N'TP.HCM')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC011    ', N'Nhà Cung Cấp Thực Phẩm Tươi Sống ', N'Hà Nội')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC012    ', N'Thực Phẩm Long Trọng Tiến ', N'Bắc Ninh')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC013    ', N'Thực Phẩm Chân Thành ', N'TP.HCM')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC014    ', N'Suất Ăn Công Nghiệp Tân Khôi Nguyên', N'Tây Ninh')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC015    ', N'Suất Ăn Công Nghiệp Tân Việt', N'Long An')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC016    ', N'Thực Phẩm Nam Hà Nội', N'Hà Nội')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC017    ', N'Thực Phẩm Công Nghiệp', N'TP.HCM')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC018    ', N'Suất Ăn Công Nghiệp Long An', N'Long An')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC019    ', N'Nhà Cung Cấp Hải Sản', N'TP.HCM')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChiNCC]) VALUES (N'NCC020    ', N'Thực Phẩm Xanh TP.HCM', N'TP.HCM')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV001     ', N'Nguyễn Văn Nam', N'Nam', CAST(0x00007E4E00000000 AS DateTime), N'Tây Ninh', N'BP001     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV002     ', N'Nguyễn Văn Tèo', N'Nam', CAST(0x0000818400000000 AS DateTime), N'TP.HCM', N'BP001     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV003     ', N'Nguyễn Kim Anh', N'Nữ ', CAST(0x000088E200000000 AS DateTime), N'Hà Nội', N'BP002     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV004     ', N'Lê Huỳnh Phúc', N'Nam', CAST(0x000090F200000000 AS DateTime), N'Long An', N'BP006     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV005     ', N'Châu Hoàng Minh Huy', N'Nam', CAST(0x0000899A00000000 AS DateTime), N'TP.HCM', N'BP006     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV006     ', N'Nguyễn Nguyên Bảo', N'Nam', CAST(0x0000925E00000000 AS DateTime), N'Bình Phước', N'BP001     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV007     ', N'Quang Hậu', N'Nam', CAST(0x0000920700000000 AS DateTime), N'Đồng Nai', N'BP004     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV008     ', N'Trần Hữu Đang', N'Nam', CAST(0x00008B9F00000000 AS DateTime), N'Bến Tre', N'BP007     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV009     ', N' Phạm Thị Yến Nhi', N'Nữ ', CAST(0x0000921E00000000 AS DateTime), N'TP.HCM', N'BP002     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV010     ', N'Mai Quốc Khánh', N'Nam', CAST(0x00007FBB00000000 AS DateTime), N'Tây Ninh', N'BP004     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV011     ', N'Đào Huy', N'Nam', CAST(0x00007E4F00000000 AS DateTime), N'TP.HCM', N'BP007     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV012     ', N'Nguyễn Quốc Bảo', N'Nam', CAST(0x000093B400000000 AS DateTime), N'Hà Nội', N'BP001     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV013     ', N'Xuân Tuấn', N'Nam', CAST(0x00008E9800000000 AS DateTime), N'Đà Nẵng', N'BP005     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV014     ', N'Trương Thành Trung', N'Nam', CAST(0x0000829500000000 AS DateTime), N'Long An', N'BP005     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV015     ', N'Lê Kim Ngọc', N'Nữ ', CAST(0x0000920A00000000 AS DateTime), N'Quảng Trị', N'BP001     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV016     ', N'Lê Tấn Trưởng', N'Nam', CAST(0x00008D5A00000000 AS DateTime), N'Bình Định', N'BP005     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV017     ', N'Trần Minh Tú', N'Nữ ', CAST(0x00007D5C00000000 AS DateTime), N'Tây Ninh', N'BP001     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV018     ', N'Nguyễn Minh Huy', N'Nam', CAST(0x00007E4E00000000 AS DateTime), N'TP.HCM', N'BP007     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV019     ', N'Đỗ Xuân Thủy', N'Nữ ', CAST(0x00007D9B00000000 AS DateTime), N'Đà Nẵng', N'BP001     ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [NAMSINH], [DIACHI], [MaBP]) VALUES (N'NV020     ', N'Trần Lệ Quyên', N'Nữ ', CAST(0x0000920A00000000 AS DateTime), N'Tây Ninh', N'BP001     ')
INSERT [dbo].[NhomMonAn] ([MaNhomMA], [TenNhomMA]) VALUES (N'001       ', N'Ăn Sáng')
INSERT [dbo].[NhomMonAn] ([MaNhomMA], [TenNhomMA]) VALUES (N'002       ', N'Hải Sản')
INSERT [dbo].[NhomMonAn] ([MaNhomMA], [TenNhomMA]) VALUES (N'003       ', N'Món Chính')
INSERT [dbo].[NhomMonAn] ([MaNhomMA], [TenNhomMA]) VALUES (N'004       ', N'Thức Uống')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'1         ', CAST(0x0000900500000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 11/12/2000', N'NV001     ', N'NCC001    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'10        ', CAST(0x0000942E00000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 11/11/2003', N'NV009     ', N'NCC009    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'11        ', CAST(0x0000AF6800000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 11/12/2022', N'NV001     ', N'NCC001    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'12        ', CAST(0x00009F3900000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 08/08/2011', N'NV001     ', N'NCC001    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'13        ', CAST(0x0000901700000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 29/12/2000', N'NV001     ', N'NCC001    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'14        ', CAST(0x00009D2B00000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 28/02/2010', N'NV018     ', N'NCC002    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'15        ', CAST(0x0000A1DA00000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 11/06/2013', N'NV012     ', N'NCC013    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'16        ', CAST(0x0000900A00000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 16/12/2000', N'NV013     ', N'NCC012    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'17        ', CAST(0x0000AF6800000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 11/12/2022', N'NV007     ', N'NCC007    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'18        ', CAST(0x0000AE0E00000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 30/12/2021', N'NV014     ', N'NCC014    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'19        ', CAST(0x0000ACAD00000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 11/01/2021', N'NV015     ', N'NCC015    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'2         ', CAST(0x0000AD8100000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 11/08/2021', N'NV003     ', N'NCC003    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'20        ', CAST(0x00008ED500000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 11/02/2000', N'NV016     ', N'NCC016    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'3         ', CAST(0x0000AC3000000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 08/09/2020', N'NV005     ', N'NCC006    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'4         ', CAST(0x00008F4400000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 01/06/2000', N'NV011     ', N'NCC020    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'5         ', CAST(0x0000AADE00000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 06/10/2019', N'NV010     ', N'NCC019    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'6         ', CAST(0x0000AEB000000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 10/06/2022', N'NV004     ', N'NCC006    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'7         ', CAST(0x0000A9B300000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 11/12/2018', N'NV012     ', N'NCC018    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'8         ', CAST(0x0000A77000000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 11/05/2017', N'NV016     ', N'NCC017    ')
INSERT [dbo].[PhieuNhapThucPham] ([MaPhieu], [NgayNhapPhieu], [TenPhieu], [MANV], [MaNCC]) VALUES (N'9         ', CAST(0x0000A96300000000 AS DateTime), N'Phiếu nhập thực phẩm ngày 22/09/2018', N'NV008     ', N'NCC008    ')
INSERT [dbo].[PhieuYeuCau] ([MaPYC], [MANV], [NgayYC], [MABAN], [TrangThai], [MaKH]) VALUES (N'01        ', N'NV014     ', CAST(0x0000AF8600000000 AS DateTime), N'001       ', N'Ðã Thanh Toán', N'KH001     ')
INSERT [dbo].[PhieuYeuCau] ([MaPYC], [MANV], [NgayYC], [MABAN], [TrangThai], [MaKH]) VALUES (N'02        ', N'NV014     ', CAST(0x0000AF8600000000 AS DateTime), N'001       ', N'Ðã Thanh Toán', N'KH003     ')
INSERT [dbo].[PhieuYeuCau] ([MaPYC], [MANV], [NgayYC], [MABAN], [TrangThai], [MaKH]) VALUES (N'03        ', N'NV014     ', CAST(0x0000B00A00000000 AS DateTime), N'001       ', N'Ðã Thanh Toán', N'KH001     ')
INSERT [dbo].[PhieuYeuCau] ([MaPYC], [MANV], [NgayYC], [MABAN], [TrangThai], [MaKH]) VALUES (N'04        ', N'NV014     ', CAST(0x0000B00A00000000 AS DateTime), N'009       ', N'Ðã Thanh Toán', N'KH009     ')
INSERT [dbo].[PhieuYeuCau] ([MaPYC], [MANV], [NgayYC], [MABAN], [TrangThai], [MaKH]) VALUES (N'05        ', N'NV014     ', CAST(0x0000B00A00000000 AS DateTime), N'009       ', N'Ðã Thanh Toán', N'KH009     ')
INSERT [dbo].[PhieuYeuCau] ([MaPYC], [MANV], [NgayYC], [MABAN], [TrangThai], [MaKH]) VALUES (N'06        ', N'NV014     ', CAST(0x0000B00A00000000 AS DateTime), N'004       ', N'Ðã Thanh Toán', N'KH003     ')
INSERT [dbo].[PhieuYeuCau] ([MaPYC], [MANV], [NgayYC], [MABAN], [TrangThai], [MaKH]) VALUES (N'07        ', N'NV014     ', CAST(0x0000B07300000000 AS DateTime), N'006       ', N'Ðã Thanh Toán', N'KH009     ')
INSERT [dbo].[PhieuYeuCau] ([MaPYC], [MANV], [NgayYC], [MABAN], [TrangThai], [MaKH]) VALUES (N'08        ', N'NV014     ', CAST(0x0000B07300000000 AS DateTime), N'011       ', N'Ðã Thanh Toán', N'KH010     ')
INSERT [dbo].[PhieuYeuCau] ([MaPYC], [MANV], [NgayYC], [MABAN], [TrangThai], [MaKH]) VALUES (N'09        ', N'NV014     ', CAST(0x0000B07300000000 AS DateTime), N'001       ', N'Ðã Thanh Toán', N'KH001     ')
INSERT [dbo].[TAIKHOAN] ([TENTAIKHOAN], [MATKHAU], [QUYEN], [MANV], [TrangThai]) VALUES (N'ADMIN', N'123', N'ADMIN', N'NV014     ', N'OFF')
INSERT [dbo].[TAIKHOAN] ([TENTAIKHOAN], [MATKHAU], [QUYEN], [MANV], [TrangThai]) VALUES (N'NV01', N'001', N'USER', N'NV004     ', N'OFF')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP001     ', N'Bò', N'Kg')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP002     ', N'Cam', N'Kg')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP003     ', N'Bơ', N'Trái')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP004     ', N'Rau', N'Bó')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP005     ', N'Gạo', N'Kg')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP006     ', N'Khoai Tây', N'Số lượng')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP007     ', N'Cà rốt', N'Số lượng')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP008     ', N'Cà chua', N'Số lượng')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP009     ', N'Dưa leo', N'Số lượng')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP010     ', N'Trứng', N'Số lượng')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP011     ', N'Bắp', N'Trái')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP012     ', N'Cải xoăn', N'Kg')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP013     ', N'Chuối', N'Nải')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP014     ', N'Gừng', N'Củ')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP015     ', N'Bơ', N'Hộp')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP016     ', N'Củ cải', N'Kg')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP017     ', N'Dâu Tây', N'Hộp')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP018     ', N'Táo', N'Kg')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP019     ', N'Salad', N'Kg')
INSERT [dbo].[THUCPHAM] ([MaTP], [TenTP], [DONVITINH]) VALUES (N'TP020     ', N'Gà', N'Con')
ALTER TABLE [dbo].[TAIKHOAN] ADD  CONSTRAINT [DF_QUYEN]  DEFAULT ('USER') FOR [QUYEN]
GO
ALTER TABLE [dbo].[TAIKHOAN] ADD  CONSTRAINT [DF_TrangThai]  DEFAULT ('OFF') FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietThucPham]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapThucPham_ChiTietThucPham] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[PhieuNhapThucPham] ([MaPhieu])
GO
ALTER TABLE [dbo].[ChiTietThucPham] CHECK CONSTRAINT [FK_PhieuNhapThucPham_ChiTietThucPham]
GO
ALTER TABLE [dbo].[ChiTietThucPham]  WITH CHECK ADD  CONSTRAINT [FK_THUCPHAM_CHITIETTHUCPHAM] FOREIGN KEY([MaTP])
REFERENCES [dbo].[THUCPHAM] ([MaTP])
GO
ALTER TABLE [dbo].[ChiTietThucPham] CHECK CONSTRAINT [FK_THUCPHAM_CHITIETTHUCPHAM]
GO
ALTER TABLE [dbo].[ChiTietYeuCau]  WITH CHECK ADD  CONSTRAINT [FK_MONAN_ChiTietYeuCau] FOREIGN KEY([MaMA])
REFERENCES [dbo].[MONAN] ([MaMA])
GO
ALTER TABLE [dbo].[ChiTietYeuCau] CHECK CONSTRAINT [FK_MONAN_ChiTietYeuCau]
GO
ALTER TABLE [dbo].[ChiTietYeuCau]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUYEUCAU_ChiTietYeuCau] FOREIGN KEY([MaPYC])
REFERENCES [dbo].[PhieuYeuCau] ([MaPYC])
GO
ALTER TABLE [dbo].[ChiTietYeuCau] CHECK CONSTRAINT [FK_PHIEUYEUCAU_ChiTietYeuCau]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_HOADON] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_NHANVIEN_HOADON]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_PhieuYeuCau_HOADON] FOREIGN KEY([MaPYC])
REFERENCES [dbo].[PhieuYeuCau] ([MaPYC])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_PhieuYeuCau_HOADON]
GO
ALTER TABLE [dbo].[MONAN]  WITH CHECK ADD  CONSTRAINT [FK_NhomMonAn_MONAN] FOREIGN KEY([MaNhomMA])
REFERENCES [dbo].[NhomMonAn] ([MaNhomMA])
GO
ALTER TABLE [dbo].[MONAN] CHECK CONSTRAINT [FK_NhomMonAn_MONAN]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_BoPhanNhanVien_NHANVIEN] FOREIGN KEY([MaBP])
REFERENCES [dbo].[BoPhanNhanVien] ([MaBP])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_BoPhanNhanVien_NHANVIEN]
GO
ALTER TABLE [dbo].[PhieuNhapThucPham]  WITH CHECK ADD  CONSTRAINT [FK_NHACUNGCAP_PhieuNhapThucPham] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhapThucPham] CHECK CONSTRAINT [FK_NHACUNGCAP_PhieuNhapThucPham]
GO
ALTER TABLE [dbo].[PhieuNhapThucPham]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_PhieuNhapThucPham] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PhieuNhapThucPham] CHECK CONSTRAINT [FK_NHANVIEN_PhieuNhapThucPham]
GO
ALTER TABLE [dbo].[PhieuYeuCau]  WITH CHECK ADD  CONSTRAINT [FK_PhieuYeuCau_BANAN] FOREIGN KEY([MABAN])
REFERENCES [dbo].[BANAN] ([MABAN])
GO
ALTER TABLE [dbo].[PhieuYeuCau] CHECK CONSTRAINT [FK_PhieuYeuCau_BANAN]
GO
ALTER TABLE [dbo].[PhieuYeuCau]  WITH CHECK ADD  CONSTRAINT [FK_PhieuYeuCau_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[PhieuYeuCau] CHECK CONSTRAINT [FK_PhieuYeuCau_KHACHHANG]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_NHANVIEN]
GO
USE [master]
GO
ALTER DATABASE [QUANLYQUANAN] SET  READ_WRITE 
GO
