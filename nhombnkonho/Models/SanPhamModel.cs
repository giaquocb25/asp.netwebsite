using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nhombnkonho.Models
{
    public class SanPhamModel
    {
        public int MaSanPham { get; set; }
        public string TenSanPham { get; set; }
        public string TenNhaCungCap { get; set; }
        public decimal? Giaban { get; set; }
        
        public String TheLoai { get; set; }

        public double? GiaTong { get; set; }
        public double? GiaTThanhToan { get; set; }
        public int SoLuong { get; set; }
        public double? GiaKK { get; set; }
        public string Mota { get; set; }
        public string Anhbia { get; set; }
        public DateTime? Ngaycapnhat { get; set; }
        public int? Soluongton { get; set; }
        public int? MaCD { get; set; }
        public int? MaNCC { get; set; }
        public bool? DaXoa { get; set; }


    }
}