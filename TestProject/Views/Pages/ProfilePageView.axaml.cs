using Avalonia;
using Avalonia.Controls;
using Avalonia.Markup.Xaml;
using TestProject.ViewModels.PagesViewModel;

namespace TestProject;

public partial class ProfilePageView : UserControl
{
    public ProfilePageView()
    {
        InitializeComponent();
        DataContext = new ProfilePageViewModel();
    }
}