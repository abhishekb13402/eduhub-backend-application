using EduHubProject.Models;
using Microsoft.EntityFrameworkCore;

namespace EduHubProject.Data

{
    public class EduHubDBContext : DbContext
    {
        public EduHubDBContext(DbContextOptions options) : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            //modelBuilder.Entity<Result>()
            //    .HasKey(t => new { t.EmployeeId, t.ProjectId });
            //modelBuilder.Entity<Result>()
            //  .HasOne(t => t.UserId)
            //  .WithMany(t => t.Result)
            //  .HasForeignKey(t => t.UserId);
            
        }
   
        public DbSet<User> Users { get; set; }

        public DbSet<AssessmentQuestions> AssessmentQuestions { get; set; }
        public DbSet<Certificate> Certificates { get; set; }
        public DbSet<Course> courses { get; set; }
        public DbSet<Enrollment> Enrollments { get; set; }
        public DbSet<Module> Modules { get; set; }
        public DbSet<Result> Results { get; set; }
    }
}
