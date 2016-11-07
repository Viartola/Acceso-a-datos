using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DatosProcedure.Startup))]
namespace DatosProcedure
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
