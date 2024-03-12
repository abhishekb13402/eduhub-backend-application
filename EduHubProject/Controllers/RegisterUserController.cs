using EduHubProject.Data;
using EduHubProject.Models;
using EduHubProject.Repository;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace EduHubProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RegisterUserController : ControllerBase
    {
        private readonly EduHubDBContext eduHubDB;
        RegUserRepository reguserrepository;
        IConfiguration configuration;
        public RegisterUserController(EduHubDBContext eduHubDB,IConfiguration configuration)
        {
            this.eduHubDB = eduHubDB;
            reguserrepository = new RegUserRepository(eduHubDB);
            this.configuration = configuration;
        }

        [HttpGet]
        [Authorize]
        public object GetAllUsers()
        {
            return reguserrepository.GetAll();
        }

        [HttpGet("{id}")]
        [Authorize]
        public object? GetUser(int id)
        {
            return reguserrepository.GetRegisterUserById(id);
        }

        [HttpPost("Authentication")]
        public object AuthenticateUser(string username, string password)
        {
            bool isValidUser = reguserrepository.AuthenticateUser(username, password);
            if (isValidUser)
            {
                return generateToken(username);
            }
            else
            {
                return new Exception("Invalid user name and password");
            }
        }

        private string generateToken(string username)
        {
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(this.configuration["Jwt:Key"]));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);

            var claims = new[]
            {
                new Claim(ClaimTypes.NameIdentifier,username),
                //new Claim(ClaimTypes.Email,user.Email),

            };
            var token = new JwtSecurityToken(this.configuration["Jwt:Issuer"],
                this.configuration["Jwt:Audience"],
                claims,
                expires: DateTime.Now.AddDays(1),
                signingCredentials: credentials
            );

            return new JwtSecurityTokenHandler().WriteToken(token);
        }

        [HttpPost]
        [Authorize]
        public object AddUser(User registerUser)
        {
            return reguserrepository.AddUser(registerUser);
        }

        [HttpPut]
        [Authorize]
        public object? Updateuser(User registerUser)
        {
            return reguserrepository.UpdateRegisterUser(registerUser);
        }

        [HttpDelete]
        [Authorize]
        public object DeleteUser(int id)
        {
            return reguserrepository.DeleteRegisterUser(id);
        }

    }
}
