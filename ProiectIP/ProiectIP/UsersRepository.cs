using Firebase.Auth;
using Firebase.Database;
using Firebase.Database.Query;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using XF_Login.Models;

namespace ProiectIP
{
    internal class UsersRepository
    {
        static FirebaseClient firebaseClient = new FirebaseClient("https://ambient-assisted-living-918d2-default-rtdb.europe-west1.firebasedatabase.app/");
        //FirebaseStorage firebaseStorage = new FirebaseStorage("xamarinfirebase-b9036.appspot.com");
        public static async Task<bool> Save(UsersModel users)
        {
            var data = await firebaseClient.Child(nameof(UsersModel)).PostAsync(JsonConvert.SerializeObject(users));
            if (!string.IsNullOrEmpty(data.Key))
            {
                return true;
            }
            return false;
        }

        public static async Task<List<UsersModel>> GetAllUsers()
        { 
            var userlist = (await firebaseClient
            .Child("Pacient")
            .OnceAsync<UsersModel>()).Select(item =>
            new UsersModel
            {
                adresaPacient = item.Object.adresaPacient,
                cnpPacient = item.Object.cnpPacient,
                numePacient = item.Object.numePacient,
                parolaPacient = item.Object.parolaPacient,
                prenumePacient  = item.Object.prenumePacient,
                telefonPacient = item.Object.telefonPacient
            }).ToList();
                return userlist;
        }

        public static async Task<UsersModel> GetByCNP(string cnpPacient)
        {
            try
            {
                var allUsers = await GetAllUsers();
                await firebaseClient
                .Child("Pacient")
                .OnceAsync<UsersModel>();
                return allUsers.Where(a => a.cnpPacient == cnpPacient).FirstOrDefault();
            }
            catch (Exception e)
            {
                Debug.WriteLine($"Error:{e}");
                return null;
            }
        }

        /*
        public static async Task<UsersModel> GetById(string Username)
        {
            try
            {
                var allUsers = await GetAllUsers();
                await firebaseClient
                .Child("Users")
                .OnceAsync<UsersModel>();
                return allUsers.Where(a => a.Username == Username).FirstOrDefault();
            }
            catch (Exception e)
            {
                Debug.WriteLine($"Error:{e}");
                return null;
            }
        }
        
        public static async Task<bool> Update(UsersModel student)
        {
            await firebaseClient.Child(nameof(UsersModel) + "/" + student.Id).PutAsync(JsonConvert.SerializeObject(student));
            return true;
        }

        public static async Task<bool> Delete(string id)
        {
            await firebaseClient.Child(nameof(UsersModel) + "/" + id).DeleteAsync();
            return true;
        }
        */

        public static async Task UpdatePassword(string cnpPacient, string newPassword)
        {
            var toUpdateStatus = (await firebaseClient
              .Child("Pacient")
              .OnceAsync<UsersModel>()).Where(a => a.Object.cnpPacient == cnpPacient).FirstOrDefault();

            toUpdateStatus.Object.parolaPacient = newPassword;

            await firebaseClient
              .Child("Pacient")
              .Child(toUpdateStatus.Key)
              .PutAsync(toUpdateStatus.Object);
        }
    }
}
