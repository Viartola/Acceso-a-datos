using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Proced2Consultas.Startup))]
namespace Proced2Consultas
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
