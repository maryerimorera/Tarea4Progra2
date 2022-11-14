using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Tarea4Progra2.Forms.Inicio;

namespace Tarea4Progra2.Forms
{
    public partial class Calificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Score.Text ="" + Usuario.score;
            RespuestasIncorrectas.Text = "" + Usuario.respuestasIncorrectas;
        }

        protected void Bvolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}