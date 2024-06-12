using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DepartMentDemo.Models
{

    public class Department
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string image { get; set; }
        public int ParentId { get; set; }
    }


    public class TreeViewNode
    {
        public string id { get; set; }
        public string parent { get; set; }
        public string text { get; set; }
        public string image { get; set; }
    }
}
