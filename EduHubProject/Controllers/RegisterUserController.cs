using EduHubProject.Data;
using EduHubProject.Models;
using EduHubProject.Repository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EduHubProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RegisterUserController : ControllerBase
    {
        private readonly EduHubDBContext eduHubDB;
        RegUserRepository reguserrepository;

        public RegisterUserController(EduHubDBContext eduHubDB)
        {
            this.eduHubDB = eduHubDB;
            reguserrepository = new RegUserRepository(eduHubDB);
        }

        [HttpGet]
        public object GetAllUsers()
        {
            return reguserrepository.GetAll();
        }

        [HttpGet("{id}")]
        public object? GetUser(int id)
        {
            return reguserrepository.GetRegisterUserById(id);
        }

        [HttpPost]
        public object AddUser(User registerUser)
        {
            return reguserrepository.AddUser(registerUser);
        }

        [HttpPut]
        public object? Updateuser(User registerUser)
        {
            return reguserrepository.UpdateRegisterUser(registerUser);
        }

        [HttpDelete] 
        public object DeleteUser(int id)
        {
            return reguserrepository.DeleteRegisterUser(id);
        }

    }
}
