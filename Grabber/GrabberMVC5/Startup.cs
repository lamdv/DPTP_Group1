using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GrabberMVC5.Startup))]
namespace GrabberMVC5
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
