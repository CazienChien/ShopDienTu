create database QLDoDienTu1
use QLDoDienTu1

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tAnhSP](
	[MaSP] [int] NOT NULL,
	[TenFileAnh] [nvarchar](100) NOT NULL,
	[ViTri] [smallint] NULL,
 CONSTRAINT [PK_tAnhSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tDanhMucSP](
	[MaSP] [int] NOT NULL,
	[TenSP] [nvarchar](150) NULL,
	[MaHangSX] [int] NULL,
	[MaLoai] [int] NULL,
	[AnhDaiDien] [nvarchar](1000) NULL,
	[MaMauSac] [int] NULL,
	[DonGiaBan] [float] NULL,
	[GiamGia] [float] NULL,
	[SLTon] [int] NULL,
	[GioiThieuSP] [nvarchar](255) NULL,
 CONSTRAINT [PK_tDanhMucSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHangSX](
	[MaHangSX] [int] NOT NULL,
	[HangSX] [nvarchar](100) NULL,
 CONSTRAINT [PK_tHangSX] PRIMARY KEY CLUSTERED 
(
	[MaHangSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiSP](
	[MaLoai] [int] NOT NULL,
	[Loai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tMauSac](
	[MaMauSac] [int] NOT NULL,
	[TenMauSac] [nvarchar](100) NULL,
 CONSTRAINT [PK_tMauSac] PRIMARY KEY CLUSTERED 
(
	[MaMauSac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhanVien](
	[MaNhanVien] [int] NOT NULL,
	[username] [char](255) NULL,
	[TenNhanVien] [nvarchar](100) NULL,
	[NgaySinh] [datetime] NULL,
	[SoDienThoai] [char](15) NULL,
	[Email] nvarchar(255) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[ChucVu] [nvarchar](100) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]





GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUser](
	[username] [char](255) NOT NULL,
	[password] [char](256) NOT NULL,
	[LoaiUser] [tinyint] NULL,
 CONSTRAINT [PK_tUser] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]






GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKhachHang](
	[MaKhachHang] [int] NOT NULL,
	[username] [char](255) NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[NgaySinh] [datetime] NULL,
	[Email] nvarchar(255) NULL,
	[SoDienThoai] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHoaDonBan](
	[MaHoaDon] [int] NOT NULL,
	[NgayLap] [datetime] NULL,
	[MaKhachHang] [int] NULL,
	[MaNhanVien] [int] NULL,
	[TongTienHD] [money] NULL,
	[GiamGiaHD] [float] NULL,
	[PhuongThucThanhToan] [tinyint] NULL,
	[TinhTrang] nvarchar(255) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietHDB](
	[MaHoaDon] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaBan] [money] NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


alter table tNhanVien
ADD CONSTRAINT FK_MaUser
foreign key (username) references tUser(username)


alter table tKhachHang
ADD CONSTRAINT FK_MaUserKH
foreign key (username) references tUser(username)



alter table tDanhMucSP
ADD CONSTRAINT FK_MaHangSX
foreign key (MaHangSX) references tHangSX(MaHangSX)

alter table tDanhMucSP
ADD CONSTRAINT FK_MaLoai
foreign key (MaLoai) references tLoaiSP(MaLoai)

alter table tDanhMucSP
ADD CONSTRAINT FK_MaMauSac
foreign key (MaMauSac) references tMauSac(MaMauSac)


alter table tAnhSP
ADD CONSTRAINT FK_MaAnh
foreign key (MaSP) references tDanhMucSP(MaSP)



alter table tHoaDonBan
ADD CONSTRAINT FK_MaKhachHang
foreign key (MaKhachHang) references tKhachHang(MaKhachHang)

alter table tHoaDonBan
ADD CONSTRAINT FK_MaNhanVien
foreign key (MaNhanVien) references tNhanVien(MaNhanVien)

alter table tChiTietHDB
ADD CONSTRAINT FK_MaSPHD
foreign key (MaSP) references tDanhMucSP(MaSP)

alter table tChiTietHDB
ADD CONSTRAINT FK_MaDonHang1
foreign key (MaHoaDon) references tHoaDonBan(MaHoaDon)


insert into tLoaiSP(MaLoai,Loai)
values (1,'Laptop'),
		(2,'SmartPhone'),
		(3,'HeadPhone'),
		(4,'KeyBoard')


insert into tMauSac(MaMauSac,TenMauSac)
values
	(1,'Black'),
	(2,'Gold'),
	(3,'White'),
	(4,'Rose')

insert into tHangSX(MaHangSX,HangSX)
values
	(1,'Apple'),
	(2,'SamSung'),
	(3,'Dell'),
	(4,'Lenovo'),
	(5,'Asuz')




insert into tDanhMucSP(MaSP,TenSP,MaHangSX,MaLoai,MaMauSac,DonGiaBan,GiamGia,SLTon,AnhDaiDien)
values 
	(1,'Laptop Asus Vivobook Go 14',5,1,1,1249000000,0,10,N'Product101.png'),
	(2,'Laptop Asus Zenbook i5',5,1,2,1999000000,0.1,27,N'Product201.png'),
	(3,'Laptop Asus TUF Gaming',5,1,1,1949000000,0,30,N'Product301.png'),
	(4,'Laptop Dell Vostro 15 3520',3,1,3,1149000000,0.1,40,N'Product401.png'),
	(5,'Laptop Dell Inspiron 15',3,1,2,1849000000,0,50,N'Product501.png'),
	(6,'Laptop Dell Latitude 5540',3,1,4,2309000000,0,45,N'Product601.png'),
	(7,'Laptop Lenovo Ideapad 3',4,1,1,2300000000,0.15,27,N'Product701.png'),
	(8,'Laptop Lenovo IdeaPad Slim',4,1,1,1209000000,0,35,N'Product801.png'),
	(9,'Laptop Lenovo ThinkPad 3',4,1,2,2509000000,0,30,N'Product901.png'),
	(10,'Laptop SamSung Galaxy Book Pro 360',2,1,1,2989000000,0,20,N'Product10-1.png'),
	(11,'Laptop MacBook Air 13',1,1,3,2959000000,0.1,20,N'Product11-1.png'),
	(12,'Laptop MacBook Air 10',1,1,2,2109000000,0,18,N'Product12-1.png'),
	(13,'Laptop MacBook Pro 16',1,1,1,1949000000,0,20,N'Product13-1.png'),
	(14,'SamSung Galaxy Z Flip4',2,2,1,2949000000,0,26,N'Product14-1.png'),
	(15,'SamSung S22 Ultra',2,2,2,3449000000,0.05,30,N'Product15-1.png'),
	(16,'SamSung S23 Ultra',2,2,3,3019000000,0,35,N'Product16-1.png'),
	(17,'Iphone 14 ProMax',1,2,1,2949000000,0,20,N'Product17-1.png'),
	(18,'Iphone XsMax',1,2,3,1749000000,0,10,N'Product18-1.png'),
	(19,'IPhone 13 ProMax',1,2,4,1649000000,0,10,N'Product19-1.png'),
	(20,'Iphone 15 Plus',1,2,1,3249000000,0,17,N'Product20-1.png'),
	(21,'Iphone 15 Promax',1,2,2,1799000000,0.1,40,N'Product21-1.png'),
	(22,'Iphone 14 plus',1,2,1,1649000000,0,20,N'Product22-1.png'),
	(23,'Tai Nghe Thể Thao Lenovo',4,3,1,100000000,0,100,N'Product23-1.png')

insert into tAnhSP(MaSP,TenFileAnh,ViTri)
values
	(1,N'Product101.png',NULL),
	(2,N'Product201.png',NULL),
	(3,N'Product301.png',NULL),
	(4,N'Product401.png',NULL),
	(5,N'Product501.png',NULL),
	(6,N'Product601.png',NULL),
	(7,N'Product701.png',NULL),
	(8,N'Product801.png',NULL),
	(9,N'Product901.png',NULL),
	(10,N'Product10-1.png',NULL),
	(11,N'Product11-1.png',NULL),
	(12,N'Product12-1.png',NULL),
	(13,N'Product13-1.png',NULL),
	(14,N'Product14-1.png',NULL),
	(15,N'Product15-1.png',NULL),
	(16,N'Product16-1.png',NULL),
	(17,N'Product17-1.png',NULL),
	(18,N'Product18-1.png',NULL),
	(19,N'Product19-1.png',NULL),
	(20,N'Product20-1.png',NULL),
	(21,N'Product21-1.png',NULL),
	(22,N'Product22-1.png',NULL)





--0- nhan vien và quản lý
-- 1 khách hàng
insert into tUser(username,password,LoaiUser)
values
	('thuy','123',0),
	('long','123',0),
	('Phuc','123',1),
	('Duy','123',1)

insert into tKhachHang(MaKhachHang,username,TenKhachHang,NgaySinh,Email,SoDienThoai,DiaChi)
values 
	(1,'Phuc',N'Ngô Đức Phúc','2003-12-03','Phuc@gmail.com','0864839201',N'Long Biên Hà Nội'),
	(2,'Duy',N'Nguyễn Hữu Duy','2001-02-13','Duy@gmail.com','0863820174',N'Ba Đình Hà Nội')


insert into tNhanVien(MaNhanVien,username,TenNhanVien,NgaySinh,SoDienThoai,Email,DiaChi,ChucVu,AnhDaiDien)
values (1,'thuy',N'Bùi Phương Thúy','2004-12-04','Thuy@gmail.com','0863729173',N'Nguyễn Chí Thanh Hà Nội',N'Nhân Viên',null),
		(2,'long',N'Đỗ Văn Long','1999-02-14',N'Long@gmail.com','0283628492',N'Cầu Giấy Hà Nội',N'Quản Lý',null)

insert into tHoaDonBan(MaHoaDon,NgayLap,MaKhachHang,MaNhanVien,TongTienHD,GiamGiaHD,PhuongThucThanhToan,TinhTrang)
values
	(1,'2023-10-29',1,1,null,null,null,null)

insert into tChiTietHDB(MaHoaDon,MaSP,SoLuongBan,DonGiaBan)
values 
	(1,4,2,1149000000),
	(1,6,1,2309000000)
