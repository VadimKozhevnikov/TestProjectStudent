using Android.App;
using Android.Content.PM;
using Android.OS;
using Avalonia;
using Avalonia.Android;
using Avalonia.ReactiveUI;
using Android.Widget;
using Android.Graphics;
using Android.Content;

namespace TestProject.Android;

[Activity(
    Label = "Белокуриха гостеприимная",
    Theme = "@style/MyTheme.NoActionBar",
    Icon = "@drawable/ForProfile",
    MainLauncher = true,
    ConfigurationChanges = ConfigChanges.Orientation | ConfigChanges.ScreenSize | ConfigChanges.UiMode)]
public class MainActivity : AvaloniaMainActivity<App>
{
    protected override AppBuilder CustomizeAppBuilder(AppBuilder builder)
    {
        return base.CustomizeAppBuilder(builder)
            .WithInterFont()
            .UseReactiveUI();
    }

    protected override void OnCreate(Bundle? savedInstanceState)
    {
        base.OnCreate(savedInstanceState);
        
    }
}
