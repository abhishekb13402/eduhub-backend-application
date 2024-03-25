using EduHubProject.Data;
using EduHubProject.Models;
using Microsoft.EntityFrameworkCore;

namespace EduHubProject.Repository
{
    public class CourseRepository
    {
        private readonly EduHubDBContext eduHubDBContext;

        public CourseRepository(EduHubDBContext eduHubDBContext)
        {
            this.eduHubDBContext = eduHubDBContext;
        }
        
        public Course AddCourse(Course course)
        {
            if (course == null) throw new ArgumentNullException(nameof(course));
            eduHubDBContext.courses.Add(course);
            eduHubDBContext.SaveChanges();
            return course;
        }

        public List<Course> GetAllCourse() 
        {
            return eduHubDBContext.courses
                .Include(x => x.certificates)
                //.Include(x => x.AssessmentQuestions)
                //.Include(x => x.certificates)

                .ToList();
        }

        public Course? GetCourseByCourseId(int CourseID)
        {
            //return eduHubDBContext.courses.FirstOrDefault(i => i.CourseName == courseName);
            return eduHubDBContext.courses.FirstOrDefault(i => i.CourseId == CourseID);
        }

        public Course? GetCourseByCourseName(string CourseName)
        {
            //return eduHubDBContext.courses.FirstOrDefault(i => i.CourseName == courseName);
            return eduHubDBContext.courses.FirstOrDefault(i => i.CourseName == CourseName);
        }

        public bool DeleteCourseById(int id) 
        {
            var userdeletecourse = eduHubDBContext.courses.Find(id);
            if(userdeletecourse == null)
            {
                return false;
            }
            else
            {
                eduHubDBContext.courses.Remove(userdeletecourse);
                eduHubDBContext.SaveChanges();
                return true;
            }
        }

        public bool DeleteCourseByName(string courseName)
        {
            //string qry = eduHubDBContext.courses.Where(i => i.CourseName == courseName).ToQueryString();

            var userdeletecoursebyn = eduHubDBContext.courses.FirstOrDefault(i => i.CourseName == courseName);
            if (userdeletecoursebyn == null)
            {
                return false;
            }
            else
            {
                eduHubDBContext.courses.Remove(userdeletecoursebyn);
                eduHubDBContext.SaveChanges();
                return true;
            }
        }

        public object? UpdateCourse(Course course)
        {
            var existcourse = eduHubDBContext.courses.Find(course.CourseId);
            if(existcourse == null)
            {
                return null;
            }
            else
            {
                existcourse.CourseName = course.CourseName;
                existcourse.Description = course.Description;

                eduHubDBContext.SaveChanges();
                return course;
            }

        }
    }

}
