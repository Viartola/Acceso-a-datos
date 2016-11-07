using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EjemploDataSetDos {
    public partial class Insertar : System.Web.UI.Page {

        protected void Page_Load(object sender, EventArgs e)  {

        }

        protected void BotonInsertar_Click(object sender, EventArgs e) {
            lblMensaje.Text = CAD.CADEmpresa.InsertarEmpresas(txtCIF.Text, txtNombre.Text, txtLocalidad.Text, txtDireccion.Text, txtEmail.Text, txtWeb.Text, txtTelefono.Text);
        }
    }
}