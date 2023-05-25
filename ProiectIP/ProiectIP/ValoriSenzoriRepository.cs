using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using XF_Login.Models;

namespace ProiectIP
{
    internal class ValoriSenzoriRepository
    {
        static FirebaseClient firebaseClient = new FirebaseClient("https://ambient-assisted-living-918d2-default-rtdb.europe-west1.firebasedatabase.app/");
        public static async Task<List<ValoriSenzoriModel>> GetAllValoriSenzoriByCNP(string CNP)
        {
            var analysislist = (await firebaseClient
            .Child("ValoriSenzori")
            .OrderByKey()
            .EqualTo(CNP)
            .OnceAsync<ValoriSenzoriModel>())
            .Select(item =>
            new ValoriSenzoriModel
            {
                TA = item.Object.TA,
                glicemie = item.Object.glicemie,
                greutate = item.Object.greutate,
                lumina=item.Object.lumina,
                proximitate = item.Object.proximitate,
                puls = item.Object.puls,
                saturatieGaz=item.Object.saturatieGaz,
                tempAmbientala=item.Object.tempAmbientala,
                tempCorp=item.Object.tempCorp,
                umiditate=item.Object.umiditate
            }).ToList();
            return analysislist;
        }
        public static async Task UpdateStatus(string cnpPacient, string newTA, string newglicemie, string newgreutate, string newtempcorp)
        {
            var toUpdateStatus = (await firebaseClient
              .Child("ValoriSenzori")
              .OrderByKey()
              .EqualTo(cnpPacient)
              .OnceAsync<ValoriSenzoriModel>()).Where(a=>a.Object.puls!=null).FirstOrDefault();

            toUpdateStatus.Object.glicemie = newglicemie;
            toUpdateStatus.Object.TA = newTA;
            toUpdateStatus.Object.greutate = newgreutate;
            toUpdateStatus.Object.tempCorp = newtempcorp;

            await firebaseClient
              .Child("ValoriSenzori")
              .Child(toUpdateStatus.Key)
              .PutAsync(toUpdateStatus.Object);
        }
    }
}
