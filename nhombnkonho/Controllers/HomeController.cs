using nhombnkonho.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace nhombnkonho.Controllers
{
    public class HomeController : Controller
    {
        BTCKWeb1Entities db = new BTCKWeb1Entities();

        

        public ActionResult Index()
        {
            return View();

            // <div class="header-middle-searchbox ">
        }
      
        public ActionResult thanhtoan()
        {
            return View();
        }
        
        [ChildActionOnly]
        public ActionResult DanhSach()
        {
            var dstheloai = db.CHUDEs.ToList();
            ViewBag.DSTheLoai = dstheloai;
            return PartialView("_DanhSachPartial");
        }







       
       
       
       
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}