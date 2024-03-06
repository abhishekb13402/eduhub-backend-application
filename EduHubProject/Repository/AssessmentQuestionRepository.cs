using EduHubProject.Data;
using EduHubProject.Models;

namespace EduHubProject.Repository
{
    public class AssessmentQuestionRepository
    {
        private readonly EduHubDBContext eduHubDBContext;

        public AssessmentQuestionRepository(EduHubDBContext eduHubDBContext) 
        {
            this.eduHubDBContext = eduHubDBContext;
        }

        public AssessmentQuestions? AddAssessmentQuestionsByCourseId(AssessmentQuestions assessmentQuestions)
        {
            if (assessmentQuestions == null) throw new ArgumentNullException(nameof(assessmentQuestions));
            eduHubDBContext.AssessmentQuestions.Add(assessmentQuestions);
            eduHubDBContext.SaveChanges();
            return assessmentQuestions;
        }

        public List<AssessmentQuestions> GetAssessmentByCourseId(int id)
        {
            var result = eduHubDBContext.AssessmentQuestions
                .Where(assq => assq.CourseId == id)
                .ToList();
            return result;
        }

        public bool DeleteAssessmentByCourseId(int cid)
        {
            var userdeleteassq = eduHubDBContext.AssessmentQuestions
                .Where(asq => asq.CourseId == cid).ToList();
            if (userdeleteassq == null)
            {
                return false;
            }
            else
            {
                eduHubDBContext.AssessmentQuestions.RemoveRange(userdeleteassq);
                eduHubDBContext.SaveChanges();
                return true;
            }
        }

        public bool DeleteAssessmentByQId(int qid)
        {
            var userdeleteassquestion = eduHubDBContext.AssessmentQuestions.Find(qid);
            if (userdeleteassquestion == null)
            {
                return false;
            }
            else
            {
                eduHubDBContext.AssessmentQuestions.Remove(userdeleteassquestion);
                eduHubDBContext.SaveChanges();
                return true;
            }
        }

        public object? UpdateAssessmentQuestionByQId(AssessmentQuestions assessmentQuestions)
        {
            var existassq = eduHubDBContext.AssessmentQuestions.Find(assessmentQuestions.QuestionId);
            if (existassq == null)
            {
                return null;
            }
            else
            {
                existassq.CourseId = assessmentQuestions.CourseId;
                existassq.QuestionText = assessmentQuestions.QuestionText;
                existassq.CorrectAns = assessmentQuestions.CorrectAns;
                existassq.OptA = assessmentQuestions.OptA;
                existassq.OptB = assessmentQuestions.OptB;
                existassq.OptC = assessmentQuestions.OptC;
                existassq.OptD = assessmentQuestions.OptD;

                eduHubDBContext.SaveChanges();
                return assessmentQuestions;
            }
        }

    }
}
