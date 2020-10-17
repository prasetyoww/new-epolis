using EPOLIS.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace EPOLIS.Models
{
    public class Penutupan : IEntity
    {
        [Display(Name = "Nasabah")]
        public string JENISPENUTUPAN { get; set; }
        [Display(Name = "No. Reg Penutupan")]
        [StringLength(20, MinimumLength = 1)]
        public string NOREGPENUTUPAN { get; set; }
        [Display(Name = "No. Reg Penutupan")]
        [StringLength(20, MinimumLength = 1)]
        public string ADMINID { get; set; }
        [Display(Name = "Admin ID")]
        [DataType(DataType.Date)]
        public DateTime TGLINPUT { get; set; }
        [Display(Name = "Tanggal Input")]
        [DataType(DataType.Date)]
        public DateTime TGLOTORISASI { get; set; }
        [Display(Name = "Tanggal Otorisasi")]
        [StringLength(2, MinimumLength = 2)]
        public string STATUS { get; set; }
        [Display(Name = "Status")]
        [StringLength(40, MinimumLength = 1)]
        public string NAMA { get; set; }
        [Display(Name = "Nama")]
        [StringLength(1, MinimumLength = 1)]
        public string NOSKK { get; set; }
        [Display(Name = "No. SKK")]
        [DataType(DataType.Date)]
        public DateTime TGLSKK { get; set; }
        [Display(Name = "Tanggal SKK")]
        [StringLength(50, MinimumLength = 1)]
        public string NOPK { get; set; }
        [Display(Name = "No. PK")]
        [StringLength(20, MinimumLength = 1)]
        public string CIF { get; set; }
        [Display(Name = "CIF")]
        [StringLength(20, MinimumLength = 1)]
        public int ISBROKER { get; set; }
        public int ISUPDATEPENUTUPANRENEWAL { get; set; }
        public string UPDATEBY { get; set; }
        public DateTime UPDATEDATE { get; set; }
        public int Id { get; set; }
    }
}
