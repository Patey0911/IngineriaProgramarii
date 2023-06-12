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
        private int prev_TA, prev_glicemie, prev_greutate, prev_puls;
        private float  prev_tempAmbientala, prev_tempCorp, prev_umiditate;
        private string prev_saturatieGaz;
        int x = 0;
        private List<Microcharts.ChartEntry> entries = new List<Microcharts.ChartEntry>();
        private String Culoare;
        public MainPagePacient()
        {
            InitializeComponent();
            GetAllDataAndCompare();
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
            proximitateLabel.Text = "Proximitate: " + AESRepository.DecryptAesManaged(analysislist[0].proximitate);
            pulsLabel.Text = "Puls: " + analysislist[0].puls;
            saturatieGazLabel.Text = "Saturatie Gaz: " + AESRepository.DecryptAesManaged(analysislist[0].saturatieGaz);
            tempAmbientalaLabel.Text = "Temperatura Ambientala: " + AESRepository.DecryptAesManaged(analysislist[0].tempAmbientala);
            tempCorpLabel.Text="Temperatura Corporala: " + AESRepository.DecryptAesManaged(analysislist[0].tempCorp);
            umiditateLabel.Text = "Umiditate: " + AESRepository.DecryptAesManaged(analysislist[0].umiditate);

            prev_TA= int.Parse(AESRepository.DecryptAesManaged(analysislist[0].TA));
            prev_glicemie = int.Parse(AESRepository.DecryptAesManaged(analysislist[0].glicemie));
            prev_greutate = int.Parse(AESRepository.DecryptAesManaged(analysislist[0].greutate));
            prev_puls = int.Parse(analysislist[0].puls);
            prev_tempAmbientala = float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempAmbientala));
            prev_tempCorp = float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempCorp));
            prev_umiditate = float.Parse(AESRepository.DecryptAesManaged(analysislist[0].umiditate));
        }
        private async void GetAllRefDataAndCompare()
        {
            var reflist = await ValoriRefRepository.GetAllValoriSenzoriByCNP(Login.CNP_Pacient_Shared);
            var analysislist = await ValoriSenzoriRepository.GetAllValoriSenzoriByCNP(Login.CNP_Pacient_Shared);

            foreach (var data in reflist)
            {
                prev_puls = 0;
                prev_TA=0;
                prev_glicemie=0;   
                prev_greutate=0;
                prev_puls=0;
                prev_tempAmbientala=0;
                prev_tempCorp=0;
                prev_umiditate=0;
                prev_saturatieGaz = "false";
                if (prev_puls != int.Parse(analysislist[0].puls))
                {
                    if (int.Parse(data.maxPuls) < int.Parse(analysislist[0].puls))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Puls prea mare", "OK");
                    else if (int.Parse(data.minPuls) > int.Parse(analysislist[0].puls))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Puls prea mic", "OK");
                    prev_puls = int.Parse(analysislist[0].puls);
                }

                if (AESRepository.DecryptAesManaged(analysislist[0].saturatieGaz) == "true" && prev_saturatieGaz != AESRepository.DecryptAesManaged(analysislist[0].saturatieGaz))
                {
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Saturatie Gaz", "OK");
                }
                prev_saturatieGaz = AESRepository.DecryptAesManaged(analysislist[0].saturatieGaz);

                if (prev_umiditate != float.Parse(AESRepository.DecryptAesManaged(analysislist[0].umiditate)) / 100)
                {
                    if (float.Parse(data.maxUmiditate) / 10 < float.Parse(AESRepository.DecryptAesManaged(analysislist[0].umiditate)) / 100)
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Umiditate prea mare", "OK");
                    else if (float.Parse(data.minUmiditate) / 10 > float.Parse(AESRepository.DecryptAesManaged(analysislist[0].umiditate)) / 100)
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Umiditate prea mica", "OK");
                }
                prev_umiditate = float.Parse(AESRepository.DecryptAesManaged(analysislist[0].umiditate)) / 100;

                if (prev_tempAmbientala != float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempAmbientala)) / 100)
                {
                    if (float.Parse(data.maxTempAmbientala) / 10 < float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempAmbientala)) / 100)
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Temperatura Ambientala prea mare", "OK");
                    else if (float.Parse(data.minTempAmbientala) / 10 > float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempAmbientala)) / 100)
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Temperatura Ambientala prea mica", "OK");
                    prev_tempAmbientala = float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempAmbientala)) / 100;
                }

                if (prev_glicemie != int.Parse(AESRepository.DecryptAesManaged(analysislist[0].glicemie)))
                {
                    if (int.Parse(data.maxGlicemie) < int.Parse(AESRepository.DecryptAesManaged(analysislist[0].glicemie)))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Glicemie prea mare", "OK");
                    else if (int.Parse(data.minGlicemie) > int.Parse(AESRepository.DecryptAesManaged(analysislist[0].glicemie)))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Glicemie prea mica", "OK");
                    prev_glicemie = int.Parse(AESRepository.DecryptAesManaged(analysislist[0].glicemie));
                }

                if (prev_greutate != int.Parse(AESRepository.DecryptAesManaged(analysislist[0].greutate)))
                {
                    if (int.Parse(data.maxGreutate) < int.Parse(AESRepository.DecryptAesManaged(analysislist[0].greutate)))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Greutate prea mare", "OK");
                    else if (int.Parse(data.minGreutate) > int.Parse(AESRepository.DecryptAesManaged(analysislist[0].greutate)))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Greutate prea mica", "OK");
                    prev_greutate = int.Parse(AESRepository.DecryptAesManaged(analysislist[0].greutate));
                }

                if (prev_tempCorp != float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempCorp)) / 10)
                {
                    if (float.Parse(data.maxTempCorp) / 10 < float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempCorp)) / 10)
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Temperatura Corporala prea mare", "OK");
                    else if (float.Parse(data.minTempCorp) / 10 > float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempCorp)) / 10)
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Temperatura Corporala prea mica", "OK");
                    prev_tempCorp = float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempCorp)) / 10;
                }

                if (prev_TA != int.Parse(AESRepository.DecryptAesManaged(analysislist[0].TA)))
                {
                    if (int.Parse(data.maxTA) < int.Parse(AESRepository.DecryptAesManaged(analysislist[0].TA)))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Tensiune prea mare", "OK");
                    else if (int.Parse(data.minTA) > int.Parse(AESRepository.DecryptAesManaged(analysislist[0].TA)))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Tensiune prea mica", "OK");
                    prev_TA = int.Parse(AESRepository.DecryptAesManaged(analysislist[0].TA));
                }
            }
        }
        protected override async void OnAppearing()
        {
            GetAllAnalysisByCNP();
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
                GetAllDataAndCompare(); // Apeleaza functia
                return true; // Continua sa apeleze functia la fiecare interval
            });
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

        private async void GetAllDataAndCompare()
        {
            var lista2 = await AnalysisRepository.GetAllAnalysisByCNP(Login.CNP_Pacient_Shared);
            var reflist = await ValoriRefRepository.GetAllValoriSenzoriByCNP(Login.CNP_Pacient_Shared);
            var analysislist = await ValoriSenzoriRepository.GetAllValoriSenzoriByCNP(Login.CNP_Pacient_Shared);

            UltimaConusltatieLabel.Text = "Ultima Consultatie: " + lista2[0].UltimaConsultatie.ToString();
            afectiuniCroniceLabel.Text = "Afectiuni Cronice: " + lista2[0].afectiuniCronice.ToString();
            AlergiiLabel.Text = "Alergii: " + lista2[0].alergii.ToString();
            DiagnosticLabel.Text = "Diagnostic: " + lista2[0].diagnostic.ToString();
            TratamentLabel.Text = "Tratament: " + lista2[0].tratament.ToString();
            TALabel.Text = "Tensiune Arteriala: " + AESRepository.DecryptAesManaged(analysislist[0].TA);
            glicemieLabel.Text = "Glicemie: " + AESRepository.DecryptAesManaged(analysislist[0].glicemie);
            greutateLabel.Text = "Greutate: " + AESRepository.DecryptAesManaged(analysislist[0].greutate);
            proximitateLabel.Text = "Proximitate: " + AESRepository.DecryptAesManaged(analysislist[0].proximitate);
            pulsLabel.Text = "Puls: " + analysislist[0].puls;
            saturatieGazLabel.Text = "Saturatie Gaz: " + AESRepository.DecryptAesManaged((analysislist[0].saturatieGaz));
            tempAmbientalaLabel.Text = "Temperatura Ambientala: " + AESRepository.DecryptAesManaged((analysislist[0].tempAmbientala));
            tempCorpLabel.Text = "Temperatura Corporala: " + AESRepository.DecryptAesManaged(analysislist[0].tempCorp);
            umiditateLabel.Text = "Umiditate: " + AESRepository.DecryptAesManaged(analysislist[0].umiditate);

            foreach (var data in reflist)
            {
                if (prev_puls != int.Parse(analysislist[0].puls))
                {
                    if (int.Parse(data.maxPuls) < int.Parse(analysislist[0].puls))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Puls prea mare", "OK");
                    else if (int.Parse(data.minPuls) > int.Parse(analysislist[0].puls))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Puls prea mic", "OK");
                }

                if (AESRepository.DecryptAesManaged(analysislist[0].saturatieGaz) == "true" && prev_saturatieGaz != AESRepository.DecryptAesManaged(analysislist[0].saturatieGaz))
                {
                    await App.Current.MainPage.DisplayAlert("Alerta !!!", "Saturatie Gaz", "OK");
                }
                prev_saturatieGaz = AESRepository.DecryptAesManaged(analysislist[0].saturatieGaz);

                if (prev_umiditate != float.Parse(AESRepository.DecryptAesManaged(analysislist[0].umiditate)) / 100)
                {
                    if (float.Parse(data.maxUmiditate)/10 < float.Parse(AESRepository.DecryptAesManaged(analysislist[0].umiditate)) / 100)
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Umiditate prea mare", "OK");
                    else if (float.Parse(data.minUmiditate)/10> float.Parse(AESRepository.DecryptAesManaged(analysislist[0].umiditate))/100)
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Umiditate prea mica", "OK");
                }
                prev_umiditate = float.Parse(AESRepository.DecryptAesManaged(analysislist[0].umiditate)) / 100;

                if (prev_tempAmbientala != float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempAmbientala))/100)
                {
                    if (float.Parse(data.maxTempAmbientala) / 10 < float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempAmbientala)) / 100)
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Temperatura Ambientala prea mare", "OK");
                    else if (float.Parse(data.minTempAmbientala) / 10 > float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempAmbientala)) / 100)
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Temperatura Ambientala prea mica", "OK");
                    prev_tempAmbientala = float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempAmbientala)) / 100;
                }

                if (prev_glicemie != int.Parse(AESRepository.DecryptAesManaged(analysislist[0].glicemie)))
                {
                    if (int.Parse(data.maxGlicemie) < int.Parse(AESRepository.DecryptAesManaged(analysislist[0].glicemie)))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Glicemie prea mare", "OK");
                    else if (int.Parse(data.minGlicemie) > int.Parse(AESRepository.DecryptAesManaged(analysislist[0].glicemie)))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Glicemie prea mica", "OK");
                    prev_glicemie = int.Parse(AESRepository.DecryptAesManaged(analysislist[0].glicemie));
                }

                if (prev_greutate != int.Parse(AESRepository.DecryptAesManaged(analysislist[0].greutate)))
                {
                    if (int.Parse(data.maxGreutate) < int.Parse(AESRepository.DecryptAesManaged(analysislist[0].greutate)))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Greutate prea mare", "OK");
                    else if (int.Parse(data.minGreutate) > int.Parse(AESRepository.DecryptAesManaged(analysislist[0].greutate)))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Greutate prea mica", "OK");
                    prev_greutate = int.Parse(AESRepository.DecryptAesManaged(analysislist[0].greutate));
                }

                if (prev_tempCorp != float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempCorp))/10)
                {
                    if (float.Parse(data.maxTempCorp)/10 < float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempCorp)) / 10)
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Temperatura Corporala prea mare", "OK");
                    else if (float.Parse(data.minTempCorp)/10 > float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempCorp)) / 10)
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Temperatura Corporala prea mica", "OK");
                    prev_tempCorp = float.Parse(AESRepository.DecryptAesManaged(analysislist[0].tempCorp)) / 10;
                }

                if (prev_TA != int.Parse(AESRepository.DecryptAesManaged(analysislist[0].TA)))
                {
                    if (int.Parse(data.maxTA) < int.Parse(AESRepository.DecryptAesManaged(analysislist[0].TA)))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Tensiune prea mare", "OK");
                    else if (int.Parse(data.minTA) > int.Parse(AESRepository.DecryptAesManaged(analysislist[0].TA)))
                        await App.Current.MainPage.DisplayAlert("Alerta !!!", "Tensiune prea mica", "OK");
                    prev_TA = int.Parse(AESRepository.DecryptAesManaged(analysislist[0].TA));
                }
            }

            var num = int.Parse(analysislist[0].puls);
            x += 2;
            if (num < int.Parse(reflist[0].minPuls))
            {
                Culoare = "#ed0505";
                var notification = new NotificationRequest
                {
                    BadgeNumber = 3,
                    Description = "Aveti " + num + " pulsul !",
                    Title = "Puls Prea Mic!",
                    ReturningData = "Dummy Data",
                    NotificationId = 1337
                };
                if(prev_puls!=num)
                    await LocalNotificationCenter.Current.Show(notification);
            }
            else if (num < int.Parse(reflist[0].maxPuls))
                Culoare = "#05ed20";
            else
            {
                Culoare = "#ed0505";
                var notification = new NotificationRequest
                {
                    BadgeNumber = 3,
                    Description = "Aveti " + num + " pulsul !",
                    Title = "Puls Marit!",
                    ReturningData = "Dummy Data",
                    NotificationId = 1337
                };
                if (prev_puls != num)
                    await LocalNotificationCenter.Current.Show(notification);
                //DisplayAlert(notification.Title, notification.Description, "Ok");
            }
            entries.Add(
            new ChartEntry(num)
            {
                Label = x.ToString(),
                ValueLabel = x.ToString(),
               Color = SKColor.Parse(Culoare)
            });
            if(x>=20)
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
            prev_puls = int.Parse(analysislist[0].puls);

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