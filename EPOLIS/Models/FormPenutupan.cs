using EPOLIS.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace EPOLIS.Models
{
    public class FormPenutupan : IEntity
    {
        //[Display(Name = "JENISPENUTUPAN")]
        public string JENISPENUTUPAN { get; set; }
        //[Display(Name = "NOREGPENUTUPAN")]
        [StringLength(20, MinimumLength = 1)]
        public string NOREGPENUTUPAN { get; set; }
        //[Display(Name = "Admin Id")]
        //[StringLength(20, MinimumLength = 1)]
        public string NOFASILITAS { get; set; }
        //[Display(Name = "Tanggal Input")]
        //[DataType(DataType.Date)]
        public DateTime NOREKENING { get; set; }
        //[Display(Name = "Tanggal Otorisasi")]
        //[DataType(DataType.Date)]
        public DateTime NONASABAH { get; set; }
        //[Display(Name = "Status")]
        //[StringLength(2, MinimumLength = 2)]
        public string STATUS { get; set; }
        //[Display(Name = "Nama")]
        //[StringLength(40, MinimumLength = 1)]
        public string NAMA { get; set; }
        //[Display(Name = "NOSKK")]
        //[StringLength(1, MinimumLength = 1)]
        public string NOSKK { get; set; }
        //[Display(Name = "No. SKK")]
        //[DataType(DataType.Date)]
        public DateTime ALAMATNASABAH { get; set; }
        //[Display(Name = "Tanggal SKK")]
        //[StringLength(50, MinimumLength = 1)]
        public string TELPRUMAH { get; set; }
        //[Display(Name = "No. PK")]
        //[StringLength(20, MinimumLength = 1)]
        public string PEKERJAAN { get; set; }
        //[Display(Name = "CIF")]
        //[StringLength(20, MinimumLength = 1)]
        public int NOHP { get; set; }
        public int NOFAX { get; set; }
        public string EMAIL { get; set; }
        public DateTime UPDATEDATE { get; set; }
        public int Id { get; set; }
        public string SEGMENTASI { get; set; }
        public string JENISASURANSI { get; set; }
        public string OKUPASI { get; set; }
    }
}
