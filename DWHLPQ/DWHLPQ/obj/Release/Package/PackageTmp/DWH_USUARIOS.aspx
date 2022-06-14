<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DWH_USUARIOS.aspx.vb" Inherits="DWHLPQ.DWH_USUARIOS" %>

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
            width: 100%;
        }
        strong{font-weight:bolder}*{box-sizing:border-box}
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 45px;
        }
        .auto-style6 {
            height: 38px;
        }
        .auto-style7 {
            width: 113px;
        }
        .auto-style16 {
            height: 45px;
            width: 263px;
        }
        .auto-style17 {
            width: 226px;
        }
        .auto-style22 {
            font-size: large;
            color: #000066;
        }
        .auto-style23 {
            text-align: left;
        }
        .auto-style24 {
            width: 226px;
            text-align: left;
        }
        .auto-style25 {
            font-size: xx-large;
        }
        .auto-style27 {
            font-size: medium;
        }
        .auto-style28 {
            height: 23px;
            text-align: left;
        }
        .auto-style29 {
            width: 274px;
        }
        .auto-style30 {
            width: 222px;
        }
        .auto-style31 {
            width: 85%
        }
        .auto-style32 {
            width: 118px;
        }
        .auto-style33 {
            width: 118px;
            height: 40px;
        }
        .auto-style34 {
            width: 274px;
            height: 40px;
        }
        .auto-style36 {
            width: 222px;
            height: 40px;
        }
        .auto-style37 {
            height: 40px;
        }
        .auto-style38 {
            width: 118px;
            height: 35px;
        }
        .auto-style39 {
            width: 274px;
            height: 35px;
        }
        .auto-style40 {
            height: 35px;
        }
        .auto-style41 {
            width: 222px;
            height: 35px;
        }
        .auto-style42 {
            width: 118px;
            height: 34px;
        }
        .auto-style43 {
            width: 274px;
            height: 34px;
        }
        .auto-style44 {
            height: 34px;
        }
        .auto-style45 {
            width: 222px;
            height: 34px;
        }
        .auto-style46 {
            width: 118px;
            height: 38px;
        }
        .auto-style47 {
            width: 274px;
            height: 38px;
        }
        .auto-style49 {
            width: 222px;
            height: 38px;
        }
        .auto-style50 {
            font-size: small;
            margin-bottom: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="3">
                    <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Imagenes/lpq2.jpg" Width="111px" />
                    <asp:Label ID="Label16" runat="server" CssClass="auto-style25" Text="Catalogo de Usuarios"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Height="41px" Text="Alta" Width="234px" class="btn btn-outline-primary"/>
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button3" runat="server" Height="41px" Text="Salir" Width="234px" class="btn btn-outline-secondary"/>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">
                    &nbsp;</td>
                <td class="auto-style28">
                    &nbsp;</td>
                <td class="auto-style28">
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
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23" colspan="4"><strong>
                    <asp:Label ID="Label15" runat="server" CssClass="auto-style22" Text="Seleccione el Registro a Modificar"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style23" colspan="4">
                    &nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style50" DataSourceID="DWH1" ForeColor="#333333" GridLines="None" Width="1281px" Height="278px" PageSize="20" DataKeyNames="FOLIO">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="FOLIO" HeaderText="FOLIO" SortExpression="FOLIO" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="USUARIO" HeaderText="USUARIO" SortExpression="USUARIO" />
                            <asp:BoundField DataField="CONTRASENA" HeaderText="CONTRASENA" SortExpression="CONTRASENA" />
                            <asp:BoundField DataField="APELLIDO_PATERNO" HeaderText="APELLIDO_PATERNO" SortExpression="APELLIDO_PATERNO" />
                            <asp:BoundField DataField="APELLIDO_MATERNO" HeaderText="APELLIDO_MATERNO" SortExpression="APELLIDO_MATERNO" />
                            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                            <asp:BoundField DataField="AREA" HeaderText="AREA" SortExpression="AREA" />
                            <asp:BoundField DataField="NIVEL" HeaderText="NIVEL" SortExpression="NIVEL" ReadOnly="True" />
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style23" colspan="4">
                    &nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style6" colspan="4">
                    <hr />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style6" colspan="4">
                    <table class="auto-style31">
                        <tr>
                            <td class="auto-style32">
                    <asp:Label ID="Label21" runat="server" Text="Folio"></asp:Label>
                            </td>
                            <td class="auto-style29">
                    <asp:TextBox ID="Folio" runat="server" BorderStyle="None" Enabled="False" Width="116px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td class="auto-style30">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style32">
                    <asp:Label ID="Label10" runat="server" Text="Usuario"></asp:Label>
                            </td>
                            <td class="auto-style29">
                    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" Enabled="False" Width="116px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td class="auto-style30">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style33">
                    <asp:Label ID="Label11" runat="server" Text="Contraseña"></asp:Label>
                            </td>
                            <td class="auto-style34">
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Indique la Contraseña" Width="403px"></asp:TextBox>
                            </td>
                            <td class="auto-style37"></td>
                            <td class="auto-style36">
                                </td>
                            <td class="auto-style37"> 
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style38">
                    <asp:Label ID="Label4"  runat="server" Text="Nivel de Usuario"    required="required" CssClass="auto-style16"></asp:Label>
                            </td>
                            <td class="auto-style39">
                    <asp:DropDownList ID="Nivel" runat="server" Height="36px" class="form-control"   Width="219px">
                        <asp:ListItem Selected="True" Value="ADMINISTRADOR">ADMNISTRADOR</asp:ListItem>
                        <asp:ListItem Value="ALMACEN">ALMACEN</asp:ListItem>
                        <asp:ListItem>LOGISTICA</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            <td class="auto-style40"></td>
                            <td class="auto-style41">
                                </td>
                            <td class="auto-style40">
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style42"><asp:Label ID="Label13"  runat="server" Text="Estatus"    required="required" CssClass="auto-style16"></asp:Label>
                            </td>
                            <td class="auto-style43">
                    <asp:DropDownList ID="Nivel0" runat="server" Height="36px" class="form-control"   Width="219px">
                        <asp:ListItem Selected="True" Value="ALTA">ALTA</asp:ListItem>
                        <asp:ListItem Value="BAJA">BAJA</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            <td class="auto-style44"></td>
                            <td class="auto-style45">
                                </td>
                            <td class="auto-style44">
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style33">
                    <asp:Label ID="Label17" runat="server" Text="Nombre"></asp:Label>
                            </td>
                            <td class="auto-style34"> 
                    <asp:TextBox ID="Nombre" runat="server" class="form-control" placeholder="Indique el Nombre" Width="403px"></asp:TextBox>
                            </td>
                            <td class="auto-style37"></td>
                            <td class="auto-style36">
                                </td>
                            <td class="auto-style37">
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style46">
                    <asp:Label ID="Label18" runat="server" Text="Apellido Paterno"></asp:Label>
                            </td>
                            <td class="auto-style47">
                    <asp:TextBox ID="APaterno" runat="server" class="form-control" placeholder="Indique el apellido Paterno" Width="403px"></asp:TextBox>
                            </td>
                            <td class="auto-style6"></td>
                            <td class="auto-style49"></td>
                            <td class="auto-style6"></td>
                        </tr>
                        <tr>
                            <td class="auto-style46">
                    <asp:Label ID="Label19" runat="server" Text="Apellido Materno"></asp:Label>
                            </td>
                            <td class="auto-style47">
                    <asp:TextBox ID="AMaterno" runat="server" class="form-control" placeholder="Indique el Apellido Materno" Width="403px"></asp:TextBox>
                            </td>
                            <td class="auto-style6"></td>
                            <td class="auto-style49"></td>
                            <td class="auto-style6"></td>
                        </tr>
                        <tr>
                            <td class="auto-style46">
                    <asp:Label ID="Label20" runat="server" Text="Area"></asp:Label>
                            </td>
                            <td class="auto-style47">
                    <asp:TextBox ID="Area" runat="server" class="form-control" placeholder="Indique el Area" Width="403px"></asp:TextBox>
                            </td>
                            <td class="auto-style6"></td>
                            <td class="auto-style49"></td>
                            <td class="auto-style6"></td>
                        </tr>
                        <tr>
                            <td class="auto-style32">&nbsp;</td>
                            <td class="auto-style29">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style30">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="5">
                    <asp:TextBox ID="Mensage" runat="server" Enabled="False" EnableTheming="False" ReadOnly="True" Width="837px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4" colspan="3">

                    <asp:Button ID="Button5" runat="server" Height="41px" Text="Guardar" Width="234px" class="btn btn-outline-success"/>
                    
                            &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button7" runat="server" Height="41px" Text="Guardar" Width="234px" class="btn btn-outline-secondary"/>
                    
                    <hr />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
                    <asp:SqlDataSource ID="DWH1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" DeleteCommand="DELETE FROM [INTERFAZ_WEB_USUARIOS] WHERE [USUARIO] = @original_USUARIO AND (([CONTRASENA] = @original_CONTRASENA) OR ([CONTRASENA] IS NULL AND @original_CONTRASENA IS NULL)) AND (([TIPO_USUARIO] = @original_TIPO_USUARIO) OR ([TIPO_USUARIO] IS NULL AND @original_TIPO_USUARIO IS NULL)) AND (([ESTATUS] = @original_ESTATUS) OR ([ESTATUS] IS NULL AND @original_ESTATUS IS NULL)) AND (([NOMBRE] = @original_NOMBRE) OR ([NOMBRE] IS NULL AND @original_NOMBRE IS NULL)) AND (([APELLIDO_PATERNO] = @original_APELLIDO_PATERNO) OR ([APELLIDO_PATERNO] IS NULL AND @original_APELLIDO_PATERNO IS NULL)) AND (([APELLIDO_MATERNO] = @original_APELLIDO_MATERNO) OR ([APELLIDO_MATERNO] IS NULL AND @original_APELLIDO_MATERNO IS NULL)) AND (([AREA] = @original_AREA) OR ([AREA] IS NULL AND @original_AREA IS NULL))" InsertCommand="INSERT INTO [INTERFAZ_WEB_USUARIOS] ([USUARIO], [CONTRASENA], [TIPO_USUARIO], [ESTATUS], [NOMBRE], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [AREA]) VALUES (@USUARIO, @CONTRASENA, @TIPO_USUARIO, @ESTATUS, @NOMBRE, @APELLIDO_PATERNO, @APELLIDO_MATERNO, @AREA)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT FOLIO, [USUARIO], [CONTRASENA], IIF([TIPO_USUARIO]=1 ,'ADMINISTRADOR' , IIF([TIPO_USUARIO]=2 ,'ALMACEN','LOGISTICA')) AS NIVEL, IIF([ESTATUS]=1,'ALTA','BAJA') AS ESTATUS, [NOMBRE], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [AREA] FROM [INTERFAZ_WEB_USUARIOS]" UpdateCommand="UPDATE [INTERFAZ_WEB_USUARIOS] SET [CONTRASENA] = @CONTRASENA, [TIPO_USUARIO] = @TIPO_USUARIO, [ESTATUS] = @ESTATUS, [NOMBRE] = @NOMBRE, [APELLIDO_PATERNO] = @APELLIDO_PATERNO, [APELLIDO_MATERNO] = @APELLIDO_MATERNO, [AREA] = @AREA WHERE [USUARIO] = @original_USUARIO AND (([CONTRASENA] = @original_CONTRASENA) OR ([CONTRASENA] IS NULL AND @original_CONTRASENA IS NULL)) AND (([TIPO_USUARIO] = @original_TIPO_USUARIO) OR ([TIPO_USUARIO] IS NULL AND @original_TIPO_USUARIO IS NULL)) AND (([ESTATUS] = @original_ESTATUS) OR ([ESTATUS] IS NULL AND @original_ESTATUS IS NULL)) AND (([NOMBRE] = @original_NOMBRE) OR ([NOMBRE] IS NULL AND @original_NOMBRE IS NULL)) AND (([APELLIDO_PATERNO] = @original_APELLIDO_PATERNO) OR ([APELLIDO_PATERNO] IS NULL AND @original_APELLIDO_PATERNO IS NULL)) AND (([APELLIDO_MATERNO] = @original_APELLIDO_MATERNO) OR ([APELLIDO_MATERNO] IS NULL AND @original_APELLIDO_MATERNO IS NULL)) AND (([AREA] = @original_AREA) OR ([AREA] IS NULL AND @original_AREA IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_USUARIO" Type="String" />
                            <asp:Parameter Name="original_CONTRASENA" Type="String" />
                            <asp:Parameter Name="original_TIPO_USUARIO" Type="Int32" />
                            <asp:Parameter Name="original_ESTATUS" Type="Int32" />
                            <asp:Parameter Name="original_NOMBRE" Type="String" />
                            <asp:Parameter Name="original_APELLIDO_PATERNO" Type="String" />
                            <asp:Parameter Name="original_APELLIDO_MATERNO" Type="String" />
                            <asp:Parameter Name="original_AREA" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="USUARIO" Type="String" />
                            <asp:Parameter Name="CONTRASENA" Type="String" />
                            <asp:Parameter Name="TIPO_USUARIO" Type="Int32" />
                            <asp:Parameter Name="ESTATUS" Type="Int32" />
                            <asp:Parameter Name="NOMBRE" Type="String" />
                            <asp:Parameter Name="APELLIDO_PATERNO" Type="String" />
                            <asp:Parameter Name="APELLIDO_MATERNO" Type="String" />
                            <asp:Parameter Name="AREA" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CONTRASENA" Type="String" />
                            <asp:Parameter Name="TIPO_USUARIO" Type="Int32" />
                            <asp:Parameter Name="ESTATUS" Type="Int32" />
                            <asp:Parameter Name="NOMBRE" Type="String" />
                            <asp:Parameter Name="APELLIDO_PATERNO" Type="String" />
                            <asp:Parameter Name="APELLIDO_MATERNO" Type="String" />
                            <asp:Parameter Name="AREA" Type="String" />
                            <asp:Parameter Name="original_USUARIO" Type="String" />
                            <asp:Parameter Name="original_CONTRASENA" Type="String" />
                            <asp:Parameter Name="original_TIPO_USUARIO" Type="Int32" />
                            <asp:Parameter Name="original_ESTATUS" Type="Int32" />
                            <asp:Parameter Name="original_NOMBRE" Type="String" />
                            <asp:Parameter Name="original_APELLIDO_PATERNO" Type="String" />
                            <asp:Parameter Name="original_APELLIDO_MATERNO" Type="String" />
                            <asp:Parameter Name="original_AREA" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
    </form>
</body>
</html>
