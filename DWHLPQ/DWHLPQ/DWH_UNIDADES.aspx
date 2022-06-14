<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DWH_UNIDADES.aspx.vb" Inherits="DWHLPQ.DWH_UNIDADES1" %>

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
            height: 114px;
        }
        .auto-style2 {
            height: 176px;
            width: 1246px;
        }
        .auto-style4 {
            height: 26px;
            width: 1246px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            font-size: small;
        }
        .auto-style7 {
            height: 21px;
        }
        .auto-style8 {
            width: 243px;
        }
        .auto-style9 {
            height: 21px;
            width: 243px;
        }
        .auto-style10 {
            width: 112px;
        }
        .auto-style11 {
            height: 21px;
            width: 112px;
        }
        .auto-style12 {
            width: 1413px;
        }
        .auto-style13 {
            width: 110%
        }
        .auto-style14 {
            color: #FF0000;
            font-size: xx-small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Imagenes/lpq2.jpg" Width="111px" />
                    <asp:Label ID="Label16" runat="server" CssClass="auto-style25" Text="Menu de Camionetas" style="font-size: xx-large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    

                    <asp:Button ID="Button4" runat="server" Height="41px" Text="Alta Camionetas" Width="234px" class="btn btn-outline-success"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                   
                     <asp:Button ID="Button3" runat="server" Height="41px" Text="Salir" Width="234px" class="btn btn-outline-secondary"/>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
        <asp:Label ID="Label9" runat="server" Text="Usuario"></asp:Label>
        &nbsp;<asp:TextBox ID="USERNAME" runat="server" BorderStyle="None" Enabled="False" Width="295px">USERNAME</asp:TextBox>
        <asp:TextBox ID="NIVELUSU" runat="server" BorderStyle="None" Enabled="False" Width="295px" Visible="False">nivelusu</asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label14" runat="server" CssClass="auto-style2" Text="Catalogo de Camionetas" style="font-size: x-large"></asp:Label>
                </td>
                <td class="auto-style5">
        &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="Label15" runat="server" CssClass="auto-style22" Text="Seleccione el Registro a Modificar" style="color: #000066"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style6" DataSourceID="DWH1" ForeColor="#333333" GridLines="None" Width="1710px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="UNIDAD" HeaderText="UNIDAD" SortExpression="UNIDAD" />
                            <asp:BoundField DataField="PLACAS" HeaderText="PLACAS" SortExpression="PLACAS" />
                            <asp:BoundField DataField="VIGENCIA" HeaderText="VIGENCIA" SortExpression="VIGENCIA" />
                            <asp:BoundField DataField="NoSEGURO" HeaderText="NoSEGURO" SortExpression="NoSEGURO" />
                            <asp:BoundField DataField="ASEGURADORA" HeaderText="ASEGURADORA" SortExpression="ASEGURADORA" />
                            <asp:BoundField DataField="EXPEDIDA" HeaderText="EXPEDIDA" SortExpression="EXPEDIDA" />
                            <asp:BoundField DataField="VIGENCIA1" HeaderText="VIGENCIA1" SortExpression="VIGENCIA1" />
                            <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                            <asp:BoundField DataField="MODELO" HeaderText="MODELO" SortExpression="MODELO" />
                            <asp:BoundField DataField="TARJETA_CIRCULACION" HeaderText="TARJETA_CIRCULACION" SortExpression="TARJETA_CIRCULACION" />
                            <asp:BoundField DataField="RUTA1" HeaderText="RUTA1" SortExpression="RUTA1" />
                            <asp:BoundField DataField="RUTA2" HeaderText="RUTA2" SortExpression="RUTA2" />
                            <asp:BoundField DataField="RUTA3" HeaderText="RUTA3" SortExpression="RUTA3" />
                            <asp:BoundField DataField="RUTA4" HeaderText="RUTA4" SortExpression="RUTA4" />
                            <asp:BoundField DataField="RUTA5" HeaderText="RUTA5" SortExpression="RUTA5" />
                            <asp:BoundField DataField="CHOFER" HeaderText="CHOFER" SortExpression="CHOFER" />
                            <asp:BoundField DataField="ESTATUS" HeaderText="ESTATUS" SortExpression="ESTATUS" ReadOnly="True" />
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
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <hr class="auto-style12" />
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
                    <table class="auto-style13">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="Folio :"></asp:Label>
                            </td>
                            <td>
                    <asp:TextBox ID="Folio" runat="server" class="form-control" placeholder="Folio" Width="397px" BorderStyle="None" Enabled="False"></asp:TextBox>
                            </td>
                            <td class="auto-style10">
                    <asp:Label ID="Label11" runat="server" Text="Operador :"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="Operador1" runat="server" DataSourceID="OPERADOR" DataTextField="NOMBRE" class="form-control" DataValueField="NOMBRE" Height="36px" Width="405px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Text="Unidad :"></asp:Label>
                            </td>
                            <td>
                    <asp:TextBox ID="Unidad" runat="server" class="form-control" placeholder="Unidad" Width="397px" BorderStyle="None" Enabled="False"></asp:TextBox>
                            </td>
                            <td class="auto-style10">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style8">
                    <asp:Label ID="Label3" runat="server" Text="Modelo:"></asp:Label>
                            </td>
                            <td>
                    <asp:TextBox ID="Modelo" runat="server" class="form-control" placeholder="Modelo" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style10">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style8">
                    <asp:Label ID="Label4" runat="server" Text="Placas :"></asp:Label>
                            </td>
                            <td>
                    <asp:TextBox ID="Placas" runat="server" class="form-control" placeholder="Placas" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style10">
                    <asp:Label ID="Label12" runat="server" Text="Ruta 1 :"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="Ruta1" runat="server" DataSourceID="RUTAS" DataTextField="Cost Center" class="form-control" DataValueField="Cost Center" Height="36px" Width="405px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style8">
                    <asp:Label ID="Label33" runat="server" Text="Vigencia  :"></asp:Label>
                            </td>
                            <td>
                    <asp:TextBox ID="Folio7" runat="server" class="form-control" placeholder="Vigencia" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style10">
                    <asp:Label ID="Label13" runat="server" Text="Ruta 2 :"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="Ruta2" runat="server" DataSourceID="RUTAS" DataTextField="Cost Center" class="form-control" DataValueField="Cost Center" Height="36px" Width="405px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style8">
                    <asp:Label ID="Label6" runat="server" Text="Número de Seguro :"></asp:Label>
                            </td>
                            <td>
                    <asp:TextBox ID="NoSeguro" runat="server" class="form-control" placeholder="Indique el Nombre" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style10">
                    <asp:Label ID="Label25" runat="server" Text="Ruta 3 :"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="Ruta3" runat="server" DataSourceID="RUTAS" DataTextField="Cost Center" class="form-control" DataValueField="Cost Center" Height="36px" Width="405px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style8">
                    <asp:Label ID="Label32" runat="server" Text="Aseguradora :"></asp:Label>
                            </td>
                            <td>
                    <asp:TextBox ID="Aseguradora" runat="server" class="form-control" placeholder="Indique el Nombre de la Aseguradora" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style10">
                    <asp:Label ID="Label30" runat="server" Text="Ruta 4 :"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="Ruta4" runat="server" DataSourceID="RUTAS" DataTextField="Cost Center" class="form-control" DataValueField="Cost Center" Height="36px" Width="405px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style8">
                    <asp:Label ID="Label7" runat="server" Text="Expedida :"></asp:Label>
                            </td>
                            <td>
                    <asp:TextBox ID="Folio5" runat="server" class="form-control" placeholder="Expedida" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style10">
                    <asp:Label ID="Label26" runat="server" Text="Ruta 5 :"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="Ruta5" runat="server" DataSourceID="RUTAS" DataTextField="Cost Center" class="form-control" DataValueField="Cost Center" Height="36px" Width="405px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style8">
                    <asp:Label ID="Label8" runat="server" Text="Vigencia 1 :"></asp:Label>
                            </td>
                            <td>
                    <asp:TextBox ID="Folio6" runat="server" class="form-control" placeholder="Vigencia" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>
                                <asp:Label ID="Label34" runat="server" CssClass="auto-style14" Text="En el caso de que la ruta no este definida hay que dejarlo como : Almacen General CP"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style8">
                    <asp:Label ID="Label29" runat="server" Text="Marca :"></asp:Label>
                            </td>
                            <td>
                    <asp:TextBox ID="Marca" runat="server" class="form-control" placeholder="Marca" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style10">
                    <asp:Label ID="Label31" runat="server" Text="Estatus :"></asp:Label>
                            </td>
                            <td>
                    <asp:DropDownList ID="ESTATUS" runat="server" Height="36px" class="form-control"   Width="219px">
                        <asp:ListItem Selected="True" Value="ALTA">ALTA</asp:ListItem>
                        <asp:ListItem Value="BAJA">BAJA</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">
                    <asp:Label ID="Label10" runat="server" Text="Tarjeta de Circulación"></asp:Label>
                            </td>
                            <td class="auto-style7">
                    <asp:TextBox ID="Tcirculacion" runat="server" class="form-control" placeholder="Tarjeta de Circulacion" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style11"></td>
                            <td class="auto-style7">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7"></td>
                            <td class="auto-style9">
                                &nbsp;</td>
                            <td class="auto-style7">
                                &nbsp;</td>
                            <td class="auto-style11"></td>
                            <td class="auto-style7">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                   

                                 <asp:Button ID="Guardar" runat="server" Height="41px" Text="Guardar" Width="234px" class="btn btn-outline-success"/>

                    &nbsp;&nbsp;

                                <asp:Button ID="Cancelar" runat="server" Height="41px" Text="Cancelar" Width="234px" class="btn btn-outline-secondary"/>
                  
                    <asp:TextBox ID="Mensage" runat="server" Enabled="False" EnableTheming="False" ReadOnly="True" Width="837px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
        </table>
        </div>
        <asp:SqlDataSource ID="OPERADOR" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="SELECT [chofer], [NOMBRE] FROM [CHOFERES_ACTIVOS]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="RUTAS" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="SELECT * FROM [INTERFAZ_CFDI_CATALOGO_RUTAS]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="DWH1" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="SELECT * FROM [CAMIONETAS_VISTA]"></asp:SqlDataSource>
    </form>
</body>
</html>
