<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DWH_CHOFERES.aspx.vb" Inherits="DWHLPQ.DWHCHOFERES" %>

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
            width: 1091px;
        }
        .auto-style2 {
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style4 {
            height: 21px;
        }
        .auto-style7 {
            width: 450px;
            height: 34px;
        }
        .auto-style8 {
            height: 46px;
        }
        .auto-style9 {
            width: 450px;
            height: 46px;
        }
        .auto-style10 {
            width: 450px;
            height: 39px;
        }
        .auto-style11 {
            height: 39px;
        }
        .auto-style12 {
            width: 450px;
            height: 40px;
        }
        .auto-style13 {
            height: 40px;
        }
        .auto-style14 {
            width: 450px;
            height: 41px;
        }
        .auto-style15 {
            height: 41px;
        }
        .auto-style17 {
            width: 450px;
            height: 35px;
        }
        .auto-style19 {
            height: 36px;
        }
        .auto-style20 {
            width: 450px;
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2" colspan="3">
                    <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Imagenes/lpq2.jpg" Width="111px" />
                    <asp:Label ID="Label16" runat="server" CssClass="auto-style25" Text="Menu de Choferes" style="font-size: xx-large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                    <asp:Button ID="Button4" runat="server" Height="41px" Text="Alta Choferes" Width="234px" class="btn btn-outline-success"/>
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Height="41px" Text="Salir" Width="234px" class="btn btn-outline-secondary"/>
                    
                &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
        <asp:Label ID="Label9" runat="server" Text="Usuario"></asp:Label>
        &nbsp;<asp:TextBox ID="USERNAME" runat="server" BorderStyle="None" Enabled="False" Width="295px">USERNAME</asp:TextBox>
        <asp:TextBox ID="NIVELUSU" runat="server" BorderStyle="None" Enabled="False" Width="295px" Visible="False">nivelusu</asp:TextBox>
                </td>
                <td class="auto-style3" colspan="2">
        &nbsp;&nbsp;
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3" colspan="2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label14" runat="server" CssClass="auto-style2" Text="Catalogo de Choferes" style="font-size: x-large"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="4">
                    <strong>
                    <asp:Label ID="Label15" runat="server" CssClass="auto-style22" Text="Seleccione el Registro a Modificar" style="color: #000066"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="4">
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style3" DataSourceID="DWH1" ForeColor="#333333" GridLines="None" Height="73px" Width="1469px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="chofer" HeaderText="chofer" SortExpression="chofer" />
                            <asp:BoundField DataField="APELLIDO_PATERNO_" HeaderText="APELLIDO_PATERNO_" SortExpression="APELLIDO_PATERNO_" />
                            <asp:BoundField DataField="APELLIDO_MATERNO" HeaderText="APELLIDO_MATERNO" SortExpression="APELLIDO_MATERNO" />
                            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                            <asp:BoundField DataField="RFC" HeaderText="RFC" SortExpression="RFC" />
                            <asp:BoundField DataField="VIGENCIA" HeaderText="VIGENCIA" SortExpression="VIGENCIA" />
                            <asp:BoundField DataField="NUMERO_DE_SEGURO_SOCIAL_" HeaderText="NUMERO_DE_SEGURO_SOCIAL_" SortExpression="NUMERO_DE_SEGURO_SOCIAL_" />
                            <asp:BoundField DataField="NUMERO_DE_LICENCIA_" HeaderText="NUMERO_DE_LICENCIA_" SortExpression="NUMERO_DE_LICENCIA_" />
                            <asp:BoundField DataField="TIPO_LICENCIA_" HeaderText="TIPO_LICENCIA_" SortExpression="TIPO_LICENCIA_" />
                            <asp:BoundField DataField="ESTATUS" HeaderText="ESTATUS" ReadOnly="True" SortExpression="ESTATUS" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="15" Position="TopAndBottom" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="4">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style10">
                    <asp:Label ID="Label25" runat="server" Text="NoChofer :"></asp:Label>
                            </td>
                            <td class="auto-style11">
                    <asp:TextBox ID="NoChofer" runat="server" class="form-control" placeholder="Indique el Nombre" Width="397px" BorderStyle="None" Enabled="False"></asp:TextBox>
                            </td>
                            <td class="auto-style11"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style11"></td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                    <asp:Label ID="Label1" runat="server" Text="Nombre(s) :"></asp:Label>
                            </td>
                            <td class="auto-style13">
                    <asp:TextBox ID="Nombre" runat="server" class="form-control" placeholder="Indique el Nombre" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style13"></td>
                            <td class="auto-style13"></td>
                            <td class="auto-style13"></td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                    <asp:Label ID="Label17" runat="server" Text="Apellido Paterno :"></asp:Label>
                            </td>
                            <td class="auto-style11">
                    <asp:TextBox ID="ApellidoPaterno" runat="server" class="form-control" placeholder="Indique el Apellido Paterno" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style11"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style11"></td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                    <asp:Label ID="Label18" runat="server" Text="Apellido Materno :"></asp:Label>
                            </td>
                            <td class="auto-style11">
                    <asp:TextBox ID="ApellidoMaterno" runat="server" class="form-control" placeholder="Indique el Apellido Materno" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style11"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style11"></td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                    <asp:Label ID="Label19" runat="server" Text="R.F.C. :"></asp:Label>
                            </td>
                            <td class="auto-style11">
                    <asp:TextBox ID="RFC" runat="server" class="form-control" placeholder="Indique el RFC" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style11"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style11"></td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                    <asp:Label ID="Label20" runat="server" Text="NoSEGURO SOCIAL :"></asp:Label>
                            </td>
                            <td class="auto-style15">
                    <asp:TextBox ID="NoSEGUROSOCIAL" runat="server" class="form-control" placeholder="Indique el numero de seguro social" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style15"></td>
                            <td class="auto-style15"></td>
                            <td class="auto-style15"></td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                    <asp:Label ID="Label21" runat="server" Text="NoLICENCIA :"></asp:Label>
                            </td>
                            <td class="auto-style19">
                    <asp:TextBox ID="NoLICENCIA" runat="server" class="form-control" placeholder="Indique el numero de licencia" Width="397px"></asp:TextBox>
                            </td>
                            <td class="auto-style19"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style19"></td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                    <asp:Label ID="Label22" runat="server" Text="VIGENCIA :"></asp:Label>
                            </td>
                            <td class="auto-style8">
                    <asp:TextBox ID="VIGENCIA" runat="server" class="form-control" placeholder="Indique la vigencia" Width="210px" TextMode="Date"></asp:TextBox>
                            </td>
                            <td class="auto-style8"></td>
                            <td class="auto-style8"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                    <asp:Label ID="Label23" runat="server" Text="TIPO LICENCIA :"></asp:Label>
                            </td>
                            <td class="auto-style11">
                    <asp:DropDownList ID="TIPOLICENCIA" runat="server" Height="36px" class="form-control"   Width="219px">
                        <asp:ListItem Value="A">A</asp:ListItem>
                        <asp:ListItem Value="B" Selected="True">B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            <td class="auto-style11"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style11"></td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                    <asp:Label ID="Label24" runat="server" Text="ESTATUS :"></asp:Label>
                            </td>
                            <td class="auto-style11">
                    <asp:DropDownList ID="ESTATUS" runat="server" Height="36px" class="form-control"   Width="219px">
                        <asp:ListItem Selected="True" Value="ALTA">ALTA</asp:ListItem>
                        <asp:ListItem Value="BAJA">BAJA</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            <td class="auto-style11"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style11"></td>
                        </tr>
                        <tr>
                            <td class="auto-style4" colspan="5">
                    <asp:TextBox ID="Mensage" runat="server" Enabled="False" EnableTheming="False" ReadOnly="True" Width="837px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4" colspan="2">
                     <asp:Button ID="Guardar" runat="server" Height="41px" Text="Guardar" Width="234px" class="btn btn-outline-success"/>
                    
                    &nbsp;
                                <asp:Button ID="Cancelar" runat="server" Height="41px" Text="Cancelar" Width="234px" class="btn btn-outline-secondary"/>
                    
                            </td>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                        </tr>
                        </table>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="DWH1" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="SELECT [chofer], [NOMBRE (S)] AS NOMBRE, [APELLIDO MATERNO] AS APELLIDO_MATERNO, [RFC], [VIGENCIA], [APELLIDO PATERNO ] AS APELLIDO_PATERNO_, [NUMERO DE SEGURO SOCIAL ] AS NUMERO_DE_SEGURO_SOCIAL_, [NUMERO DE LICENCIA ] AS NUMERO_DE_LICENCIA_, [TIPO LICENCIA ] AS TIPO_LICENCIA_, IIF([ESTATUS]=1,'ALTA','BAJA') AS ESTATUS FROM [INTERFAZ_CFDI_CATALOGO_DE_CHOFERES]"></asp:SqlDataSource>
                    &nbsp;&nbsp;
                    </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
