using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(XMLLectura.Startup))]
namespace XMLLectura
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
