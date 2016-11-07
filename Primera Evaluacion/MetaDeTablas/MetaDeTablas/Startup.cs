using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MetaDeTablas.Startup))]
namespace MetaDeTablas
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
