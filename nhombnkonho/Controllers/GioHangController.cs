using nhombnkonho.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

using Newtonsoft.Json.Linq;

namespace nhombnkonho.Controllers
{
    public class GioHangController : Controller
    {
        // GET: GioHang
        BTCKWeb1Entities db = new BTCKWeb1Entities();
        public ActionResult Index()
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModel>;
            ViewBag.GioHang = giohang;
            return View();
        }
        public ActionResult ThamVaoGio(int id)
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModel>;
            if (giohang == null)
            {
                giohang = new List<SanPhamModel>();
                Session["GIOHANG"] = giohang;
            }
            var tam = db.SANPHAMs.Where(x => x.MaSanPham == id).FirstOrDefault();
            var timkiem = giohang.Find(x => x.MaSanPham == id);
            var sanpham = new SanPhamModel();

            if (timkiem == null)
            {
                sanpham.MaSanPham = tam.MaSanPham;
                sanpham.TenSanPham = tam.TenSanPham;
                sanpham.Anhbia = tam.Anhbia;
                sanpham.Giaban = tam.Giaban;
                sanpham.SoLuong = 1;
                sanpham.GiaKK =(double)tam.Giaban * (1 - 0.2);
                sanpham.GiaTong = sanpham.GiaKK * sanpham.SoLuong;
                sanpham.GiaTThanhToan = sanpham.GiaTong + sanpham.SoLuong;
             

                giohang.Add(sanpham);

            }
            else
            {
                timkiem.SoLuong += 1;
                timkiem.GiaTong = timkiem.GiaKK * timkiem.SoLuong;
                timkiem.GiaTThanhToan = timkiem.GiaTong + timkiem.SoLuong;
             }

            return RedirectToAction("Index")
                ;
          
        }
        public ActionResult xoakhoigio(int id)
        {

            var giohang = Session["GIOHANG"] as List<SanPhamModel>;
            var timkiem = giohang.Find(x => x.MaSanPham == id);
            if(timkiem != null)
            {
                giohang.RemoveAll(x => x.MaSanPham == id);
            }
            return RedirectToAction("Index"); 
        }
        [ChildActionOnly]
        public ActionResult GioHang()
        {

            var giohang = Session["GIOHANG"] as List<SanPhamModel>;
            ViewBag.DSGioHang = giohang;

            return PartialView("_GioHangPartial");
        }

      
        public ActionResult ThanhToan()
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModel>;
            ViewBag.GioHang = giohang;
            return View();


        }
        public ActionResult Momo()
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModel>;
            ViewBag.GioHang = giohang;
            return View();
        }


        public ActionResult PaymentMM()
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModel>;
            string endpoint = "https://test-payment.momo.vn/gw_payment/transactionProcessor";
            string partnerCode = "MOMOWUSK20220216";
            string accessKey = "LYiNvNBBtdF0SbjP";
            string serectkey = "B8sL0yPIGwqXz2hWrtpEHwhlWF5UutbN";
            string orderInfo = "test";
            string returnUrl = "http://pctanhiepbh.somee.com/GioHang/ConfirmPaymentClient";
            string notifyurl = "http://ba1adf48beba.ngrok.io/Home/SavePayment"; //lưu ý: notifyurl không được sử dụng localhost, có thể sử dụng ngrok để public localhost trong quá trình test

            string amount = giohang.Sum(n=>n.GiaTThanhToan).ToString();
            string orderid = DateTime.Now.Ticks.ToString();
            string requestId = DateTime.Now.Ticks.ToString();
            string extraData = "";

            //Before sign HMAC SHA256 signature
            string rawHash = "partnerCode=" +
                partnerCode + "&accessKey=" +
                accessKey + "&requestId=" +
                requestId + "&amount=" +
                amount + "&orderId=" +
                orderid + "&orderInfo=" +
                orderInfo + "&returnUrl=" +
                returnUrl + "&notifyUrl=" +
                notifyurl + "&extraData=" +
                extraData;

            MoMoSecurity crypto = new MoMoSecurity();
            //sign signature SHA256
            string signature = crypto.signSHA256(rawHash, serectkey);

            //build body json request
            JObject message = new JObject
            {
                { "partnerCode", partnerCode },
                { "accessKey", accessKey },
                { "requestId", requestId },
                { "amount", amount },
                { "orderId", orderid },
                { "orderInfo", orderInfo },
                { "returnUrl", returnUrl },
                { "notifyUrl", notifyurl },
                { "extraData", extraData },
                { "requestType", "captureMoMoWallet" },
                { "signature", signature }

            };

            string responseFromMomo = PaymentRequest.sendPaymentRequest(endpoint, message.ToString());

            JObject jmessage = JObject.Parse(responseFromMomo);

            return Redirect(jmessage.GetValue("payUrl").ToString());
        }
        public ActionResult ConfirmPaymentClient()
        {
            //hiển thị thông báo cho người dùng
            return View();
        }
        public ActionResult HTTT()
        {
            return View();
        }
    }
}