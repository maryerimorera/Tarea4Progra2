<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pregunta1.aspx.cs" Inherits="Tarea4Progra2.Forms.Prueba" %>

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
            width: 910px;
            height: 53px;
        }
        .auto-style5 {
            height: 53px;
        }
        .auto-style6 {
            text-align: center;
            width: 51px;
        }
        .auto-style7 {
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }
        .auto-style8 {
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
        }
        .auto-style9 {
            margin-left: 93px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7"><strong>PREGUNTA 1</strong></div>
    <p class="auto-style1">
        <asp:Image ID="Image1" runat="server" Height="526px" ImageUrl="~/Img/IMG_1.PNG" Width="752px" />
        </p>
        <p class="auto-style8">
            <strong>Elija una opción</strong></p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style6" rowspan="3">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style9" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Width="36px">
                        <asp:ListItem Value="a">a</asp:ListItem>
                        <asp:ListItem Value="b">b</asp:ListItem>
                        <asp:ListItem Value="c">c</asp:ListItem>
                        <asp:ListItem Value="d">d</asp:ListItem>
                        <asp:ListItem Value="e">e</asp:ListItem>
                        <asp:ListItem Value="f">f</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p class="auto-style1">
            <asp:Button ID="Bguardar" runat="server" OnClick="Bguardar_Click" Text="Guardar" />
        </p>
        <p class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p class="auto-style1">
            <asp:Button ID="Bsiguiente" runat="server" OnClick="Bsiguiente_Click" Text="Siguiente Pregunta" />
        </p>
    </form>
    </body>
</html>
