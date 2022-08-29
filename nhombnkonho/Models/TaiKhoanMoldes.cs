using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace nhombnkonho.Models
{
    public class TaiKhoanMoldes
    {
        public int MaKH { get; set; }
       
        public string HoTen { get; set; }
       
        public string TaiKhoan { get; set; }
   
        public string MatKhau { get; set; }
        
        public DateTime? NgaySinh { get; set; }
        public string DiaChi { get; set; }
        public string Email { get; set; }
       
        public string DienThoai { get; set; }
    }
}