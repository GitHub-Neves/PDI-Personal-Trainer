using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Security.Cryptography;
using NS_Fitness_Website.Models;
using System.Data.Entity.Validation;

namespace NS_Fitness_Website.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        DatabaseWebsite db = new DatabaseWebsite();
        public ActionResult Index()
        {
            //if (Session["id"] != null)
            //{
                return View();
        //    }
        //    else
        //    {
        //        return RedirectToAction("Login");
        //    }
        }
        [HttpGet]
        public ActionResult Register()
        {
            return View();

        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Register(perfil _perfil)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var check = db.perfil.FirstOrDefault(s => s.email == _perfil.email);
                    if (check == null)
                    {
                        _perfil.password = GetMD5(_perfil.password);
                        db.Configuration.ValidateOnSaveEnabled = false;
                        db.perfil.Add(_perfil);
                        db.SaveChanges();
                        return RedirectToAction("Index");
                    }
                    else
                    {
                        ViewBag.error = "Email already exists";
                        return View();
                    }


                }
                return View();
            }
            catch (DbEntityValidationException dbEx)
            {
                Exception raise = dbEx;
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        raise = new InvalidOperationException(message, raise);
                    }
                }
                ViewBag.error = raise;
                throw raise;

            }
        }
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(string email, string password)
        {
            if (ModelState.IsValid)
            {


                var f_password = GetMD5(password);
                var data = db.perfil.Where(s => s.email.Equals(email) && s.password.Equals(f_password)).ToList();
                if (data.Count() > 0)
                {
                    //add session
                    Session["nomeCompleto"] = " Nome completo é:" + data.FirstOrDefault().nomeCompleto + "; E o nome de perfil é: " + data.FirstOrDefault().nomePerfil;
                    Session["email"] = data.FirstOrDefault().email;
                    Session["id"] = data.FirstOrDefault().id;
                    return RedirectToAction("Index");
                }
                else
                {
                    ViewBag.error = "Login failed";
                    return RedirectToAction("Login");
                }
            }
            return View();

        }
       // protected string SessionID { get { return TempData["id"]; } }

        public static string GetMD5(string str)
        {
            try
            {
                MD5 md5 = new MD5CryptoServiceProvider();
                if(str == null)
                {
                    return null;
                }
                byte[] fromData = Encoding.UTF8.GetBytes(str);
                byte[] targetData = md5.ComputeHash(fromData);
                string byte2String = null;

                for (int i = 0; i < targetData.Length; i++)
                {
                    byte2String += targetData[i].ToString("x2");

                }
                return byte2String;
            }
            catch (DbEntityValidationException MDEx)
            {
                Exception ex = MDEx;
                foreach (var validationErrors in MDEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        ex = new InvalidOperationException(message, ex);
                    }
                }
                throw ex;
            }
        }
    }
}