using EduHubProject.Data;
using EduHubProject.Models;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace EduHubProject.Repository
{
    public class ModuleRepository
    {
        private readonly EduHubDBContext eduHubDBContext;

        public ModuleRepository(EduHubDBContext eduHubDBContext)
        {
            this.eduHubDBContext = eduHubDBContext;
        }

        public Module? AddModule(Module module)
        {
            if (module == null) throw new ArgumentNullException(nameof(module));
            eduHubDBContext.Modules.Add(module);
            eduHubDBContext.SaveChanges();
            return module;
        }

        public List<CourseModuleDto> GetModuleByCourseId(int id)
        {
            //select course.courseName, module.ModuleId, module.ModuleName, module.Content
            //from course
            //inner join Module
            //on course.courseId = module.courseId;

            var result = (from c in eduHubDBContext.courses
                         join m in eduHubDBContext.Modules
                         on c.CourseId equals m.CourseId
                         where c.CourseId == id
                         select new CourseModuleDto 
                         { 
                             CourseName = c.CourseName,
                             ModuleId =  m.ModuleId,
                             ModuleName = m.ModuleName,
                             CourseId = id,
                             Content = m.Content })
                            //.Include(x => x.modules)
                         .ToList();
           
            return result;

        }

        public bool DeleteModuleById(int id) 
        { 
            var userdeletemodule = eduHubDBContext.Modules.Find(id);
            if(userdeletemodule == null)
            {
                return false;
            }
            else
            {
                eduHubDBContext.Modules.Remove(userdeletemodule);
                eduHubDBContext.SaveChanges() ;
                return true;
            }
        }

        public object? UpdateModuleById(Module module)
        {
            var existmodule = eduHubDBContext.Modules.Find(module.ModuleId);
            if(existmodule == null)
            {
                return null;
            }
            else
            {
                existmodule.ModuleName = module.ModuleName;
                existmodule.Content= module.Content;

                eduHubDBContext.SaveChanges();
                return module;
            }
        }


    }
}
