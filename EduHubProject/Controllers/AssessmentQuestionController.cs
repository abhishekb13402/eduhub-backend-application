using EduHubProject.Data;
using EduHubProject.Models;
using EduHubProject.Repository;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EduHubProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AssessmentQuestionController : ControllerBase
    {
        private readonly EduHubDBContext eduHubDB;
        AssessmentQuestionRepository assessmentquestionrepository;

        public AssessmentQuestionController(EduHubDBContext eduHubDB)
        {
            this.eduHubDB = eduHubDB;
            assessmentquestionrepository = new AssessmentQuestionRepository(eduHubDB);
        }

        [HttpPost]
        [Authorize]
        public object? AddAssessmentQuestionsByCourseId(AssessmentQuestions assessmentQuestions)
        {
            return assessmentquestionrepository.AddAssessmentQuestionsByCourseId(assessmentQuestions);
        }

        [Authorize]
        [HttpGet("{cname}")]
        public object? GetAssessmentByCourseName(string cname)
        {
            return assessmentquestionrepository.GetAssessmentByCourseName(cname);
        }

        [Authorize]
        [HttpGet]
        public object? GetAssessmentQByQid(int questionid)
        {
            return assessmentquestionrepository.GetAssessmentQByQid(questionid);
        }

        [Authorize]
        [HttpDelete]
        public object? DeleteAssessmentByCourseId(int cid)
        {
            return assessmentquestionrepository.DeleteAssessmentByCourseId(cid);
        }

        [Authorize]
        [HttpDelete("{qid}")]
        public object? DeleteAssessmentByQId(int qid)
        {
            return assessmentquestionrepository.DeleteAssessmentByQId(qid);
        }

        [Authorize]
        [HttpPut]
        public object? UpdateAssQuestionByQId(AssessmentQuestions assessmentQuestions)
        {
            return assessmentquestionrepository.UpdateAssessmentQuestionByQId(assessmentQuestions);
        }


    }
}
