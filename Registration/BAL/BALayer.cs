using Registration.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Registration.BAL
{
    public class BALayer
    {

        DALayer objdal = new DALayer();
        public bool InsertUserRegistrationDetails(string id, string Ename,string Email)
        {

            return objdal.InsertUserRegistrationDetails(id, Ename, Email);

        }
    }
}