using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Tarea4Progra2.Forms.Inicio;

namespace Tarea4Progra2.Forms
{
    public partial class Pregunta2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bpregunta_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pregunta3.aspx");
        }

        protected void Bguardar_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PruebaDeInteligenciaConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            string sql = $"UPDATE Respuesta SET r2= '{RadioButtonList1.Text}' WHERE cedulaR = '{Usuario.cedula}'";

            SqlCommand comando = new SqlCommand(sql, conexion);
            comando.ExecuteNonQuery();
            conexion.Close();

            if (RadioButtonList1.Text.Equals("c"))
            {
                Label1.Text = "Respuesta correcta";
                Usuario.score++;

            }
            else
                Label1.Text = "Respuesta incorrecta";
                Usuario.respuestasIncorrectas++;
        }
    }
}