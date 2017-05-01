using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BrandTest.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index(string input = "")
        {
            if(input.Equals(""))
            {
                return View();
            }
            else
            {
                //reverses input and returns result as JSON
                char[] reversedStr = input.ToCharArray();
                Array.Reverse(reversedStr);
                return Json(new string(reversedStr));
            }
        }
    }
}
