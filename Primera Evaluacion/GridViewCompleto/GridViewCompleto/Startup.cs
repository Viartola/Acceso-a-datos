using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GridViewCompleto.Startup))]
namespace GridViewCompleto
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
