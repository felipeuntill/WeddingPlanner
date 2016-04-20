using Microsoft.Owin;
using Owin;
using WeddingPlanner.CommunicationBus;

[assembly: OwinStartup(typeof(Startup))]

namespace WeddingPlanner.CommunicationBus
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
