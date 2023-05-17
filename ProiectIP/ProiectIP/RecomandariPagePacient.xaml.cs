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
    public partial class RecomandariPagePacient : ContentPage
    {
        public RecomandariPagePacient()
        {
            InitializeComponent();
            AfisareDateRecomandari();
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
        private async void AfisareDateRecomandari()
        {
            var RecomandariList = await RecomandareRepository.GetAllRecomandariByCNP(Login.CNP_Pacient_Shared);
            foreach (var Recomandare in RecomandariList)
            {
                Recomandare.data="Data: "+Recomandare.data;
                Recomandare.recomandare = "Recomandare: " + Recomandare.recomandare;
            }
            TabelaRecomandari.ItemsSource=RecomandariList;
        }
    }
}