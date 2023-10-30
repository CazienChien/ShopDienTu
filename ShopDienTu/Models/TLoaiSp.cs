using System;
using System.Collections.Generic;

namespace ShopDienTu.Models
{
    public partial class TLoaiSp
    {
        public TLoaiSp()
        {
            TDanhMucSps = new HashSet<TDanhMucSp>();
        }

        public int MaLoai { get; set; }
        public string? Loai { get; set; }

        public virtual ICollection<TDanhMucSp> TDanhMucSps { get; set; }
    }
}
