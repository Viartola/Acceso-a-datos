using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MetaDeTablas{
    public partial class _Default : Page {
        protected void Page_Load(object sender, EventArgs e){
            if (!IsPostBack) {
                tablas.DataSource = CargarTablas();
                tablas.DataTextField = "TABLE_NAME";
                tablas.DataValueField = "TABLE_NAME";
                tablas.DataBind();
                tablas.Items.Insert(0,new ListItem("Seleciona tabla", "-1"));
            }
        }

        protected void tablas_SelectedIndexChanged(object sender, EventArgs e) {
            if(tablas.SelectedValue != "-1"){
                GVTabla.DataSource = CargarPropiadades(tablas.SelectedValue);
                GVTabla.DataBind();
            }
        }

        private DataTable CargarTablas() {
            string cs = ConfigurationManager.ConnectionStrings["EjDB"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter("prTablas3", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        private DataTable CargarPropiadades( String nomTabla){
            string cs = ConfigurationManager.ConnectionStrings["EjDB"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter("prMetadatos", con);
             da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@NombreTabla", nomTabla));
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}