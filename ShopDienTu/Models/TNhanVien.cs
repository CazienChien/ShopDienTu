using System;
using System.Collections.Generic;

namespace ShopDienTu.Models
{
    public partial class TNhanVien
    {
        public TNhanVien()
        {
            THoaDonBans = new HashSet<THoaDonBan>();
        }

        public int MaNhanVien { get; set; }
        public string? Username { get; set; }
        public string? TenNhanVien { get; set; }
        public DateTime? NgaySinh { get; set; }
        public string? SoDienThoai { get; set; }
        public string? Email { get; set; }
        public string? DiaChi { get; set; }
        public string? ChucVu { get; set; }
        public string? AnhDaiDien { get; set; }
        public string? GhiChu { get; set; }

        public virtual TUser? UsernameNavigation { get; set; }
        public virtual ICollection<THoaDonBan> THoaDonBans { get; set; }
    }
}
