<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="Tarea4Progra2.Forms.Reporte" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            color: #FFCC00;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 321px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1"><strong>Reporte de jugadores<br />
            <br />
            </strong>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style4" DataKeyNames="cedulaP" DataSourceID="SqlDataSource1" Height="236px" Width="654px">
                            <Columns>
                                <asp:BoundField DataField="cedulaP" HeaderText="cedulaP" ReadOnly="True" SortExpression="cedulaP" />
                                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                                <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero" />
                                <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PruebaDeInteligenciaConnectionString7 %>" SelectCommand="SELECT * FROM [Persona]"></asp:SqlDataSource>
                        <br />
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="cedulaR" HeaderText="cedulaR" SortExpression="cedulaR" />
                                <asp:BoundField DataField="r1" HeaderText="r1" SortExpression="r1" />
                                <asp:BoundField DataField="r2" HeaderText="r2" SortExpression="r2" />
                                <asp:BoundField DataField="r3" HeaderText="r3" SortExpression="r3" />
                                <asp:BoundField DataField="r4" HeaderText="r4" SortExpression="r4" />
                                <asp:BoundField DataField="r5" HeaderText="r5" SortExpression="r5" />
                                <asp:BoundField DataField="r6" HeaderText="r6" SortExpression="r6" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PruebaDeInteligenciaConnectionString8 %>" SelectCommand="SELECT * FROM [Respuesta]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
