using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NS_Fitness_Website.Models;

namespace NS_Fitness_Website.Controllers
{
    public class TrainerController : Controller
    {
        // GET: Trainer
        DatabaseWebsite db = new DatabaseWebsite();
        public ActionResult Index()
        {
            return View(db.perfil.ToList());
        }
        public ActionResult ClientePerfil(int? id)
        {
            perfil perfil = db.perfil.Find(id);
            return View(perfil);
        }
        public ActionResult ClienteTreinos()
        {
            return View();
        }
        public ActionResult ClienteNutricao(int? id)
        {
            IEnumerable<user_clinica> clinica = db.user_clinica.Where(x => x.perfil_id == id );          
            return View(clinica);
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