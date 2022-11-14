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
    public partial class Prueba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Bsiguiente_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pregunta2.aspx");
        }


        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Bguardar_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PruebaDeInteligenciaConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            string sql = $"insert into Respuesta(cedulaR,r1) values ('{Usuario.cedula}','{RadioButtonList1.Text}')";

            SqlCommand comando = new SqlCommand(sql, conexion);
            comando.ExecuteNonQuery();
            conexion.Close();



            if (RadioButtonList1.Text.Equals("f"))
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