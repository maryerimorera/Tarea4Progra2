<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Tarea4Progra2.Forms.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 808px;
            height: 23px;
            text-align: right;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style6 {
            margin-left: 43px;
        }
        .auto-style7 {
            text-align: right;
            font-family: Bahnschrift;
            color: #666666;
            font-size: small;
        }
        .auto-style8 {
            font-size: xx-large;
            color: #FFCC00;
        }
        .auto-style10 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style11 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style7"><strong><span class="auto-style8">PRUEBA DE INTELIGENCIA<br />
                    </span></strong>Universidad Hispanoamericana<br />
                    San Jose, Costa Rica</td>
            </tr>
            <tr>
                <td>
                    <address>
                        <asp:Image ID="Image1" runat="server" CssClass="auto-style2" ImageUrl="~/Img/banner.PNG" TabIndex="200" />
                    </address>
                    <br />
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style3"><span class="auto-style10"><strong>Nombre:</strong></span><br />
                                <asp:TextBox ID="Nombre" runat="server" CssClass="auto-style11" OnTextChanged="Nombre_TextChanged"></asp:TextBox>
                                <br />
                                <br />
                                <span class="auto-style10"><strong>Cedula:<br />
                                <asp:TextBox ID="Cedula" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                Seleccione el genero:</strong></span><br />
                                <asp:DropDownList ID="Genero" runat="server" OnSelectedIndexChanged="Genero_SelectedIndexChanged">
                                    <asp:ListItem Value="Vacio"></asp:ListItem>
                                    <asp:ListItem>Femenino</asp:ListItem>
                                    <asp:ListItem>Masculino</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <br />
                                <br />
                                <span class="auto-style10"><strong>Fecha de inicio:</strong></span><br />
                                <asp:TextBox ID="Fecha" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cedulaP" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="cedulaP" HeaderText="cedulaP" ReadOnly="True" SortExpression="cedulaP" />
                                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                                        <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero" />
                                        <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PruebaDeInteligenciaConnectionString3 %>" SelectCommand="SELECT * FROM [Persona]" OnSelecting="SqlDataSource1_Selecting1"></asp:SqlDataSource>
                                <asp:Button ID="AgregarDatos" runat="server" OnClick="AgregarDatos_Click" Text="Guardar" Width="68px" style="height: 26px" />
                                <br />
                                <br />
                                <br />
                            </td>
                            <td class="auto-style4">
                                <asp:ImageButton ID="ImgPrueba" runat="server" CssClass="auto-style6" ImageUrl="~/Img/IMG_4.PNG" OnClick="ImageButton3_Click" />
                                <asp:ImageButton ID="ImgReporte" runat="server" ImageUrl="~/Img/IMG_5.PNG" OnClick="ImageButton1_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
