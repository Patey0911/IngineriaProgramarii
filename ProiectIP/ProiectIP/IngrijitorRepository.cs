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
    internal class IngrijitorRepository
    {
        static FirebaseClient firebaseClient = new FirebaseClient("https://ambient-assisted-living-918d2-default-rtdb.europe-west1.firebasedatabase.app/");

        
        static async Task<List<IngrijitorModel>> GetAllIngrijitor()
        {
            var ingrijitorlist = (await firebaseClient
            .Child("Ingrijitor")
            .OnceAsync<IngrijitorModel>()).Select(item =>
            new IngrijitorModel
            {
                Disponibilitate=item.Object.Disponibilitate,
                numeIngrijitor=item.Object.numeIngrijitor,
                parolaIngrijitor=item.Object.parolaIngrijitor,
                prenumeIngrijitor=item.Object.prenumeIngrijitor,
                telefonIngrjitor=item.Object.telefonIngrjitor
            }).ToList();
            return ingrijitorlist;

        }

        public static async Task<IngrijitorModel> GetByName(string nume)
        {
            try
            {
                var allIngrijitori = await GetAllIngrijitor();
                await firebaseClient
                .Child("Ingirijitor")
                .OnceAsync<IngrijitorModel>();
                return allIngrijitori.Where(a => a.numeIngrijitor == nume).FirstOrDefault();
            }
            catch (Exception e)
            {
                Debug.WriteLine($"Error:{e}");
                return null;
            }
        }

        public static async Task UpdatePassword(string numeIngrijitor, string newPassword)
        {
            var toUpdateStatus = (await firebaseClient
              .Child("Ingrijitor")
              .OnceAsync<IngrijitorModel>()).Where(a => a.Object.numeIngrijitor == numeIngrijitor).FirstOrDefault();

            toUpdateStatus.Object.parolaIngrijitor = newPassword;

            await firebaseClient
              .Child("Ingrijitor")
              .Child(toUpdateStatus.Key)
              .PutAsync(toUpdateStatus.Object);
        }

    }
}
