using EduHubProject.Data;
using EduHubProject.Repository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EduHubProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ResultController : ControllerBase
    {
        private readonly EduHubDBContext eduHubDB;
        ResultRepository resultRepository;
        public ResultController(EduHubDBContext eduHubDB)
        {
            this.eduHubDB = eduHubDB;
            resultRepository = new ResultRepository(eduHubDB);
        }

        [HttpGet]
        public object? GetResultsByFilter(int UCId)
        {
            return resultRepository.GetResultsByFilter(UCId);
        }
    }
}
