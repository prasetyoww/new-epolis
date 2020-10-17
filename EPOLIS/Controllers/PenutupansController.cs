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

        
    }
}
