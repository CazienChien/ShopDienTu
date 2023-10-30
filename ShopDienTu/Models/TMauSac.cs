using System;
using System.Collections.Generic;

namespace ShopDienTu.Models
{
    public partial class TMauSac
    {
        public TMauSac()
        {
            TDanhMucSps = new HashSet<TDanhMucSp>();
        }

        public int MaMauSac { get; set; }
        public string? TenMauSac { get; set; }

        public virtual ICollection<TDanhMucSp> TDanhMucSps { get; set; }
    }
}
