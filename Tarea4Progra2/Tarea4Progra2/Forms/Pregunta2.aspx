<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pregunta2.aspx.cs" Inherits="Tarea4Progra2.Forms.Pregunta2" %>

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
            width: 100%;
        }
        .auto-style3 {
            width: 910px;
            height: 194px;
        }
        .auto-style4 {
            height: 194px;
        }
        .auto-style5 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }
        .auto-style7 {
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
        }
        .auto-style8 {
            margin-left: 92px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style1">
            <span class="auto-style5"><strong>PREGUNTA 2</strong></span><br />
            <asp:Image ID="Image1" runat="server" Height="662px" ImageUrl="~/Img/IMG_2.PNG" Width="749px" />
        </p>
        <p class="auto-style7">
            <strong>Elija una opción</strong></p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style8">
                        <asp:ListItem>a</asp:ListItem>
                        <asp:ListItem>b</asp:ListItem>
                        <asp:ListItem>c</asp:ListItem>
                        <asp:ListItem>d</asp:ListItem>
                        <asp:ListItem>e</asp:ListItem>
                        <asp:ListItem>f</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </td>
                <td class="auto-style4"></td>
            </tr>
        </table>
        <p class="auto-style1">
            <asp:Button ID="Bguardar" runat="server" OnClick="Bguardar_Click" Text="Guardar" />
        </p>
        <p class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p class="auto-style1">
            <asp:Button ID="Bpregunta" runat="server" OnClick="Bpregunta_Click" Text="Siguiente Pregunta" />
        </p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            &nbsp;</p>
        <div>
        </div>
    </form>
</body>
</html>
