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
using System.Web.Http.Results;

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
            return View(await LoadData());
        }

        public async Task<List<Penutupan>> LoadData()
        {
            var result = await _penutupanRepository.Get();
            return result;
        }

        public async Task<ActionResult<Penutupan>> Get(int id)
        {
            var result = await _penutupanRepository.Get(id);
            return result;
        }

        [HttpPost]
        public async Task<ActionResult<Penutupan>> Post(Penutupan penutupan)
        {
            var result = await _penutupanRepository.Post(penutupan);
            if (!result.Equals(0))
            {
                return Ok(result);
            }
            return BadRequest(result);
        }

        [HttpPut]
        public async Task<ActionResult<Penutupan>> Put(Penutupan penutupan)
        {
            var result = await _penutupanRepository.Put(penutupan);
            if (!result.Equals(0))
            {
                return Ok(result);
            }
            return BadRequest(result);
        }

        [HttpDelete]
        public async Task<ActionResult<Penutupan>> Delete(int id)
        {
            var result = await _penutupanRepository.Delete(id);
            if (!result.Equals(0))
            {
                return Ok(result);
            }
            return BadRequest(result);
        }
    }
}
