using System.ComponentModel.DataAnnotations;

namespace EduHubProject.Models
{
    public class Course
    {
        [Key]
        public int CourseId { get; set; }
        public string CourseName { get; set; }
        public string Description { get; set; }

        public virtual ICollection<Module>? modules { get; set; }
        //Collection navigation property to represent the module managed by the course
        public virtual ICollection<Enrollment>? enrollments { get; set; }
        //Collection navigation property to represent the enrollment managed by the course
        public virtual ICollection<AssessmentQuestions>? AssessmentQuestions { get; set; }
        //Collection navigation property to represent the AssessmentQuestions managed by the course
        public virtual ICollection<Certificate>? certificates { get; set; }
        //Collection navigation property to represent the certificates managed by the course

    }
}
