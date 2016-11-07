using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AgregarColumna {
    public partial class GridEmpleados : System.Web.UI.Page {

        protected void Page_Load(object sender, EventArgs e) {
            string cs = ConfigurationManager.ConnectionStrings["EjemploDB"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("Select * from Empleado", con);

            DataTable dt = new DataTable();
            dt.Columns.Add("Nombre");
            dt.Columns.Add("DNI");
            dt.Columns.Add("Direccion");
            dt.Columns.Add("Fecha Alta");
            dt.Columns.Add("Trienios");

            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read()) {
                DataRow dr = dt.NewRow();
                dr["Nombre"] = rdr["NombreEmpleado"];
                dr["DNI"] = rdr["DNI"];
                dr["Direccion"] = rdr["Direccion"];
                dr["Fecha Alta"] = rdr["FAlta"];
                dr["Trienios"] = tieneTrienio((DateTime) rdr["FAlta"]);

                dt.Rows.Add(dr);
            }

            con.Close();
            GVEmpleados.DataSource = dt;
            GVEmpleados.DataBind();
        }

        private string tieneTrienio(DateTime falta){
            double numeroDias = (DateTime.Now - falta).Days;
            if (numeroDias >= (3 * 365))
                return "Si";
            else
                return "No";
        }
    }
}