using CAD;
using System;


namespace EjemploDataSetDos{
    public partial class MostrarEmpleados : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){
            GVEmpleado.DataSource = CADEmpresa.CogerEmpleado();
            GVEmpleado.DataBind();
        }

        protected void botonBuscador_Click(object sender, EventArgs e){
            GVBuscarEmpleado.DataSource = CADEmpresa.BuscarEmpleadoaPorLocalidad(txtBuscador.Text);
            GVBuscarEmpleado.DataBind();
        }
    }
}