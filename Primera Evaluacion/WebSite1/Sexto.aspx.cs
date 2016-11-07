using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sexto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection conexion;
        OleDbDataAdapter comando;
        DataTable dt;

        conexion = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath(@"App_Data/escuela_empresa.mdb") + ";");
        comando = new OleDbDataAdapter("select * from empresas", conexion);
        dt = new DataTable();
        comando.Fill(dt);

        listEmpresas.DataSource = dt;
        DataBind();
    }
}