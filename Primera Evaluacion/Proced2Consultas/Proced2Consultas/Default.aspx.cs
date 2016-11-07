using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Proced2Consultas{
    public partial class _Default : Page{
        protected void Page_Load(object sender, EventArgs e){
            string cs = ConfigurationManager.ConnectionStrings["EjDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs)){
                SqlDataAdapter da = new SqlDataAdapter("prEmplEmpr", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                da.Fill(ds);

                ds.Tables[0].TableName = "Empleados";
                ds.Tables[1].TableName = "Empresas";

                //GVEmpleados.DataSource = ds.Tables[0];
                GVEmpleados.DataSource = ds.Tables["Empleados"];
                GVEmpleados.DataBind();

                //GVEmpresas.DataSource = ds.Tables[1];
                GVEmpresas.DataSource = ds.Tables["Empresas"];
                GVEmpresas.DataBind();
            }
        }
    }
}