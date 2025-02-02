using APIForDB.Models;
using Microsoft.EntityFrameworkCore;

namespace APIForDB.Data
{
    public class DataBase : DbContext
    {
        public DbSet<Users> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server = VadimPC; DataBase = Diplom; User id = sa; Password = 123; TrustServerCertificate = True");
        }
    }
}
