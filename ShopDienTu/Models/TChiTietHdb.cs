using System;
using System.Collections.Generic;

namespace ShopDienTu.Models
{
    public partial class TChiTietHdb
    {
        public int MaHoaDon { get; set; }
        public int MaSp { get; set; }
        public int? SoLuongBan { get; set; }
        public decimal? DonGiaBan { get; set; }
        public string? GhiChu { get; set; }

        public virtual THoaDonBan MaHoaDonNavigation { get; set; } = null!;
        public virtual TDanhMucSp MaSpNavigation { get; set; } = null!;
    }
}
