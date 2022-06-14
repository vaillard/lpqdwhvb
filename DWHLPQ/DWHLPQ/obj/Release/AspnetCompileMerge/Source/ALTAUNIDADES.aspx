<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ALTAUNIDADES.aspx.vb" Inherits="DWHLPQ.DWH_UNIDADES" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   
<link rel="stylesheet" href="css/bootstrap.min.css" crossorigin="anonymous">
<link rel="stylesheet" href="css/bootstrap-theme.min.css" crossorigin="anonymous">
<script src="js/bootstrap.min.js" crossorigin="anonymous"></script>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style20 {
            font-size: xx-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="w-100">
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="5">
                    <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Imagenes/lpq2.jpg" Width="111px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label67"  runat="server" Text="ALTA DE&nbsp; CAMIONETAS"    required="required" CssClass="auto-style20"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="5">
        <asp:Label ID="Label73" runat="server" Text="Usuario"></asp:Label>
                        <asp:TextBox ID="USERNAME" runat="server" BorderStyle="None" Enabled="False" Width="295px">USERNAME</asp:TextBox>
        <asp:TextBox ID="NIVELUSU" runat="server" BorderStyle="None" Enabled="False" Width="295px" Visible="False">nivelusu</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <strong>
                    <asp:Label ID="Label2"  runat="server" Text="Modelo"    required="required"></asp:Label>
                    </strong>
                    </td>
                    <td>
                    <asp:TextBox ID="Modelo" class="form-control" placeholder="Modelo del Vehiculo" runat="server" Width="455px"  ></asp:TextBox>
                    </td>
                    <td>
                    <strong>
                    <asp:Label ID="Label68" runat="server" Text="Ruta 1"></asp:Label>
                    </strong>
                    </td>
                    <td>
                    <asp:DropDownList ID="Ruta1" class="form-control" runat="server" DataSourceID="Ruta" DataTextField="Cost_Center" DataValueField="ID" Height="35px" Width="454px">
                    </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <strong>
                    <asp:Label ID="Label3"  runat="server" Text="Placas"></asp:Label>
                    </strong>
                    </td>
                    <td>
                    <asp:TextBox ID="Placas" class="form-control" placeholder="Numero de Placas del  Vehiculo" runat="server" Width="455px"></asp:TextBox>
                    </td>
                    <td>
                    <strong>
                    <asp:Label ID="Label69" runat="server" Text="Ruta 2"></asp:Label>
                    </strong>
                    </td>
                    <td>
                    <asp:DropDownList ID="Ruta2" class="form-control" runat="server" DataSourceID="Ruta" DataTextField="Cost_Center" DataValueField="ID" Height="35px" Width="454px">
                    </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <strong>
                    <asp:Label ID="Label9"  runat="server" Text="Marca"></asp:Label>
                    </strong>
                    </td>
                    <td>
                    <asp:TextBox ID="Marca" class="form-control" placeholder="Marca del Vehiculo" runat="server" Width="455px"></asp:TextBox>
                    </td>
                    <td>
                    <strong>
                    <asp:Label ID="Label70" runat="server" Text="Ruta 3"></asp:Label>
                    </strong>
                    </td>
                    <td>
                    <asp:DropDownList ID="Ruta3" class="form-control" runat="server" DataSourceID="Ruta" DataTextField="Cost_Center" DataValueField="ID" Height="35px" Width="454px">
                    </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <strong>
                    <asp:Label ID="Label10"  runat="server" Text="Tarjeta de Circulación"></asp:Label>
                    </strong>
                    </td>
                    <td>
                    <asp:TextBox ID="Tarjeta" class="form-control" placeholder="Tarjeta de Circulación del Vehiculo" runat="server" Width="455px"></asp:TextBox>
                    </td>
                    <td>
                    <strong>
                    <asp:Label ID="Label71" runat="server" Text="Ruta 4"></asp:Label>
                    </strong>
                    </td>
                    <td>
                    <asp:DropDownList ID="Ruta4" class="form-control" runat="server" DataSourceID="Ruta" DataTextField="Cost_Center" DataValueField="ID" Height="35px" Width="454px">
                    </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <strong>
                    <asp:Label ID="label66" runat="server" Text="Expedida"></asp:Label>
                    </strong>
                    </td>
                    <td>
                    <asp:TextBox ID="Expedida" class="form-control" placeholder="Tarjeta de Circulación del Vehiculo" runat="server" Width="455px" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                    <strong>
                    <asp:Label ID="Label72" runat="server" Text="Ruta 5"></asp:Label>
                    </strong>
                    </td>
                    <td>
                    <asp:DropDownList ID="Ruta5" class="form-control" runat="server" DataSourceID="Ruta" DataTextField="Cost_Center" DataValueField="ID" Height="35px" Width="454px">
                    </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <strong>
                    <asp:Label ID="Label4" runat="server" Text="Vigencia"></asp:Label>
                    </strong>
                    </td>
                    <td>
                    <asp:TextBox ID="Vigencia" placeholder="Vigencia"  class="form-control" runat="server" Width="455px" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <strong>
                    <asp:Label ID="Label5" runat="server" Text="Número de Seguro"></asp:Label>
                    </strong>
                    </td>
                    <td>
                    <asp:TextBox ID="NoSeguro" class="form-control" placeholder="Número del Seguro del Vehiculo" runat="server" Width="455px"></asp:TextBox>
                    </td>
                    <td>
                    <strong>
                    <asp:Label ID="Label8" runat="server" Text="Operador"></asp:Label>
                    </strong>
                    </td>
                    <td>
                    <asp:DropDownList ID="Oper1" class="form-control" runat="server" DataSourceID="Operador" DataTextField="Nombre" DataValueField="chofer" Height="35px" Width="457px">
                    </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <strong>
                    <asp:Label ID="Label7" runat="server" Text="Aseguradora"></asp:Label>
                    </strong>
                    </td>
                    <td>


                    <asp:TextBox ID="Aseguradora" class="form-control" placeholder="Nombre de  la   Aseguradora" runat="server" Width="457px"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="4">
                    <asp:TextBox ID="Mensage" runat="server" EnableTheming="False" ReadOnly="True" Width="921px" BorderStyle="None"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="4">

                        <asp:Button ID="Button1" runat="server" Height="41px" Text="Guardar" Width="234px" class="btn btn-outline-success"/>
                    
&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Height="41px" Text="Cancelar" Width="234px" class="btn btn-outline-primary"/>
                    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:Button ID="Button3" runat="server" Height="41px" Text="Salir" Width="234px" class="btn btn-outline-secondary"/>
                    
                    <asp:SqlDataSource ID="Operador" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="SELECT chofer, [NOMBRE (S)] + ' ' + [APELLIDO PATERNO ] + ' ' + [APELLIDO MATERNO] AS Nombre FROM INTERFAZ_CFDI_CATALOGO_DE_CHOFERES
WHERE ESTATUS=1
order by  [NOMBRE (S)]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="Ruta" runat="server" ConnectionString="<%$ ConnectionStrings:DWHConnectionString %>" SelectCommand="SELECT distinct[ID], [Cost Center] AS Cost_Center FROM [INTERFAZ_CFDI_CATALOGO_RUTAS] ORDER BY [Cost Center]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </div>
        <div class="mb-3">


        &nbsp;</div>

    </form>
</body>
</html>
