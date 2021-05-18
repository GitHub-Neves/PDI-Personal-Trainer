using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NS_Fitness_Website.Controllers
{
    public class ClientController : Controller
    {
        // GET: Client
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Treinos()
        {
            return View();
        }
        public ActionResult PlanosNutricao()
        {
            return View();
        }
        public ActionResult Progresso()
        {
            return View();
        }
        public ActionResult Mensagens()
        {
            return View();
        }
    }
}