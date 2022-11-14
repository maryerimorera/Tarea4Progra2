<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pregunta3.aspx.cs" Inherits="Tarea4Progra2.Forms.Pregunta3" %>

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
        }
        .auto-style4 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }
        .auto-style5 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            margin-left: 92px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <span class="auto-style4"><strong>PREGUNTA 3</strong></span><br />
            <asp:Image ID="Image1" runat="server" Height="717px" ImageUrl="~/Img/IMG_3.PNG" Width="837px" />
            <br />
            <span class="auto-style5"><span class="auto-style6"><strong>Elija una </strong></span><strong><span class="auto-style6">opción</span></strong></span><br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style7">
                            <asp:ListItem>a</asp:ListItem>
                            <asp:ListItem>b</asp:ListItem>
                            <asp:ListItem>c</asp:ListItem>
                            <asp:ListItem>d</asp:ListItem>
                            <asp:ListItem>e</asp:ListItem>
                            <asp:ListItem>f</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <br />
                    </td>
                </tr>
            </table>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Bguardar" runat="server" OnClick="Bguardar_Click" Text="Guardar" />
        </div>
    </form>
</body>
</html>
