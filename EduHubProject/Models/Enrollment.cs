using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace EduHubProject.Models
{
    public class Enrollment
    {
        [Key]
        public int EnrollmentId { get; set; }

        [ForeignKey("UserId")]
        public int UserId { get; set; }//FK of RegisterUser - UserId
        //public virtual RegisterUser? RegisterUser { get; }

        [ForeignKey("Course Id")]
        public int CourseId { get; set; }//FK of Course - CourseId
        //Navigation property to represent the user
        public virtual Course? course { get; set; }
        //Navigation property to represent the course

    }
}
