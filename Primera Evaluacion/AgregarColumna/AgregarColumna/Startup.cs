﻿using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AgregarColumna.Startup))]
namespace AgregarColumna
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
