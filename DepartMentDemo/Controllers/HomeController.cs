using System.Linq;
using DepartMentDemo.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Collections.Generic;

namespace DepartMentDemo.Controllers
{
    public class HomeController : Controller
    {
        private ApplicationDBContext Context;
        public HomeController(ApplicationDBContext _context)
        {
            this.Context = _context;
        }



        public JsonResult GetDepartmentV1(int? id)
        {
                var treelist = from e in Context.DepartmentTb
                                where (id.HasValue ? e.ParentId == id : e.ParentId == 0)
                                select new
                                {
                                    id = e.Id,
                                    image = e.image,
                                    Name = e.Name,
                                    hasChildren = (from q in Context.DepartmentTb
                                                   where (q.ParentId == e.Id)
                                                   select q
                                                   ).Count() > 0
                                };

                return Json(treelist.ToList());
            
        }

        public string GetDepartmentV2()
        {
            var TreeViewNodeList = from e in this.Context.DepartmentTb
                            select new TreeViewNode
                            {
                                id = e.Id.ToString(),
                                image = e.image,
                                parent = e.ParentId.ToString() == "0" ? "#" : e.ParentId.ToString(),
                                text = e.Name
                            };

            return JsonConvert.SerializeObject(TreeViewNodeList.ToList());

        }

        public IActionResult Index()
        {
            List<TreeViewNode> nodes = new List<TreeViewNode>();

            //Serialize to JSON string.
            ViewBag.Json = GetDepartmentV2();
            return View();
        }

        [HttpPost]
        public IActionResult Index(string selectedItems)
        {
            List<TreeViewNode> items = JsonConvert.DeserializeObject<List<TreeViewNode>>(selectedItems);
            return RedirectToAction("Index");
        }
    }
}