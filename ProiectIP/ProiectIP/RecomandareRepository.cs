using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace ProiectIP
{
    internal class RecomandareRepository
    {
        static string URL_base = "https://real-time-database-63913-default-rtdb.europe-west1.firebasedatabase.app/";
        static FirebaseClient firebaseClient = new FirebaseClient(URL_base);
        public static async Task<List<String>> GetAllRecomandariNameByCNP(string CNP)
        {
            var list_recomandari_nume = (await firebaseClient
                .Child("Recomandari")
                .OrderByKey()
                .EqualTo(CNP)
                .OnceAsync<String>()
                ).ToList();

            List<String> abc = new List<string> ();
            return abc;
        }
        public static async Task<List<RecomandareModel>> GetAllRecomandariByCNP(string CNP)
        {
            var recomandarilist = (await firebaseClient
            .Child("Recomandari/"+CNP)
            .OnceAsync<RecomandareModel>())
            .Select(item =>
            new RecomandareModel
            {
                data = item.Object.data,
                recomandare = item.Object.recomandare
            }).ToList();
            return recomandarilist;
        }
    }
}
