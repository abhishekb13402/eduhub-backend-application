using EduHubProject.Data;
using EduHubProject.Models;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.EntityFrameworkCore;

namespace EduHubProject.Repository
{
    public class RegUserRepository
    {
        private readonly EduHubDBContext eduHubDBContext;

        public RegUserRepository(EduHubDBContext eduHubDBContext)
        {
            this.eduHubDBContext = eduHubDBContext;
        }

        public User AddUser(User registerUser)
        {
            if (registerUser == null) throw new ArgumentNullException(nameof(registerUser));
            eduHubDBContext.Users.Add(registerUser);
            eduHubDBContext.SaveChanges();
            return registerUser;
        }

        public List<User> GetAll()
        {
            return eduHubDBContext.Users
                .Include(i => i.Enrollments)
                .Include(i => i.certificates)
                .Include(i => i.Results)
                .ToList();
        }

        public User? GetRegisterUserById(int id)
        {
            return eduHubDBContext.Users
                .Include(i => i.Enrollments)
                .Include(i => i.certificates)
                .Include(i => i.Results)
                .FirstOrDefault(i => i.Id == id);
        }

        public bool DeleteRegisterUser(int id)
        {
            var userdelete = eduHubDBContext.Users.Find(id);
            if (userdelete == null) 
            { 
                return false; 
            }
            else
            {
                eduHubDBContext.Users.Remove(userdelete);
                eduHubDBContext.SaveChanges();
                return true;
            }
        }

        public object? UpdateRegisterUser(User registerUser)
        {
            var existuser = eduHubDBContext.Users.Find(registerUser.Id);
            if (existuser == null) 
            { 
                return null; 
            } 
            else
            {
                existuser.UserName= registerUser.UserName;
                existuser.UserPassword= registerUser.UserPassword;
                existuser.FullName= registerUser.FullName;
                existuser.UserEmail= registerUser.UserEmail;

                eduHubDBContext.SaveChanges();
                return registerUser;
            }
        }

    }
}
