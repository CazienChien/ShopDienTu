using System;
using System.Collections.Generic;

namespace ShopDienTu.Models
{
    public partial class TDanhMucSp
    {
        public TDanhMucSp()
        {
            TAnhSps = new HashSet<TAnhSp>();
            TChiTietHdbs = new HashSet<TChiTietHdb>();
        }

        public int MaSp { get; set; }
        public string? TenSp { get; set; }
        public int? MaHangSx { get; set; }
        public int? MaLoai { get; set; }
        public string? AnhDaiDien { get; set; }
        public int? MaMauSac { get; set; }
        public double? DonGiaBan { get; set; }
        public double? GiamGia { get; set; }
        public int? Slton { get; set; }
        public string? GioiThieuSp { get; set; }

        public virtual THangSx? MaHangSxNavigation { get; set; }
        public virtual TLoaiSp? MaLoaiNavigation { get; set; }
        public virtual TMauSac? MaMauSacNavigation { get; set; }
        public virtual ICollection<TAnhSp> TAnhSps { get; set; }
        public virtual ICollection<TChiTietHdb> TChiTietHdbs { get; set; }
    }
}
