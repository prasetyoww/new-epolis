using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using EPOLIS.Context;
using EPOLIS.Models;

namespace EPOLIS.Controllers
{
    public class FormPenutupansController : Controller
    {
        private readonly MyContext _context;

        public FormPenutupansController(MyContext context)
        {
            _context = context;
        }

        // GET: FormPenutupans
        public IActionResult Index()
        {
            return View();
        }




        // POST: FormPenutupans/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("JENISPENUTUPAN,NOREGPENUTUPAN,NOFASILITAS,NOREKENING,NONASABAH,STATUS,NAMA,NOSKK,ALAMATNASABAH,TELPRUMAH,PEKERJAAN,NOHP,NOFAX,EMAIL,UPDATEDATE,Id,SEGMENTASI,JENISASURANSI,OKUPASI")] FormPenutupan formPenutupan)
        {
            if (ModelState.IsValid)
            {
                _context.Add(formPenutupan);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(formPenutupan);
        }
    }
}
