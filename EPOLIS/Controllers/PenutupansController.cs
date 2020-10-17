using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using EPOLIS.Context;
using EPOLIS.Models;
using EPOLIS.Repositories.Data;

namespace EPOLIS.Controllers
{
    public class PenutupansController : Controller
    {
        private readonly MyContext _context;
        private readonly PenutupanRepository _penutupanRepository;

        public PenutupansController(PenutupanRepository penutupanRepository)
        {
            _penutupanRepository = penutupanRepository;
        }

        // GET: Penutupans
        public async Task<ActionResult<Penutupan>> Index()
        {
            return View(await _penutupanRepository.Get());
        }

        // GET: Penutupans/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var penutupan = await _context.Penutupans
                .FirstOrDefaultAsync(m => m.Id == id);
            if (penutupan == null)
            {
                return NotFound();
            }

            return View(penutupan);
        }

        // GET: Penutupans/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Penutupans/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("JENISPENUTUPAN,NOREGPENUTUPAN,ADMINID,TGLINPUT,TGLOTORISASI,STATUS,NAMA,NOSKK,TGLSKK,NOPK,CIF,ISBROKER,ISUPDATEPENUTUPANRENEWAL,UPDATEBY,UPDATEDATE,Id")] Penutupan penutupan)
        {
            if (ModelState.IsValid)
            {
                _context.Add(penutupan);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(penutupan);
        }

        // GET: Penutupans/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var penutupan = await _context.Penutupans.FindAsync(id);
            if (penutupan == null)
            {
                return NotFound();
            }
            return View(penutupan);
        }

        // POST: Penutupans/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("JENISPENUTUPAN,NOREGPENUTUPAN,ADMINID,TGLINPUT,TGLOTORISASI,STATUS,NAMA,NOSKK,TGLSKK,NOPK,CIF,ISBROKER,ISUPDATEPENUTUPANRENEWAL,UPDATEBY,UPDATEDATE,Id")] Penutupan penutupan)
        {
            if (id != penutupan.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(penutupan);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PenutupanExists(penutupan.Id))
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
            return View(penutupan);
        }

        // GET: Penutupans/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var penutupan = await _context.Penutupans
                .FirstOrDefaultAsync(m => m.Id == id);
            if (penutupan == null)
            {
                return NotFound();
            }

            return View(penutupan);
        }

        // POST: Penutupans/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var penutupan = await _context.Penutupans.FindAsync(id);
            _context.Penutupans.Remove(penutupan);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PenutupanExists(int id)
        {
            return _context.Penutupans.Any(e => e.Id == id);
        }
    }
}
