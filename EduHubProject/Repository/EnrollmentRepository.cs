using EduHubProject.Data;
using EduHubProject.Models;

namespace EduHubProject.Repository
{
    public class EnrollmentRepository
    {
        private readonly EduHubDBContext eduHubDBContext;

        public EnrollmentRepository(EduHubDBContext eduHubDBContext)
        {
            this.eduHubDBContext = eduHubDBContext;
        }

        public Enrollment? AddEnrollment(Enrollment enrollment)
        {
            if (enrollment == null) throw new ArgumentNullException(nameof(enrollment));
            eduHubDBContext.Enrollments.Add(enrollment);
            eduHubDBContext.SaveChanges();
            return enrollment;
        }

        public object? GetEnrollmentByCourseId(int cid)
        {
            var result = eduHubDBContext.Enrollments.
                Where(c => c.CourseId == cid)
                .ToList();

            return result;
        }

        public bool DeleteEnrollmentByEnrollId(int id)
        {
            var userdeleteEnrollment = eduHubDBContext.Enrollments.Find(id);
            if (userdeleteEnrollment == null)
            {
                return false;
            }
            else
            {
                eduHubDBContext.Enrollments.Remove(userdeleteEnrollment);
                eduHubDBContext.SaveChanges();
                return true;
            }
        }

       
    }
}
