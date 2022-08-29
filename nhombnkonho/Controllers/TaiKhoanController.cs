using nhombnkonho.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace nhombnkonho.Controllers
{
    public class TaiKhoanController : Controller
    {
        // GET: TaiKhoan
        BTCKWeb1Entities db = new BTCKWeb1Entities();
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangKy(TaiKhoanMoldes model)
        {
            
                KHACHHANG taikhoan = new KHACHHANG();

                taikhoan.MaKH = model.MaKH;
                taikhoan.HoTen = model.HoTen;
                taikhoan.TaiKhoan = model.TaiKhoan;
                taikhoan.MatKhau = model.MatKhau;
                taikhoan.NgaySinh = model.NgaySinh;   
                taikhoan.DiaChi = model.DiaChi;
                taikhoan.Email = model.Email;
                taikhoan.DienThoai = model.DienThoai;

                db.KHACHHANGs.Add(taikhoan);
                db.SaveChanges();
            
            return View();
        }
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DangNhap(TaiKhoanMoldes model)
        {
            if (ModelState.IsValid)
            {
                var taikhoan = db.KHACHHANGs
                    .Where(x => x.TaiKhoan == model.TaiKhoan && x.MatKhau == model.MatKhau)
                    .FirstOrDefault();

                if (taikhoan != null)
                {
                    Session["TAIKHOAN"] = taikhoan;
                    return RedirectToAction("Index", "SanPham12");
                }
            }
            return View();
        }

        [ChildActionOnly]
        public ActionResult TaiKhoan()
        {
            var taikhoan = Session["TAIKHOAN"] ;
            ViewBag.TaiKhoan = taikhoan;
            return PartialView("_TaiKhoanPartial");
        }

    }
}