using EduHubProject.Data;

namespace EduHubProject.Repository
{
    public class ResultRepository
    {
        private readonly EduHubDBContext eduHubDBContext;

        public ResultRepository(EduHubDBContext eduHubDBContext)
        {
            this.eduHubDBContext = eduHubDBContext;
        }

        public object? GetResultsByFilter(int filter)
        {
            var result = (from R in eduHubDBContext.Results
                          join U in eduHubDBContext.Users on R.UserId equals U.Id
                          join C in eduHubDBContext.courses on R.CourseId equals C.CourseId
                          where (C.CourseId == filter || U.Id == filter)
                          select new { R.ResultId, R.UserId, R.CourseId, R.Score, C.CourseName, U.FullName }
                            ).ToList();
            return result;


        }
    }
}
