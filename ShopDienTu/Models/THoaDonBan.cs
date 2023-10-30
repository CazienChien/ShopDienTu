﻿using System;
using System.Collections.Generic;

namespace ShopDienTu.Models
{
    public partial class THoaDonBan
    {
        public THoaDonBan()
        {
            TChiTietHdbs = new HashSet<TChiTietHdb>();
        }

        public int MaHoaDon { get; set; }
        public DateTime? NgayLap { get; set; }
        public int? MaKhachHang { get; set; }
        public int? MaNhanVien { get; set; }
        public decimal? TongTienHd { get; set; }
        public double? GiamGiaHd { get; set; }
        public byte? PhuongThucThanhToan { get; set; }
        public string? TinhTrang { get; set; }
        public string? GhiChu { get; set; }

        public virtual TKhachHang? MaKhachHangNavigation { get; set; }
        public virtual TNhanVien? MaNhanVienNavigation { get; set; }
        public virtual ICollection<TChiTietHdb> TChiTietHdbs { get; set; }
    }
}
