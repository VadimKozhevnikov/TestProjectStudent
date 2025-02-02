using APIForDB.Data;
using APIForDB.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace APIForDB.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ProfileController : ControllerBase
    {
        private readonly ILogger<ProfileController> _logger;

        public ProfileController(ILogger<ProfileController> logger)
        {
            _logger = logger;
        }

        [HttpGet(Name = "GetUsersController")]
        public async Task<JsonResult> GetUsers()
        {
            try
            {
                using (DataBase db = new DataBase())
                {
                    var list = await db.Users.ToListAsync();
                    return new JsonResult(list);
                }
            }
            catch (Exception ex) 
            {
                Debug.WriteLine(ex);
                return null;
            }
        }
    }
}
