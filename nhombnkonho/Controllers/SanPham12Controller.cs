using nhombnkonho.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace nhombnkonho.Controllers
{
    public class SanPham12Controller : Controller
    {
        // GET: SanPham12


        private BTCKWeb1Entities db = new BTCKWeb1Entities();
        public ActionResult Index()
        {
            var sanpham = db.SANPHAMs.Where(sp => sp.DaXoa == false)
               .Select(sp => new SanPhamModel
               {
                   MaSanPham = sp.MaSanPham,
                   TenSanPham = sp.TenSanPham,
                   Anhbia = sp.Anhbia,
                   Mota = sp.Mota,
                   Giaban = sp.Giaban,
                   GiaKK = (double)sp.Giaban * (1 - 0.2),
                   Soluongton = sp.Soluongton,
                   Ngaycapnhat = sp.Ngaycapnhat,
                   TenNhaCungCap = sp.NHACUNGCAP.TenNCC,
                   MaNCC = sp.MaNCC,
                   MaCD = sp.MaCD,
                   
               })
                .ToList();
          

                
            ViewBag.SanPham = sanpham;
            return View();
        }
        public ActionResult Chitietsanpham(int id)
        {
            GioHangController SG = new GioHangController();
            var sanpham = db.SANPHAMs
                .Where(sp => sp.MaSanPham == id && sp.DaXoa == false)
                .Select(sp => new SanPhamModel
                {
                    MaSanPham = sp.MaSanPham,
                    TenSanPham = sp.TenSanPham,
                    Anhbia = sp.Anhbia,
                    Mota = sp.Mota,
                    Giaban = sp.Giaban,
                    GiaKK = (double)sp.Giaban * (1 - 0.2),
                    Soluongton = sp.Soluongton,
                    Ngaycapnhat = sp.Ngaycapnhat,
                    TenNhaCungCap = sp.NHACUNGCAP.TenNCC,
                    MaNCC = sp.MaNCC,
                    MaCD = sp.MaCD,
                    DaXoa = sp.DaXoa,
                    TheLoai = sp.CHUDE.TenChuDe,
                })
                .FirstOrDefault();
            ViewBag.SanPham = sanpham;
            return View();
        }

    }
}