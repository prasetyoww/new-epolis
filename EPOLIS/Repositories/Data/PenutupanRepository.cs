using EPOLIS.Context;
using EPOLIS.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EPOLIS.Repositories.Data
{
    public class PenutupanRepository : GeneralRepository<Penutupan, MyContext>
    {
        public PenutupanRepository(MyContext myContext) : base(myContext)
        {


        }
    }
}
