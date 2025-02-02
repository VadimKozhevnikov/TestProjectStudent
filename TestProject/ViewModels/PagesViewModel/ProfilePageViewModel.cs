using Avalonia.Notification;
using MsBox.Avalonia;
using ReactiveUI;
using ReactiveUI.Fody.Helpers;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Json;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Input;
using TestProject.Data;
using TestProject.Models;

namespace TestProject.ViewModels.PagesViewModel
{
    public class ProfilePageViewModel : ViewModelBase
    {
        [Reactive] public string? Login { get; set; }
        [Reactive] public string? Password { get; set; }
        [Reactive] public ICommand? SignIn { get; set; }
        [Reactive] public ICommand? Registr { get; set; }
        [Reactive] public string? FIO { get; set; }
        [Reactive] public INotificationMessageManager? Manager { get; set; }

        public ProfilePageViewModel()
        {
            SignIn = ReactiveCommand.Create(async () =>
            {
                var client = new HttpClient();
                //var joke = await client.GetFromJsonAsync<List<Users>>("https://testprojectstudent.vercel.app/");
                HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Get, "https://testprojectstudent.vercel.app/");
                Debug.WriteLine(request.Headers.Date.ToString());
                using (DataBase db = new DataBase())
                {
                    //var list = db.Users.Where(x => x.Login == Login && x.Password == Password).FirstOrDefault();
                    var list = new List<Users>() {
                        new Users() {
                            Name = "Иван",
                            Surname = "Иванов",
                            Login = "sa",
                            Password = "123"
                        }};
                    try
                    {
                        if (list != null)
                        {
                            var check = list.Where(x => x.Login == Login && x.Password == Password).Select(x => x.Surname + ' ' + x.Name).FirstOrDefault();
                            if (check != null)
                            {
                                FIO = check;
                            }
                            else
                            {
                                var box = MessageBoxManager.GetMessageBoxStandard("Error", "Такого пользователя нет", MsBox.Avalonia.Enums.ButtonEnum.Ok, MsBox.Avalonia.Enums.Icon.Error);
                                var result = await box.ShowAsync();
                            }
                        }
                        else
                        {
                            FIO = "Сервер временно недоступен";
                        }
                    }
                    catch (Exception ex)
                    {
                        Debug.WriteLine(ex);
                    }
                }
            });

            Registr = ReactiveCommand.Create(() =>
            {

            });
        }
    }
}
