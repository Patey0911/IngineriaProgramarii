using Firebase.Database;
using Firebase.Database.Query;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using XF_Login.Models;

namespace ProiectIP
{
    internal class AnalysisRepository
    {
        static string URL_base = "https://ambient-assisted-living-918d2-default-rtdb.europe-west1.firebasedatabase.app/";
        static FirebaseClient firebaseClient = new FirebaseClient(URL_base);
        public static async Task<List<AnalysisModel>> GetAllAnalysisByCNP(string CNP)
        {
            var analysislist = (await firebaseClient
            .Child("FisaMedicala")
            .OrderByKey()
            .EqualTo(CNP)
            .OnceAsync<AnalysisModel>())
            .Select(item =>
            new AnalysisModel
            {
                UltimaConsultatie = item.Object.UltimaConsultatie,
                afectiuniCronice = item.Object.afectiuniCronice,
                alergii = item.Object.alergii,
                diagnostic = item.Object.diagnostic,
                tratament = item.Object.tratament
            }).ToList();
            return analysislist;


        }
    }
}
