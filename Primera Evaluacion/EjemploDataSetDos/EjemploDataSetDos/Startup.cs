using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EjemploDataSetDos.Startup))]
namespace EjemploDataSetDos
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
