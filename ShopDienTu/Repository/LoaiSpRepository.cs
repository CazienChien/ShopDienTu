using ShopDienTu.Models;

namespace ShopDienTu.Repository
{
    public class LoaiSpRepository : ILoaiSpRepository
    {
        private readonly QLDoDienTu1Context _context;
        public LoaiSpRepository(QLDoDienTu1Context context)
        {
            _context = context;
        }
        public TLoaiSp Add(TLoaiSp loaiSp)
        {
            _context.TLoaiSps.Add(loaiSp);
            _context.SaveChanges();
            return loaiSp;
        }
        public TLoaiSp Delete(String maloaiSp)
        {
            throw new NotImplementedException();
        }
        public IEnumerable<TLoaiSp> GetAllLoaiSp()
        {
            return _context.TLoaiSps;
        }
        public TLoaiSp GetLoaiSp(String maloaiSp)
        {
            return _context.TLoaiSps.Find(maloaiSp);
        }
        public TLoaiSp Update(TLoaiSp loaiSp)
        {
            _context.Update(loaiSp);
            _context.SaveChanges();
            return loaiSp;
        }
    }
}
