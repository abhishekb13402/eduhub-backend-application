using EduHubProject.Data;
using EduHubProject.Models;
using EduHubProject.Repository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EduHubProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CertificateController : ControllerBase
    {
        private readonly EduHubDBContext eduHubDB;
        CertificateRepository certificateRepository;

        public CertificateController(EduHubDBContext eduHubDB)
        {
            this.eduHubDB = eduHubDB;
            certificateRepository = new CertificateRepository(eduHubDB);
        }

        [HttpPost]
        public object? AddCerti(Certificate certificate) 
        {
            return certificateRepository.AddCerificateByByUId(certificate); 
        }


        [HttpGet]
        public object? GetCertibyid(int Uid)
        {
            return certificateRepository.GetCertificateByUserId(Uid);
        }

        [HttpDelete]
        public bool DeleteCerti(int Certiid)
        {
            return certificateRepository.DeleteCerificateByCertiId(Certiid);
        }
    }
}
