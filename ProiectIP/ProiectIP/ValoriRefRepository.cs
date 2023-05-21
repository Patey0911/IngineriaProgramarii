using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProiectIP
{
    internal class ValoriRefRepository
    {
        static FirebaseClient firebaseClient = new FirebaseClient("https://ambient-assisted-living-918d2-default-rtdb.europe-west1.firebasedatabase.app/");
        public static async Task<List<ValoriRefModel>> GetAllValoriSenzoriByCNP(string CNP)
        {
            var reflist = (await firebaseClient
            .Child("ValoriRef")
            .OrderByKey()
            .EqualTo(CNP)
            .OnceAsync<ValoriRefModel>())
            .Select(item =>
            new ValoriRefModel
            {
                maxGlicemie=item.Object.maxGlicemie,
                maxGreutate = item.Object.maxGreutate,
                maxProximitate =item.Object.maxProximitate,
                maxPuls=item.Object.maxPuls,
                maxSaturatieGaz=item.Object.maxSaturatieGaz,
                maxTA=item.Object.maxTA,
                maxTempAmbientala=item.Object.maxTempAmbientala,
                maxTempCorp=item.Object.maxTempCorp,
                maxUmiditate=item.Object.maxUmiditate,
                minGlicemie = item.Object.minGlicemie,
                minGreutate = item.Object.minGreutate,
                minProximitate = item.Object.minProximitate,
                minPuls=item.Object.minPuls,
                minSaturatieGaz=item.Object.minSaturatieGaz,
                minTA=item.Object.minTA,
                minTempAmbientala=item.Object.minTempAmbientala,
                minTempCorp=item.Object.minTempCorp,
                minUmiditate=item.Object.minUmiditate
            }).ToList();
            return reflist;
        }
    }
}
