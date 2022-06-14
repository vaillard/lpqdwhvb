<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DWH_PEDIDOS_ATENDER.aspx.vb" Inherits="DWHLPQ.DWH_PEDIDOS_ATENDER" %>

<!DOCTYPE html>



 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


<link rel="stylesheet" href="css/bootstrap.min.css" crossorigin="anonymous">
<link rel="stylesheet" href="css/bootstrap-theme.min.css" crossorigin="anonymous">
<script src="js/bootstrap.min.js" crossorigin="anonymous"></script>




<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
        .auto-style2 {
            font-size: medium;
            margin-left: 84px;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                    <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Imagenes/lpq2.jpg" Width="111px" />
                    <asp:Label ID="Label16" runat="server" CssClass="auto-style25" Text="Menu Pedidos" style="font-size: xx-large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="44px" Text="Liberar Pedidos" Width="234px" class="btn btn-outline-primary"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ModPedidos" runat="server" Height="44px" Text="Modificar  Pedidos" Width="254px" class="btn btn-outline-success" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Salir" runat="server" Height="44px" Text="Salir" Width="202px" class="btn btn-outline-secondary"/>
        </div>
    <table class="w-100">
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4">
        <asp:Label ID="Label9" runat="server" Text="Usuario"></asp:Label>
                <asp:TextBox ID="USERNAME" runat="server" BorderStyle="None" Enabled="False" Width="295px">USERNAME</asp:TextBox>
        <asp:TextBox ID="NIVELUSU" runat="server" BorderStyle="None" Enabled="False" Width="295px" Visible="False">nivelusu</asp:TextBox>
                </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label18" runat="server" CssClass="auto-style3" Text="Pedidos a Liberar"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="44px" Text="Timbrar" Width="107px" class="btn btn-outline-info"/>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>

                 <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width="1600px" Height="387px" >

                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataSourceID="DWH" ForeColor="#333333" GridLines="None" Width="1464px" PageSize="1000">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" SelectText="Pre Liberar" ShowSelectButton="True" />
                        <asp:BoundField DataField="documento" HeaderText="documento" SortExpression="documento" />
                        <asp:BoundField DataField="Fecha_Pedido" HeaderText="Fecha_Pedido" SortExpression="Fecha_Pedido" />
                        <asp:BoundField DataField="Fecha_Actual" HeaderText="Fecha_Actual" SortExpression="Fecha_Actual" />
                        <asp:BoundField DataField="Dias_Para_Entrega" HeaderText="Dias_Para_Entrega" SortExpression="Dias_Para_Entrega" />
                        <asp:BoundField DataField="DESTINO" HeaderText="DESTINO" SortExpression="DESTINO" />
                        <asp:BoundField DataField="No_Articulos" HeaderText="No_Articulos" SortExpression="No_Articulos" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerSettings Position="TopAndBottom" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>

                     
                    </asp:Panel>

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1"></td>
            <td class="auto-style1">
                <asp:Label ID="Label17" runat="server" CssClass="auto-style3" Text="Pedidos a Preliberar"></asp:Label>
                <asp:TextBox ID="PEDIDO" runat="server" Enabled="False" Width="440px" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>

                <asp:Panel ID="Panel2" runat="server" ScrollBars="Auto" Width="1600px" Height="187px" >

                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" CssClass="auto-style2" DataSourceID="DWH1" Width="1464px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" PageSize="1000">
                    <Columns>
                        <asp:CommandField ButtonType="Button" SelectText="No Pre-liberar" ShowSelectButton="True" />
                        <asp:BoundField DataField="documento" HeaderText="documento" SortExpression="documento" />
                        <asp:BoundField DataField="Fecha_Pedido" HeaderText="Fecha_Pedido" SortExpression="Fecha_Pedido" />
                        <asp:BoundField DataField="Fecha_Actual" HeaderText="Fecha_Actual" SortExpression="Fecha_Actual" />
                        <asp:BoundField DataField="Dias_Para_Entrega" HeaderText="Dias_Para_Entrega" SortExpression="Dias_Para_Entrega" />
                        <asp:BoundField DataField="DESTINO" HeaderText="DESTINO" SortExpression="DESTINO" />
                        <asp:BoundField DataField="No_Articulos" HeaderText="No_Articulos" SortExpression="No_Articulos" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerSettings Position="TopAndBottom" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>

                     
                    </asp:Panel>

                <br />
                <asp:TextBox ID="Mensage" runat="server" BorderStyle="None" Width="440px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:SqlDataSource ID="DWH1" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="SELECT * FROM [PEDIDOS_X_LIBERAR]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DWH" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="SELECT * FROM [PEDIDOS_X_ATENDER]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
