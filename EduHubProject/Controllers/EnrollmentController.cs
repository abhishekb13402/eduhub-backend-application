using EduHubProject.Data;
using EduHubProject.Repository;
using EduHubProject.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;

namespace EduHubProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EnrollmentController : ControllerBase
    {
        private readonly EduHubDBContext eduHubDB;
        EnrollmentRepository enrollmentrepository;

        public EnrollmentController(EduHubDBContext eduHubDB)
        {
            this.eduHubDB = eduHubDB;
            enrollmentrepository = new EnrollmentRepository(eduHubDB);
        }



        [HttpPost]
        [Authorize]

        public object? AddEnrollment(Enrollment enrollment)
        {
            return enrollmentrepository.AddEnrollment(enrollment);
        }

        [Authorize]
        [HttpGet]
        public object? GetEnrollmentByCourseId(int cid)
        {
            return enrollmentrepository.GetEnrollmentByCourseId(cid);
        }

        [Authorize]
        [HttpDelete]
        public object? DeleteEnrollment(int id)
        {
            return enrollmentrepository.DeleteEnrollmentByEnrollId(id);
        }

    }
}
