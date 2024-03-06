using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace EduHubProject.Models
{
    public class AssessmentQuestions
    {
        [Key]
        public int QuestionId { get; set; }
        [ForeignKey("Course Id")] //FK of Course - CourseId
        public int CourseId { get; set; }
        public virtual Course? Course { get; set; }
        //Navigation property to represent the course
        public string QuestionText { get; set; }
        public string CorrectAns { get; set; }
        public string OptA { get; set; }
        public string OptB { get; set; }
        public string OptC { get; set; }
        public string OptD { get; set; }
    }
}
