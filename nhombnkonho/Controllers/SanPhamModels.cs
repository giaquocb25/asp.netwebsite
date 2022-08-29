using System;

namespace nhombnkonho.Controllers
{
    internal class SanPhamModels
    {
        public int MaSanPham { get; set; }
        public string TenSanPham { get; set; }
        public string Anhbia { get; set; }
        public string Mota { get; set; }
        public decimal? Giaban { get; set; }
        public int? Soluongton { get; set; }
        public DateTime? Ngaycapnhat { get; set; }
        public int? MaNCC { get; set; }
        public int? MaCD { get; set; }
    }
}