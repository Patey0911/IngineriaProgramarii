using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
    public partial class MainPageIngrijitor : ContentPage
    {
        UsersModel itemSelected;
        public MainPageIngrijitor()
        {
            InitializeComponent();
            AfisareDatePacienti();
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
        private async void AfisareDatePacienti()
        {
            var PacientiList = await UsersRepository.GetAllUsers();

            foreach (var User in PacientiList)
            {
                User.adresaPacient = "Adresa: " + User.adresaPacient;
                User.cnpPacient = "CNP: " + User.cnpPacient;
                User.numePacient = "Nume: " + User.numePacient;
                User.prenumePacient = "Prenume: " + User.prenumePacient;
                User.telefonPacient="Telefon: "+User.telefonPacient;
            }
            TabelaPacienti.ItemsSource = PacientiList;
        }

        private async void TabelaPacienti_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            itemSelected = e.CurrentSelection[0] as UsersModel;
            if (itemSelected != null)
            {
                var cnpPacient = itemSelected.cnpPacient.ToString();
                itemSelected = null;
                await Navigation.PushModalAsync(new FormularIngrijitorPage(cnpPacient));
            }
        }
    }
}