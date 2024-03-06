using EduHubProject.Data;
using EduHubProject.Models;

namespace EduHubProject.Repository
{
    public class CertificateRepository
    {
        private readonly EduHubDBContext eduHubDBContext;

        public CertificateRepository(EduHubDBContext eduHubDBContext)
        {
            this.eduHubDBContext = eduHubDBContext;
        }

        public Certificate? AddCerificateByByUId(Certificate certificate)
        {
            if (certificate == null) throw new ArgumentNullException(nameof(certificate));
            eduHubDBContext.Certificates.Add(certificate);
            eduHubDBContext.SaveChanges();
            return certificate;
        }

        public object? GetCertificateByUserId(int uId)
        {
            var result = eduHubDBContext.Certificates
                .Where(x => x.UserId == uId).ToList();
            return result;
        }

        public bool DeleteCerificateByCertiId(int cid)
        {
            var userselectcid = eduHubDBContext.Certificates.Find(cid);
            if (userselectcid == null)
            {
                return false;
            }
            else
            {
                eduHubDBContext.Certificates.Remove(userselectcid);
                eduHubDBContext.SaveChanges();
                return true;
            }
        }
    }
}
