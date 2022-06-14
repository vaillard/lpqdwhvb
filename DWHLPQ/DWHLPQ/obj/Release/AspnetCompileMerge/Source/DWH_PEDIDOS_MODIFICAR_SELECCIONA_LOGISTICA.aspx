<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DWH_PEDIDOS_MODIFICAR_SELECCIONA_LOGISTICA.aspx.vb" Inherits="DWHLPQ.DWH_PEDIDOS_MODIFICAR_SELECCIONA_LOGISTICA" %>

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
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: small;
        }
        .auto-style3 {
            color: #000066;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="w-100">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Imagenes/lpq2.jpg" Width="111px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="MODIFICAR PEDIDO"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Guardar1" runat="server" Height="37px" Text="Regresar al Menu Anterior" Width="263px" class="btn btn-outline-info"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Salir" Width="200px" Height="37px" class="btn btn-outline-secondary"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
        <asp:Label ID="Label9" runat="server" Text="Usuario"></asp:Label>
                    <asp:TextBox ID="USERNAME" runat="server" BorderStyle="None" Enabled="False" Width="295px">USERNAME</asp:TextBox>
        <asp:TextBox ID="NIVELUSU" runat="server" BorderStyle="None" Enabled="False" Width="295px" Visible="False">nivelusu</asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label20" runat="server" CssClass="auto-style3" Text="Selecciono el Pedido que se Reasignara Operador o Unidad"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataSourceID="DWH1" ForeColor="#333333" GridLines="None" Height="16px" Width="1465px" PageSize="20">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                                <asp:BoundField DataField="documento" HeaderText="documento" SortExpression="documento" />
                                <asp:BoundField DataField="Fecha_Pedido" HeaderText="Fecha_Pedido" SortExpression="Fecha_Pedido" />
                                <asp:BoundField DataField="Fecha_Actual" HeaderText="Fecha_Actual" SortExpression="Fecha_Actual" />
                                <asp:BoundField DataField="Dias_Para_Entrega" HeaderText="Dias_Para_Entrega" SortExpression="Dias_Para_Entrega" />
                                <asp:BoundField DataField="DESTINO" HeaderText="DESTINO" SortExpression="DESTINO" />
                                <asp:BoundField DataField="No_Articulos" HeaderText="No_Articulos" SortExpression="No_Articulos" />
                                <asp:BoundField DataField="Unidad" HeaderText="Unidad" SortExpression="Unidad" />
                                <asp:BoundField DataField="placas" HeaderText="placas" SortExpression="placas" />
                                <asp:BoundField DataField="NoOPERADOR" HeaderText="NoOPERADOR" SortExpression="NoOPERADOR" />
                                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
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
                        <asp:SqlDataSource ID="DWH1" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="SELECT * FROM [PEDIDOS_X_ATENDER_LOGISTICA]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <asp:Label ID="Label17" runat="server" Text="Pedido :"></asp:Label>
                    <asp:TextBox ID="Pedido" runat="server" BorderStyle="None" Enabled="False" Width="394px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Destino" runat="server" BorderStyle="None" Enabled="False" Width="394px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <asp:Label ID="Label18" runat="server" Text="Unidad :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"  DataSourceID="UNIDAD" DataTextField="Column1" DataValueField="Unidad" Height="37px" Width="289px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="UNIDAD" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="
SELECT Unidad, 'Unidad :' + Unidad+' Placas :'+placas   FROM [dbo].[INTERFAZ_CFDI_CATALOGO_DE_CAMIONETA]
WHERE ESTATUS= 1 "></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <asp:Label ID="Label19" runat="server" Text="Operador :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" DataSourceID="OPERADOR" DataTextField="Column1" DataValueField="chofer" Height="37px" Width="282px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="OPERADOR" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="SELECT  chofer , [APELLIDO PATERNO ] +' '+ [APELLIDO MATERNO] + ' '+ [NOMBRE (S)]   FROM [dbo].[INTERFAZ_CFDI_CATALOGO_DE_CHOFERES]
WHERE ESTATUS= 1 "></asp:SqlDataSource>
                        <br />
                        <asp:Button ID="Button2" runat="server" Height="43px" Text="Cambiar" Width="163px" class="btn btn-outline-primary"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <asp:TextBox ID="Mensage" runat="server" BorderStyle="None" Width="394px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <hr />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        Nota: Unicamente se pueden modificar los articulos de aquellos pedidos , que no esten en estatus de preliberación.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; La modificación de una unidad o operador, se vera reflajada automaticamente en la interfaz de unidades.</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
