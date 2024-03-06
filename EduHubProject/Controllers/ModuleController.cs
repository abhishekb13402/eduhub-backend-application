using EduHubProject.Data;
using EduHubProject.Models;
using EduHubProject.Repository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.HttpLogging;
using Microsoft.AspNetCore.Mvc;

namespace EduHubProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ModuleController : ControllerBase
    {
        private readonly EduHubDBContext eduHubDB;
        ModuleRepository moduleRepository;

        public ModuleController(EduHubDBContext eduHubDB)
        {
            this.eduHubDB = eduHubDB;
            moduleRepository = new ModuleRepository(eduHubDB);
        }

        [HttpPost]
        public object? AddModule(Module module)
        {
            return moduleRepository.AddModule(module);
        }

        [HttpGet("{Courseid}")]
        public object? GetModuleByCourseId(int Courseid)
        {
            return moduleRepository.GetModuleByCourseId(Courseid);
        }

        [HttpDelete]
        public object? DeleteModuleById(int id)
        {
            return moduleRepository.DeleteModuleById(id);
        }

        [HttpPut]
        public object? UpdateModuleById(Module module)
        {
            return moduleRepository.UpdateModuleById(module);
        }


    }
}
