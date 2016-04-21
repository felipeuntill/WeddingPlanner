using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_4._01_Communication.Startup))]
namespace _4._01_Communication
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
