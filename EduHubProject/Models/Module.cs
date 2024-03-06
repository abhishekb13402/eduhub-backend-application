using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace EduHubProject.Models
{
    public class Module
    {
        [Key]
        public int ModuleId { get; set; }
        [ForeignKey("Course Id")]
        public int CourseId { get; set; }//FK of Course - CourseId

        public virtual Course? course { get; set; }
        //Navigation property to represent the course

        public string ModuleName { get; set; }
        public string Content { get; set; }
    }
}
