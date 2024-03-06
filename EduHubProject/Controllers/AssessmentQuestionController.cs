using EduHubProject.Data;
using EduHubProject.Models;
using EduHubProject.Repository;
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
        public object? AddAssessmentQuestionsByCourseId(AssessmentQuestions assessmentQuestions)
        {
            return assessmentquestionrepository.AddAssessmentQuestionsByCourseId(assessmentQuestions);
        }

        [HttpGet("{cid}")]
        public object? GetAssessmentByCourseId(int cid)
        {
            return assessmentquestionrepository.GetAssessmentByCourseId(cid);
        }

        [HttpDelete]
        public object? DeleteAssessmentByCourseId(int cid)
        {
            return assessmentquestionrepository.DeleteAssessmentByCourseId(cid);
        }

        [HttpDelete("{qid}")]
        public object? DeleteAssessmentByQId(int qid)
        {
            return assessmentquestionrepository.DeleteAssessmentByQId(qid);
        }

        [HttpPut]
        public object? UpdateAssQuestionByQId(AssessmentQuestions assessmentQuestions)
        {
            return assessmentquestionrepository.UpdateAssessmentQuestionByQId(assessmentQuestions);
        }


    }
}
