using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NS_Fitness_Website.Models;

namespace NS_Fitness_Website.Controllers
{
    public class ClientController : Controller
    {
        // GET: Client
        DatabasePDI db = new DatabasePDI();
        public ActionResult Index(int? id)
        {
            perfil perfil = db.perfil.Find(id);
            return View(perfil);

        }
        public ActionResult Treinos(int? id)
        {
            treinos treino = db.treinos.Find(id);
            return View(treino);
        }
        public ActionResult PlanosNutricao(int? id)
        {
            user_clinica clinica = db.user_clinica.Find(id);
            user_treino treino = db.user_treino.Find(id);
            user_alimentacao alimentacao = db.user_alimentacao.Find(id);
            user_plano plano = db.user_plano.Find(id);
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