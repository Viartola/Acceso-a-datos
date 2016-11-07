using CAD;
using System;

namespace EjemploDataSetDos{
    public partial class MostrarEmpresas : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            GVEmpresa.DataSource = CADEmpresa.CogerEmpresas();
            GVEmpresa.DataBind();
        }

        protected void botonBuscador_Click(object sender, EventArgs e) {
            GVBusqueda.DataSource = CADEmpresa.BuscarEmpresaPorLocalidad(txtBuscador.Text);
            GVBusqueda.DataBind();
        }
    }
}