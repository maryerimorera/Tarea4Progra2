<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calificacion.aspx.cs" Inherits="Tarea4Progra2.Forms.Calificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }
        .auto-style3 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
            color: #3399FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <a href="../Web.config">../Web.config</a>
            <strong><span class="auto-style3">Calificacion</span><br class="auto-style2" />
            </strong>
            <br />
            Cantidad de respuestas buenas:<br />
            <br />
            <asp:Label ID="Score" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Cantidad de respuestas malas<br />
            <br />
            <asp:Label ID="RespuestasIncorrectas" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="Bvolver" runat="server" OnClick="Bvolver_Click" Text="Volver" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
