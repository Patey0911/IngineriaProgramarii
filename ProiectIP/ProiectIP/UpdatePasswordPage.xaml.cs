using Firebase.Auth;
using Firebase.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using XF_Login.Models;

namespace ProiectIP
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class UpdatePasswordPage : ContentPage
    {
        public string Login_Username;
        public UpdatePasswordPage(string Login_Username)
        {
            InitializeComponent();
            this.Login_Username = Login_Username;  
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
        async Task LoginVerification()
        {
            if (txtPassword.Text == txtPassword_Confirm.Text)
            {
                if (txtPassword.Text.Contains("ceva"))
                {
                    await App.Current.MainPage.DisplayAlert("Failed", "Nu puteti alege parola aceasta", "OK");
                }
                else
                {
                    if (Login_Username[0] == '0' || Login_Username[0] == '1' || Login_Username[0] == '2' || Login_Username[0] == '3' || Login_Username[0] == '4' || Login_Username[0] == '5' || Login_Username[0] == '6')
                    {
                        await App.Current.MainPage.DisplayAlert("Successful", "Password Updated", "OK");
                        string newPassword = AESRepository.EncryptAesManaged(txtPassword.Text);
                        await UsersRepository.UpdatePassword(Login_Username, newPassword);
                        await Navigation.PopModalAsync();
                    }
                    else
                    {
                        await App.Current.MainPage.DisplayAlert("Successful", "Password Updated", "OK");
                        string newPassword = AESRepository.EncryptAesManaged(txtPassword.Text);
                        await IngrijitorRepository.UpdatePassword(Login_Username, newPassword);
                        await Navigation.PopModalAsync();
                    }
                }
            }
            else
            {
                await App.Current.MainPage.DisplayAlert("Failed", "Password doesn't match", "OK");
            }
        }
        private async void Button_Clicked(object sender, EventArgs e)
        {
            await LoginVerification();
        }

        private void txtPassword_Completed(object sender, EventArgs e)
        {
            txtPassword_Confirm.Focus();
        }

        private void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            if (txtPassword_Confirm.IsPassword)
            {
                password_icon2.Source = "ShowPassword.png";
                txtPassword_Confirm.IsPassword = false;
            }
            else
            {
                password_icon2.Source = "HidePassword.png";
                txtPassword_Confirm.IsPassword = true;
            }
        }

        private void TapGestureRecognizer_Tapped_1(object sender, EventArgs e)
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