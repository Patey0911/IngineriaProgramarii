using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace ProiectIP
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class FormularIngrijitorPage : ContentPage
    {
        private string CNPPacient_Ales;
        private string newTA, newGlicemie, newGreutate, newtempCorp;
        public FormularIngrijitorPage(string CNPPacient)
        {
            InitializeComponent();
            CNPPacient_Ales= CNPPacient;
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

        async Task BackToMainPageIngrijitor()
        {
            await Navigation.PopModalAsync();
        }

        async Task UpdateAnalyzeIngrijitorAsync()
        {
            var analysislist = ValoriSenzoriRepository.GetAllValoriSenzoriByCNP(CNPPacient_Ales.Substring(5));
            if (txtTensiuneArteriala.Text != null)
                newTA = AESRepository.EncryptAesManaged(txtTensiuneArteriala.Text);
            else
            {
                foreach (var user in await analysislist)
                    newTA = user.TA;
            }
            if (txtGlicemie.Text != null)
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
            if (txttempCorp.Text != null)
                newtempCorp = AESRepository.EncryptAesManaged(txttempCorp.Text);
            else
            {
                foreach (var user in await analysislist)
                    newtempCorp = user.tempCorp;
            }


            await ValoriSenzoriRepository.UpdateStatus(CNPPacient_Ales.Substring(5), newTA, newGlicemie, newGreutate, newtempCorp);
            await BackToMainPageIngrijitor();
        }

        private async void Button_Clicked_1(object sender, EventArgs e)
        {
            await UpdateAnalyzeIngrijitorAsync();
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
            await BackToMainPageIngrijitor();
        }
    }
}