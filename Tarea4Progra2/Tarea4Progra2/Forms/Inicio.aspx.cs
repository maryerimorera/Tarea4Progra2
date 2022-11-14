using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tarea4Progra2.Clases;

namespace Tarea4Progra2.Forms
{
    public partial class Inicio : System.Web.UI.Page
    {
        //public static string cedula;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Pregunta1.aspx");
        }

       


        public void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["PruebaDeInteligenciaConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Persona"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind(); // refrescar 
                        }
                    }
                }
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void AgregarDatos_Click(object sender, EventArgs e)
        {
            /*Persona.nombre = Nombre.Text;
            Persona.cedulaP = Cedula.Text;
            Persona.genero = Genero.Text;
            Persona.fecha = Fecha.Text;*/

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["PruebaDeInteligenciaConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            string sql = $"insert into Persona(cedulaP, nombre, genero, fecha) values ('{Cedula.Text}', '{Nombre.Text}', '{Genero.Text}', '{Fecha.Text}')";
            Usuario.cedula = Cedula.Text;
             SqlCommand comando = new SqlCommand(sql,conexion);
            //SqlCommand comando = new SqlCommand("INSERT INTO Persona (cedulaP, nombre, genero, fecha) VALUES('" + Cedula.Text + "', " + Nombre.Text + ", " + Genero.Text + ", " + Fecha.Text + ")", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();

            Cedula.Text = " ";
            Nombre.Text = " "; 
            Fecha.Text = " ";

            //LlenarGrid();

        }


        protected void Genero_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Nombre_TextChanged(object sender, EventArgs e)
        {

        }

        public static class Usuario
         {
            public static string cedula = "";
            public static int score = 0;
            public static int respuestasIncorrectas = 0;


         }

        protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Reporte.aspx");
        }
    }
}