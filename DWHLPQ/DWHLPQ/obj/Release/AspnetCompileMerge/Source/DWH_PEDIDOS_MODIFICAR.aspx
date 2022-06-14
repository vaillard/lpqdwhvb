<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DWH_PEDIDOS_MODIFICAR.aspx.vb" Inherits="DWHLPQ.DWH_PEDIDOS_MODIFICAR" %>

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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Guardar1" runat="server" Height="37px" Text="Regresar al Menu Anterior" Width="254px" class="btn btn-outline-info"/>
                        &nbsp;<asp:Button ID="Guardar2" runat="server" Height="37px" Text="Liberar Pedido" Width="254px" class="btn btn-outline-primary" />
                        &nbsp;<asp:Button ID="Agregar" runat="server" Height="37px" Text="Agregar Articulo" Width="242px" class="btn btn-outline-success" />
                        &nbsp;
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
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <asp:Label ID="Label17" runat="server" Text="Pedido :"></asp:Label>
                    <asp:TextBox ID="Pedido" runat="server" BorderStyle="None" Enabled="False" Width="394px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width="1600px" Height="387px" >
                        
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataSourceID="DWH" ForeColor="#333333" GridLines="None" Width="1459px" Height="16px" style="font-size: small" PageSize="1000">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="FECHA_PEDIDO" HeaderText="FECHA_PEDIDO" SortExpression="FECHA_PEDIDO" ReadOnly="True" />
                            <asp:BoundField DataField="DOCUMENTO" HeaderText="DOCUMENTO" SortExpression="DOCUMENTO" />
                            <asp:BoundField DataField="DESTINO" HeaderText="DESTINO" SortExpression="DESTINO" ReadOnly="True" />
                            <asp:BoundField DataField="ARTICULO" HeaderText="ARTICULO" SortExpression="ARTICULO" />
                            <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" />
                            <asp:BoundField DataField="unidad_embarque" HeaderText="unidad_embarque" SortExpression="unidad_embarque" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerSettings Position="TopAndBottom" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
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
                    <td>&nbsp;</td>
                    <td>
                    <asp:SqlDataSource ID="DWH" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="SELECT * FROM [PEDIDOS_DETALLE] WHERE ([DOCUMENTO] = @DOCUMENTO)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Pedido" Name="DOCUMENTO" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="lARTICULO" runat="server" Text="Articulo : "></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="art01" runat="server" BorderStyle="None" Enabled="False" Width="253px"></asp:TextBox>
                        &nbsp;
                        <asp:DropDownList ID="Art1" runat="server" class="form-control" DataSourceID="ARTICULOS" DataTextField="Producto" DataValueField="Producto" Height="32px" Width="268px">
                        </asp:DropDownList>
&nbsp;&nbsp;
&nbsp;<asp:Label ID="Uembarque" runat="server" Text="Unidad Embarque : "></asp:Label>
                        <asp:DropDownList ID="UNEMB" runat="server" class="form-control" DataSourceID="UNIDAD" DataTextField="unidad_embarque" DataValueField="unidad_embarque" Height="33px" Width="267px">
                        </asp:DropDownList>
                        <asp:Label ID="Lcant02" runat="server" Text="Cantidad : "></asp:Label>
                    <asp:TextBox ID="Cantidad0" runat="server" class="form-control" Width="167px" placeholder="Ingrese la cantidad" type="number" step="any"></asp:TextBox>
                    <asp:Button ID="Agreg" runat="server" Height="37px" Text="Agregar" Width="103px" class="btn btn-outline-success"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <asp:Label ID="Lcant01" runat="server" Text="Cantidad : "></asp:Label>
                    <asp:TextBox ID="Cantidad" runat="server" class="form-control" Width="167px" placeholder="Ingrese la cantidad" type="number" step="any"></asp:TextBox>
                        <br />
&nbsp;&nbsp;
                    <asp:Button ID="Modificar" runat="server" Height="37px" Text="Modificar" Width="103px" class="btn btn-outline-success"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ELIMINAR" runat="server" Height="37px" Text="Eliminar" Width="103px" class="btn btn-outline-danger"/>
                    &nbsp;
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <asp:TextBox ID="Mensage" runat="server" Enabled="False" EnableTheming="False" ReadOnly="True" Width="802px" BorderStyle="None"></asp:TextBox>
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:SqlDataSource ID="ARTICULOS" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="SELECT [Producto] FROM [PEDIDOS_ARTICULOS] ORDER BY [Producto]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="UNIDAD" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="SELECT [unidad_embarque] FROM [INTERFAZ_CFDI_CATALOGO_UNIDAD_EMBARQUE]"></asp:SqlDataSource>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
