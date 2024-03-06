using System.ComponentModel.DataAnnotations;

namespace EduHubProject.Models
{
    public class User
    {
        [Key]
        public int Id { get; set; }

        [Required, MaxLength(12), MinLength(2)]
        public string UserName { get; set; }

        [Required, MaxLength(12), MinLength(4)]
        public string UserPassword { get; set; }

        [Required, MaxLength(20), MinLength(2)]
        public string FullName { get; set; }

        [Required]
        public string UserEmail { get; set; }

        public virtual ICollection<Certificate>? certificates { get; }
        public virtual ICollection<Enrollment>? Enrollments { get; }
        public virtual ICollection<Result>? Results { get; }
    }
}
