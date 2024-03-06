using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace EduHubProject.Models
{
    public class Certificate
    {
        [Key]
        public int CertificateId { get; set; }

        [ForeignKey("Course Id")]
        public int CourseId { get; set; }//FK of Course - CourseId
        [ForeignKey("User Id")]
        public int UserId { get; set; }//FK of RegisterUser - UserId
        public DateTime CertiCreatedDate { get; set; }

       

        //public virtual RegisterUser RegisterUser { get; set; }
        //Navigation property to represent the user

    }
}
