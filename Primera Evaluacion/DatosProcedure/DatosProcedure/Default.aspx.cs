using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DatosProcedure {

    public partial class _Default : Page {

        protected void Page_Load(object sender, EventArgs e){
          
        }

        protected void Button1_Click(object sender, EventArgs e){
            string cs = ConfigurationManager.ConnectionStrings["EjDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs)){
                SqlDataAdapter da = new SqlDataAdapter("pEmpleadosPorEmpresas", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.AddWithValue("@empresa", Localidad.Text);
                DataSet ds = new DataSet();
                da.Fill(ds);

                GVEmpleado.DataSource = ds;
                GVEmpleado.DataBind();
            }
        }
    }
}