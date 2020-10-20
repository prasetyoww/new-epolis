using EPOLIS.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EPOLIS.Context
{
    public class MyContext : DbContext
    {
        public MyContext(DbContextOptions<MyContext> options) : base(options) { }

        public DbSet<Penutupan> Penutupans { get; set; }

        public DbSet<FormPenutupan> FormPenutupan { get; set; }
    }
}
