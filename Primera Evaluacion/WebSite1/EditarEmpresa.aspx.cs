using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Editar_ : System.Web.UI.Page{
    protected void Page_Load(object sender, EventArgs e) {

        OleDbConnection conexion;
        OleDbDataAdapter comando;
        DataTable dt;

        if (desEmpresas.SelectedValue != "") {
            conexion = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath(@"App_Data/escuela_empresa.mdb") + ";");
            comando = new OleDbDataAdapter("select * from empresas  where  cod_empresa=" + desEmpresas.SelectedValue, conexion);
            dt = new DataTable();
            comando.Fill(dt);

            direccion.Text = dt.Rows[0]["Endereço"].ToString();
            telefono.Text = dt.Rows[0]["Telefone"].ToString();
            email.Text = dt.Rows[0]["E_mail"].ToString();
            desSector.SelectedValue = dt.Rows[0]["Sector"].ToString();
        }
    }
}