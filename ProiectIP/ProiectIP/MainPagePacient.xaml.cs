using Microcharts;
using Plugin.LocalNotification;
using SkiaSharp;
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

    public partial class MainPagePacient : ContentPage
    { 
        int x = 0;
        private List<Microcharts.ChartEntry> entries = new List<Microcharts.ChartEntry>();
        private String Culoare;
        int num;
        public MainPagePacient()
        {
            InitializeComponent();
            CreateData();

           // MyChart.Chart = new LineChart() { };
            //MyChart.BackgroundColor= Color.Black;
        } 
        private async void GetAllAnalysisByCNP()
        {
            var lista2 = await AnalysisRepository.GetAllAnalysisByCNP(Login.CNP_Pacient_Shared);
            var analysislist = await ValoriSenzoriRepository.GetAllValoriSenzoriByCNP(Login.CNP_Pacient_Shared);

            UltimaConusltatieLabel.Text = "Ultima Consultatie: " + lista2[0].UltimaConsultatie.ToString();
            afectiuniCroniceLabel.Text = "Afectiuni Cronice: " + lista2[0].afectiuniCronice.ToString();
            AlergiiLabel.Text = "Alergii: " + lista2[0].alergii.ToString();
            DiagnosticLabel.Text = "Diagnostic: " + lista2[0].diagnostic.ToString();
            TratamentLabel.Text = "Tratament: " + lista2[0].tratament.ToString();
            TALabel.Text = "Tensiune Arteriala: " + AESRepository.DecryptAesManaged(analysislist[0].TA);
            glicemieLabel.Text = "Glicemie: " + AESRepository.DecryptAesManaged(analysislist[0].glicemie);
            greutateLabel.Text = "Greutate: " + AESRepository.DecryptAesManaged(analysislist[0].greutate);
            proximitateLabel.Text = "Proximitate: " + analysislist[0].proximitate;
            pulsLabel.Text = "Puls: " + analysislist[0].puls;
            saturatieGazLabel.Text = "Saturatie Gaz: " + analysislist[0].saturatieGaz;
            tempAmbientalaLabel.Text = "Temperatura Ambientala: " + analysislist[0].tempAmbientala;
            tempCorpLabel.Text="Temperatura Corporala: " + analysislist[0].tempCorp;
            umiditateLabel.Text = "Umiditate: " + analysislist[0].umiditate;
        }
        private async void GetAllRefDataAndCompare()
        {
            var reflist = await ValoriRefRepository.GetAllValoriSenzoriByCNP(Login.CNP_Pacient_Shared);
            var analysislist = await ValoriSenzoriRepository.GetAllValoriSenzoriByCNP(Login.CNP_Pacient_Shared);

            foreach (var data in reflist)
            {
                if(int.Parse(data.maxGlicemie) < int.Parse(AESRepository.DecryptAesManaged(analysislist[0].glicemie)))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Glicemie prea mare", "OK");
                else if (int.Parse(data.minGlicemie) > int.Parse(AESRepository.DecryptAesManaged(analysislist[0].glicemie)))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Glicemie prea mica", "OK");

                if (int.Parse(data.maxGreutate) < int.Parse(AESRepository.DecryptAesManaged(analysislist[0].greutate)))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Greutate prea mare", "OK");
                else if (int.Parse(data.minGreutate) > int.Parse(AESRepository.DecryptAesManaged(analysislist[0].greutate)))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Greutate prea mica", "OK");

                if (int.Parse(data.maxProximitate) < int.Parse(analysislist[0].proximitate))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Proximitate prea mare", "OK");
                else if (int.Parse(data.minProximitate) > int.Parse(analysislist[0].proximitate))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Proximitate prea mica", "OK");

                if (int.Parse(data.maxPuls) < int.Parse(analysislist[0].puls))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Puls prea mare", "OK");
                else if (int.Parse(data.minPuls) > int.Parse(analysislist[0].puls))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Puls prea mic", "OK");

                if (int.Parse(data.maxSaturatieGaz) < int.Parse(analysislist[0].saturatieGaz))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Saturatie Gaz prea mare", "OK");
                else if (int.Parse(data.minSaturatieGaz) > int.Parse(analysislist[0].saturatieGaz))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Saturatie Gaz prea mica", "OK");

                if (int.Parse(data.maxTA) < int.Parse(AESRepository.DecryptAesManaged(analysislist[0].TA)))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Tensiune prea mare", "OK");
                else if (int.Parse(data.minTA) > int.Parse(AESRepository.DecryptAesManaged(analysislist[0].TA)))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Tensiune prea mica", "OK");

                if (float.Parse(data.maxTempAmbientala) < float.Parse(analysislist[0].tempAmbientala))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Temperatura Ambientala prea mare", "OK");
                else if (float.Parse(data.minTempAmbientala) > float.Parse(analysislist[0].tempAmbientala))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Temperatura Ambientala prea mica", "OK");

                if (float.Parse(data.maxTempCorp) < float.Parse(analysislist[0].tempCorp))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Temperatura Corporala prea mare", "OK");
                else if (float.Parse(data.minTempCorp) > float.Parse(analysislist[0].tempCorp))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Temperatura Corporala prea mica", "OK");

                if (int.Parse(data.maxUmiditate) < int.Parse(analysislist[0].umiditate))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Umiditate prea mare", "OK");
                else if (int.Parse(data.minUmiditate) > int.Parse(analysislist[0].umiditate))
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Umiditate prea mica", "OK");
            }
        }
        protected override async void OnAppearing()
        {
            GetAllRefDataAndCompare();
            String Internet_Status = Connectivity.NetworkAccess.ToString();
            while (Internet_Status == "None" || Internet_Status == "Local")
            {
                await DisplayAlert("Warning!", "Conectati-va la Internet", "Ok");
                Internet_Status = Connectivity.NetworkAccess.ToString();
            }
            Connectivity.ConnectivityChanged += Connectivity_ConnectivityChanged;
            var userlist = UsersRepository.GetAllUsers();

            base.OnAppearing();
            Device.StartTimer(TimeSpan.FromSeconds(2), () =>
            {
                CreateData(); // Apeleaza functia
                return true; // Continua sa apeleze functia la fiecare interval

            });

            GetAllAnalysisByCNP();
        }
        async Task GoToFormularPage()
        {
            await Navigation.PushModalAsync(new FormularPage());
        }
        async Task GoToRecomandariPage()
        {
            await Navigation.PushModalAsync(new RecomandariPagePacient());
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

        private void CreateData()
        {
            Random rnd = new Random();
            num = rnd.Next();
            num = num % 200;
            x += 200;
            if (num < 100)
                Culoare = "#05ed20";
            else if (num < 200)
                Culoare = "#edd605";
            else
            {
                Culoare = "#ed0505";
                var notification = new NotificationRequest
                {
                    BadgeNumber = 3,
                    Description = "Aveti "+num+" pulsul !",
                    Title = "Puls Marit!",
                    ReturningData = "Dummy Data",
                    NotificationId = 1337
                };
                LocalNotificationCenter.Current.Show(notification);
                DisplayAlert(notification.Title, notification.Description,"Ok");
            }
            entries.Add(
            new ChartEntry(num)
            {
                Label = x.ToString(),
                ValueLabel = x.ToString(),
               Color = SKColor.Parse(Culoare)

            });
            if(x>=2000)
                entries.RemoveAt(0);
            //entries.Add(new ChartEntry(num));

            MyChart.Chart = new LineChart() { 
                                            Entries = entries, 
                                            ValueLabelOrientation = Orientation.Horizontal, 
                                            LabelOrientation = Orientation.Horizontal, 
                                            LabelTextSize = 30, 
                                            AnimationDuration = TimeSpan.Zero, 
                                            BackgroundColor = SKColors.Black, 
                                            PointMode = PointMode.Circle,
                                            PointSize = 18};
            
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
            await GoToFormularPage();
        }

        private async void Button_Clicked_1(object sender, EventArgs e)
        {
            await GoToRecomandariPage();
        }
    }
}