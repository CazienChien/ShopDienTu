using System;
using System.Collections.Generic;

namespace ShopDienTu.Models
{
    public partial class TAnhSp
    {
        public int MaSp { get; set; }
        public string TenFileAnh { get; set; } = null!;
        public short? ViTri { get; set; }

        public virtual TDanhMucSp MaSpNavigation { get; set; } = null!;
    }
}
