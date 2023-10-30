using Microsoft.AspNetCore.Mvc;
using ShopDienTu.Models;
using shopdientu1.Models.Authentication;

namespace ShopDienTu.Controllers
{
    public class AccountController : Controller
    {
        QLDoDienTu1Context db = new QLDoDienTu1Context();
        public IActionResult Index()
        {
            return View();
        }


        //check db
        
        public IActionResult Login()
        {
            if (HttpContext.Session.GetString("UserName") == null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }

        [HttpPost]
        public IActionResult Login(TUser user)
        {

            if (HttpContext.Session.GetString("UserName") == null)
            {
                var u = db.TUsers.Where(x => x.Username.Equals(user.Username) && x.Password
                .Equals(user.Password)).FirstOrDefault();
                if (u != null)
                {
                    HttpContext.Session.SetString("USerName", u.Username.ToString());
                    ViewBag.UserName = u.Username;
                    var kh = db.TKhachHangs.Where(x => x.Username.Equals(u.Username)).FirstOrDefault();
                    if (kh != null)
                    {
                        return RedirectToAction("Index", "Home");
                    }
                    else
                    {
                        return Redirect("/Admin/HomeAdmin/DanhSachSP");
                    }


                }

            }

            return View();
        }


        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Register(TKhachHang khachHang)
        {
            return View();
        }

        [Authentication]
        [HttpGet]
        public IActionResult LogOut()
        {
            HttpContext.Session.Clear();
            HttpContext.Session.Remove("UserName");
            return RedirectToAction("Login", "Account");
        }




        [HttpGet]
        public IActionResult CreateNV()
        {
            return View();
        }

        /*[Authentication]*/
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult CreateNV(TNhanVien nhanvien)
        {
            List<TNhanVien> listKH = db.TNhanViens.ToList();
            if (ModelState.IsValid)
            {
                nhanvien.MaNhanVien = 1;
                db.TNhanViens.Add(nhanvien);
                db.SaveChanges();
                return RedirectToAction("DanhSachNV");
            }
            return View(nhanvien);
        }

        
    }
}
