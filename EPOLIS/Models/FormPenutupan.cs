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
        public int tnasabahID { get; set; }
        //[Display(Name = "JENISPENUTUPAN")]
        public string JENISPENUTUPAN { get; set; }
        //[Display(Name = "NOREGPENUTUPAN")]
        [StringLength(20, MinimumLength = 1)]
        public string NOREGPENUTUPAN { get; set; }
        //[Display(Name = "Admin Id")]
        //[StringLength(20, MinimumLength = 1)]
        public string ADMINID { get; set; }
        //[Display(Name = "Tanggal Input")]
        //[DataType(DataType.Date)]
        public DateTime TGLINPUT { get; set; }
        //[Display(Name = "Tanggal Otorisasi")]
        //[DataType(DataType.Date)]
        public DateTime TGLOTORISASI { get; set; }
        //[Display(Name = "Status")]
        //[StringLength(2, MinimumLength = 2)]
        public string STATUS { get; set; }
        //[Display(Name = "Nama")]
        //[StringLength(40, MinimumLength = 1)]
        public string NOSKK { get; set; }
        //[Display(Name = "NOSKK")]
        //[StringLength(1, MinimumLength = 1)]
        public string NOPK { get; set; }
        //[Display(Name = "No. SKK")]
        //[DataType(DataType.Date)]
        public string CIF { get; set; }
        //[Display(Name = "Tanggal SKK")]
        //[StringLength(50, MinimumLength = 1)]
        public int  ISBROKER { get; set; }
        //[Display(Name = "No. PK")]
        //[StringLength(20, MinimumLength = 1)]
        public int ISUPDATEPENUTUPANRENEWAL { get; set; }
        //[Display(Name = "CIF")]
        //[StringLength(20, MinimumLength = 1)]
        public int UPDATEBYID { get; set; }
        public DateTime UPDATETIME { get; set; }
        public int CREATEDBYID { get; set; }
        public DateTime CREATEDTIME { get; set; }
        public Boolean ISDELETED { get; set; }
        public int DELETEDBYID { get; set; }
        public DateTime DELETEDTIME { get; set; }
        public int Id { get; set; }
    }
}
