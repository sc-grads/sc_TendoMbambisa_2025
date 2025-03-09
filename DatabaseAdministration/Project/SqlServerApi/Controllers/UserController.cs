using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
 
[Route("api/database")]
[ApiController]
public class UserController : ControllerBase
{
    private readonly ApplicationDbContext _context;

    public UserController(ApplicationDbContext context)
    {
        _context = context;
    }

    // GET: api/user
    [HttpGet]
    public IActionResult GetUsers()
    {
        return Ok(_context.Users.ToList());
    }

    // POST: api/user
    [HttpPost]
    public IActionResult AddUser([FromBody] User user)
    {
        _context.Users.Add(user);
        _context.SaveChanges();
        return Ok(user);
    }
}
// public class DatabaseController : ControllerBase
// {

   // private readonly string _connectionString = "Server=SAMBE2025018;Database=AutoTestDB;Trusted_connection=true;TrustServerCertificate=true";
    
    //[HttpGet]
    
    // public IActionResult TestConnection()
    // {
    //     string str="okay";
    //     return Ok(str);
        // try
        // {
        //     using (SqlConnection conn = new SqlConnection(_connectionString))
        //     {
        //         conn.Open();
        //         return Ok("SQL Server connection successful!");
        //     }
        // }
        // catch (Exception ex)
        // {
        //     return StatusCode(500, ex.Message);
        // }
    //}
//}