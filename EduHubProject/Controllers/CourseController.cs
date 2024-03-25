using EduHubProject.Data;
using EduHubProject.Models;
using EduHubProject.Repository;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EduHubProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CourseController : ControllerBase
    {
        private readonly EduHubDBContext eduHubDB;
        CourseRepository courserepository;

        public CourseController(EduHubDBContext eduHubDB)
        {
            this.eduHubDB = eduHubDB;
            courserepository = new CourseRepository(eduHubDB);
        }

        [HttpGet]
        public object GetAllCourse()
        {
            return courserepository.GetAllCourse();
        }

        [HttpGet("{CourseID}")]
        public object? GetCourseByCourseId(int CourseID) 
        {
            return courserepository.GetCourseByCourseId(CourseID);
        }

        [HttpGet("CourseName")]
        public object? GetCourseByCourseName(string CourseName)
        {
            return courserepository.GetCourseByCourseName(CourseName);
        }

        [HttpPost]
        [Authorize]
        public object AddCourse(Course course)
        {
            return courserepository.AddCourse(course);
        }

        [HttpDelete]
        [Authorize]
        public object DeleteCourseById(int courseId)
        {
            return courserepository.DeleteCourseById(courseId);
        }

        [HttpDelete("{courseName}")]
        [Authorize]
        public object DeleteCourseByName(string courseName)
        {
            return courserepository.DeleteCourseByName(courseName);
        }

        [HttpPut]
        [Authorize]
        public object? UpdateCourse(Course course)
        {
            return courserepository.UpdateCourse(course);
        }

    }
}
