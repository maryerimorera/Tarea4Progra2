using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea4Progra2.Forms
{
    public partial class Reporte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*String s = System.Configuration.ConfigurationManager.ConnectionStrings["PruebaDeInteligenciaConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            string sql = "select p.fecha, p.nombre, r.cedulaR, p.genero, r.r1, r.r2, r.r3, r.r4, r.r5, r.r6 from Respuesta r inner join Persona p on r.cedulaR = p.cedulaP";
            
            SqlCommand comando = new SqlCommand(sql, conexion);
            SqlDataReader registros = comando.ExecuteReader();

            if (registros.HasRows == true)
            {
                GridView1.DataSource = registros;
                GridView1.DataBind(); // refrescar
            }

            conexion.Close();*/
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}