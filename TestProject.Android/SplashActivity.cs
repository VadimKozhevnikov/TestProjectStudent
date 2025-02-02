using Android.App;
using Android.OS;
using Android.Widget;
using Android.Graphics;
using Android.Content;
using TestProject.Android;
using Android.Content.PM;

namespace YourAppNamespace
{
    [Activity(Theme = "@style/MyTheme.NoActionBar",
              Label = "Белокуриха гостеприимная",
              //Theme = "@style/MyTheme.NoActionBar",
              Icon = "@drawable/ForProfile",
              MainLauncher = true,
              ConfigurationChanges = ConfigChanges.Orientation | ConfigChanges.ScreenSize | ConfigChanges.UiMode)]
    public class SplashActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Устанавливаем фоновый цвет для экрана загрузки
            //this.Window.SetBackgroundDrawable(new Android.Graphics.Drawables.ColorDrawable(Color.ParseColor("#FF0000"))); // Темно-красный цвет
            this.Window.SetBackgroundDrawableResource(Resource.Drawable.ForProfile);
            this.Window.SetBackgroundDrawable(new Android.Graphics.Drawables.ColorDrawable(Color.DarkRed));

            // Дополнительно: если хотите добавить логотип или текст на экране
            //var textView = new TextView(this)
            //{
            //    Text = "Загрузка...",
            //    TextSize = 24,
            //    Gravity = Android.Views.GravityFlags.Center
            //};

            //SetContentView(textView);

            // Переход к основной активности (Avalonia)
            var intent = new Intent(this, typeof(MainActivity));
            StartActivity(intent);
            Finish();
        }
    }
}