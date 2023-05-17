using Plugin.Fingerprint.Abstractions;
using Plugin.Fingerprint;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Firebase.Database;
using Firebase.Database.Offline;
using Xamarin.Essentials;
using XF_Login.Models;
using Firebase.Auth;
using System.Net.NetworkInformation;
using System.Security.Cryptography.X509Certificates;

namespace ProiectIP
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Login : ContentPage
    {
        public static string CNP_Pacient_Shared;
        public static string Username_Ingrijitor;
        public Login()
        {
            InitializeComponent();
            //Date_biometrice_Verification();          
        }

        protected override async void OnAppearing()
        {
            String Internet_Status = Connectivity.NetworkAccess.ToString();
            while (Internet_Status == "None" || Internet_Status == "Local")
            {
                await DisplayAlert("Warning!", "Conectati-va la Internet", "Ok");
                Internet_Status = Connectivity.NetworkAccess.ToString();
            }
            Connectivity.ConnectivityChanged += Connectivity_ConnectivityChanged;
            var userlist = UsersRepository.GetAllUsers();
        }

        private async void Connectivity_ConnectivityChanged(object sender, ConnectivityChangedEventArgs e)
        {
            String Internet_Status = Connectivity.NetworkAccess.ToString();
            while (Internet_Status == "None" || Internet_Status == "Local")
            {
                await DisplayAlert("Warning!", "Conectati-va la Internet", "Ok");
                Internet_Status = Connectivity.NetworkAccess.ToString();
            }
        }

        private async Task ValidationLogin()
        {
            var lista = await UsersRepository.GetAllUsers();

            if (string.IsNullOrEmpty(txtUsername.ToString()) || string.IsNullOrEmpty(txtPassword.ToString()))
                await App.Current.MainPage.DisplayAlert("Empty Values", "Please enter Email and Password", "OK");
            else
            {
                //call GetUser function which we define in Firebase helper class    
                var user = await UsersRepository.GetByCNP(txtUsername.Text);
                var ingrijitor = await IngrijitorRepository.GetByName(txtUsername.Text);
                //firebase return null valuse if user data not found in database    
                if (user != null || ingrijitor != null)
                {
                    if (user != null)
                    {
                        CNP_Pacient_Shared = txtUsername.Text;
                        if (txtPassword.Text.Contains("ceva")&& user.parolaPacient.Contains("ceva"))
                            await Navigation.PushModalAsync(new UpdatePasswordPage(CNP_Pacient_Shared));
                        else 
                        {
                            user.parolaPacient=AESRepository.DecryptAesManaged(user.parolaPacient);
                            //Navigate to Wellcom page after successfuly login    
                            //pass user email to welcom page
                            if (txtUsername.Text == user.cnpPacient && txtPassword.Text == user.parolaPacient)
                            {
                                await Navigation.PushModalAsync(new MainPagePacient());
                                await App.Current.MainPage.DisplayAlert("Login Success", "", "Ok");
                            }
                            else
                                await App.Current.MainPage.DisplayAlert("Login Fail", "Please enter correct CNP and Password", "OK");
                        }
                    }
                    else if (txtUsername.Text == ingrijitor.numeIngrijitor && txtPassword.Text == AESRepository.DecryptAesManaged(ingrijitor.parolaIngrijitor))
                    {
                        Username_Ingrijitor = txtUsername.Text;
                        if (txtPassword.Text.Contains("ceva"))
                            await Navigation.PushModalAsync(new UpdatePasswordPage(Username_Ingrijitor));
                        else
                        {
                            await Navigation.PushModalAsync(new MainPageIngrijitor());
                            await App.Current.MainPage.DisplayAlert("Login Success", "", "Ok");
                        }
                    }
                    else
                    {
                        await App.Current.MainPage.DisplayAlert("Login Fail", "Please enter correct Name and Password", "OK");
                    }
                }
                else
                    await App.Current.MainPage.DisplayAlert("Login Fail", "User not found", "OK");
            }
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
            await ValidationLogin();
        }

        private void txtUsername_Completed(object sender, EventArgs e)
        {
            txtPassword.Focus();
        }

        private void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            if (txtPassword.IsPassword)
            {
                password_icon.Source = "ShowPassword.png";
                txtPassword.IsPassword = false;
            }
            else
            {
                password_icon.Source = "HidePassword.png";
                txtPassword.IsPassword = true;
            }
        }
    }
}