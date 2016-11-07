using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace GridViewCompleto {
    public partial class _Default : Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        private void CargarDatos(){
            string cs = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter("Select * from Empleado", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "Empleados");

        }
    }
}