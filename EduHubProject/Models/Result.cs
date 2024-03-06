using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace EduHubProject.Models
{
    public class Result
    {
        [Key]
        public int ResultId { get; set; }


        [ForeignKey("UserId")]
        public int UserId { get; set; }//FK of RegisterUser - UserId
        //public virtual RegisterUser RegisterUser { get; set; }

        [ForeignKey("Course Id")]
        public int CourseId { get; set; }//FK of Course - CourseId
        public virtual Course? Course { get; set; }

        public int Score { get; set; }
    }
}
