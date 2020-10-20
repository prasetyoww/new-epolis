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
        public async Task<IActionResult> Index()
        {
            var result = await _context.FormPenutupan.ToListAsync();
            return View(result);
        }

        // GET: FormPenutupans/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var formPenutupan = await _context.FormPenutupan
                .FirstOrDefaultAsync(m => m.Id == id);
            if (formPenutupan == null)
            {
                return NotFound();
            }

            return View(formPenutupan);
        }

        // GET: FormPenutupans/Create
        public IActionResult Create()
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

        // GET: FormPenutupans/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var formPenutupan = await _context.FormPenutupan.FindAsync(id);
            if (formPenutupan == null)
            {
                return NotFound();
            }
            return View(formPenutupan);
        }

        // POST: FormPenutupans/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("JENISPENUTUPAN,NOREGPENUTUPAN,NOFASILITAS,NOREKENING,NONASABAH,STATUS,NAMA,NOSKK,ALAMATNASABAH,TELPRUMAH,PEKERJAAN,NOHP,NOFAX,EMAIL,UPDATEDATE,Id,SEGMENTASI,JENISASURANSI,OKUPASI")] FormPenutupan formPenutupan)
        {
            if (id != formPenutupan.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(formPenutupan);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!FormPenutupanExists(formPenutupan.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(formPenutupan);
        }

        // GET: FormPenutupans/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var formPenutupan = await _context.FormPenutupan
                .FirstOrDefaultAsync(m => m.Id == id);
            if (formPenutupan == null)
            {
                return NotFound();
            }

            return View(formPenutupan);
        }

        // POST: FormPenutupans/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var formPenutupan = await _context.FormPenutupan.FindAsync(id);
            _context.FormPenutupan.Remove(formPenutupan);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool FormPenutupanExists(int id)
        {
            return _context.FormPenutupan.Any(e => e.Id == id);
        }
    }
}
