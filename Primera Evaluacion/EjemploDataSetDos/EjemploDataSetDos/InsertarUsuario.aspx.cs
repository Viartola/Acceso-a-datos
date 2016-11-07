using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EjemploDataSetDos{
    public partial class InsertarUsuario : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){
            empresa.DataSource = CAD.CADEmpresa.CogerEmpresas();
            empresa.DataValueField = "idEmpresa";
            empresa.DataTextField = "NombreEmpresa";
            if(!IsPostBack)
                empresa.DataBind();
        }
        protected void BotonInsertar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = CAD.CADEmpresa.InsertarEmpleado(empresa.Text, txtNombre.Text, txtDNI.Text, txtEmail.Text, txtTelefono.Text, txtLocalidad.Text, txtDireccion.Text);
        }
    }
}