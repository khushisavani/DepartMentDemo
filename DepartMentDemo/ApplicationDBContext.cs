using DepartMentDemo.Models;
using Microsoft.EntityFrameworkCore;
namespace DepartMentDemo
{
    public class ApplicationDBContext : DbContext
    {
        public ApplicationDBContext(DbContextOptions<ApplicationDBContext> options) : base(options)
        {
        }

       public DbSet<Department> DepartmentTb { get; set; }
    }
}