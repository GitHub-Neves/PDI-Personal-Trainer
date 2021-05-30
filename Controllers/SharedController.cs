using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NS_Fitness_Website.Views.Shared
{
    public class SharedController : Controller
    {
        // GET: Shared
        public ActionResult Logout()
        {
            Session.Clear();//remove session
            return RedirectToAction("Login","Home");
        }
    }
}