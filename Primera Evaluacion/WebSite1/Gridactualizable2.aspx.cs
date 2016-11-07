using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gridactualizable2 : System.Web.UI.Page{
    protected void Page_Load(object sender, EventArgs e){
        OleDbConnection conexion;
        OleDbDataAdapter comando;
        DataTable dt;

        conexion = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath(@"App_Data/escuela_empresa.mdb") + ";");
        comando = new OleDbDataAdapter("select (max(cod_sector) + 1) as maximo from sectores", conexion);
        dt = new DataTable();
        comando.Fill(dt);

        codigoS.Text = dt.Rows[0]["maximo"].ToString();
    }

    protected void insercion(Object obj, EventArgs ev){
        selAlunos.Insert();
        Page_Load(null, null);
    }
}