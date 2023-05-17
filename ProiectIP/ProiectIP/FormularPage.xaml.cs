using Firebase.Auth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace ProiectIP
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class FormularPage : ContentPage
    {
        private string newTA, newGlicemie, newGreutate;
        public FormularPage()
        {
            InitializeComponent();
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
        async Task UpdateAnalyzePacientAsync()
        {
            var analysislist = ValoriSenzoriRepository.GetAllValoriSenzoriByCNP(Login.CNP_Pacient_Shared);
            if (txtTensiuneArteriala.Text!=null)
                newTA = AESRepository.EncryptAesManaged(txtTensiuneArteriala.Text);
            else
            {
                foreach (var user in await analysislist)
                    newTA = user.TA;
            }
            if(txtGlicemie.Text!=null)
                newGlicemie = AESRepository.EncryptAesManaged(txtGlicemie.Text);
            else
            {
                foreach (var user in await analysislist)
                    newGlicemie = user.glicemie;
            }
            if (txtGreutate.Text != null)
                newGreutate = AESRepository.EncryptAesManaged(txtGreutate.Text);
            else
            {
                foreach (var user in await analysislist)
                    newGreutate = user.greutate;
            }
            await ValoriSenzoriRepository.UpdateStatus(Login.CNP_Pacient_Shared, newTA, newGlicemie, newGreutate);
            await BackToMainPagePacient();
        }
        async Task BackToMainPagePacient()
        {
            await Navigation.PopModalAsync();
        }
        private async void Button_Clicked(object sender, EventArgs e)
        {
            await BackToMainPagePacient();
        }

        private async void Button_Clicked_1(object sender, EventArgs e)
        {
            await UpdateAnalyzePacientAsync();
        }
    }
}