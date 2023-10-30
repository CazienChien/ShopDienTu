using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using ShopDienTu.Models;

namespace shopdientu1.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Route("Admin")]
    [Route("Admin/HomeAdmin")]
    public class HomeAdminController : Controller
    {
        QLDoDienTu1Context db = new QLDoDienTu1Context();
        [Route("")]
        [Route("Index")]
        public IActionResult Index()
        {
            return View();
        }


        [Route("")]
        [Route("DanhSachSP")]
        public IActionResult DanhSachSP()
        {
            var listSP = db.TDanhMucSps.Include(m => m.MaLoaiNavigation).
               Include(n => n.MaHangSxNavigation).Include(b => b.MaMauSacNavigation).ToList();
            return View(listSP);
        }


        [Route("DanhSachKH")]
        public IActionResult DanhSachKH()
        {
            var listKH = db.TKhachHangs.Include(m=>m.UsernameNavigation).ToList();
            return View(listKH);
        }

        [Route("DanhSachNV")]
        public IActionResult DanhSachNV()
        {
            var listNV = db.TNhanViens.Include(m=>m.UsernameNavigation).ToList();
            return View(listNV);
        }

        [Route("DanhSachDonHang")]
        public IActionResult DanhSachDonHang()
        {
            var listDH = db.THoaDonBans.Include(m=>m.MaNhanVienNavigation).Include(m=>m.MaKhachHangNavigation).ToList();
            return View(listDH);
        }

      

        [Route("Route")]
        [Route("CreateNV")]
        [HttpGet]
        public IActionResult CreateNV()
        {
            return View();
        }

        /*[Authentication]*/
        [Route("CreateNV")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult CreateNV(TNhanVien nhanvien)
        {
            if (ModelState.IsValid)
            {
				List<TNhanVien> sp = db.TNhanViens.ToList();
				TNhanVien last = sp.Last();
				nhanvien.MaNhanVien = last.MaNhanVien + 1;
				db.TNhanViens.Add(nhanvien);
                db.SaveChanges();
                return RedirectToAction("DanhSachNV");
            }
            return View(nhanvien);
        }


		[Route("Route")]
		[Route("CreateKH")]
		[HttpGet]
		public IActionResult CreateKH()
		{
			return View();
		}

        /*[Authentication]*/
        [Route("CreateKH")]
        
		[HttpPost]
		[ValidateAntiForgeryToken]
		public IActionResult CreateKH(TKhachHang khachhang)
		{
			
			if (ModelState.IsValid)
			{
				List<TKhachHang> sp = db.TKhachHangs.ToList();
				TKhachHang last = sp.Last();
				khachhang.MaKhachHang = last.MaKhachHang + 1;
				db.TKhachHangs.Add(khachhang);
				db.SaveChanges();
				return RedirectToAction("DanhSachKH");
			}
			return View(khachhang);
		}


		
		[Route("CreateSP")]
		[HttpGet]
		public IActionResult CreateSP()
		{
			ViewBag.MaMauSac = new SelectList(db.TMauSacs.ToList(), "MaMauSac", "TenMauSac");
			ViewBag.MaLoai = new SelectList(db.TLoaiSps.ToList(), "MaLoai", "Loai");
			ViewBag.MaHangSx = new SelectList(db.THangSxes.ToList(), "MaHangSx", "HangSx");
			return View();
		}

		/*[Authentication]*/

		[Route("CreateSP")]
		[HttpPost]
		[ValidateAntiForgeryToken]
		public IActionResult CreateSP(TDanhMucSp sanpham)
		{
			if (ModelState.IsValid)
			{
                List<TDanhMucSp> sp = db.TDanhMucSps.ToList();
                TDanhMucSp last = sp.Last();
                sanpham.MaSp = last.MaSp + 1;
				db.TDanhMucSps.Add(sanpham);
				db.SaveChanges();
				return RedirectToAction("DanhSachSP");
			}
			return View(sanpham);
		}
		[Route("EditSP")]
		[HttpGet]
		public IActionResult EditSP(int maSanPham)
		{
			ViewBag.MaMauSac = new SelectList(db.TMauSacs.ToList(), "MaMauSac", "TenMauSac");
			ViewBag.MaLoai = new SelectList(db.TLoaiSps.ToList(), "MaLoai", "Loai");
			ViewBag.MaHangSx = new SelectList(db.THangSxes.ToList(), "MaHangSx", "HangSx");
			var sanpham = db.TDanhMucSps.Find(maSanPham);
			return View(sanpham);
		}

		/*[Authentication]*/

		[Route("EditSP")]
		[HttpPost]
		[ValidateAntiForgeryToken]
		public IActionResult EditSP(TDanhMucSp sanpham)
		{
			if (ModelState.IsValid)
			{
				/*List<TDanhMucSp> sp = db.TDanhMucSps.ToList();
				TDanhMucSp last = sp.Last();
				sanpham.MaSp = last.MaSp + 1;*/
				db.Entry(sanpham).State = EntityState.Modified;
				db.SaveChanges();
				return RedirectToAction("DanhSachSP");
			}
			return View(sanpham);
		}
		[Route("DeleteSP")]
		[HttpGet]
		public IActionResult DeleteSp(int maSanPham)
		{
			TempData["Messsage"] = " ";
			var DanhMucSP = db.TDanhMucSps.Where(x => x.MaSp == maSanPham).ToList();

			if (DanhMucSP.Count()>=0)
			{
                var anhSanPhams = db.TAnhSps.Where(x => x.MaSp == maSanPham);
                if (anhSanPhams.Any()) db.RemoveRange(anhSanPhams);
                db.Remove(db.TDanhMucSps.Find(maSanPham));
                db.SaveChanges();
                TempData["Message"] = "Sản phẩm đã được xóa";
                return RedirectToAction("DanhSachSP");
			}
		
			return RedirectToAction("DanhMucSP");
		}









	}

}

