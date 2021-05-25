using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NS_Fitness_Website.Controllers
{
    public class TrainerController : Controller
    {
        // GET: Trainer
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ClientePerfil()
        {
            return View();
        }
        public ActionResult ClienteTreinos()
        {
            return View();
        }
        public ActionResult ClienteNutricao()
        {
            return View();
        }
        public ActionResult ClienteProgresso()
        {
            return View();
        }
        public ActionResult ClienteMensagens()
        {
            return View();
        }
    }
}