<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ALTAUSUARIOS.aspx.vb" Inherits="DWHLPQ.ALTAUSUARIOS" %>

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

        .auto-style7 {
            font-size: x-large;
            width: 311px;
        }
        tbody,td,tfoot,th,thead,tr{border-color:inherit;border-style:solid;border-width:0}*,::after,::before{box-sizing:border-box}
        .auto-style14 {
            text-align: left;
            font-size: xx-large;
        }
        b,strong{font-weight:bolder}.text-end{text-align:right!important}.form-control{transition:none}.form-control{display:block;width:100%;padding:.375rem .75rem;font-size:1rem;font-weight:400;line-height:1.5;color:#212529;background-color:#fff;background-clip:padding-box;border:1px solid #ced4da;-webkit-appearance:none;-moz-appearance:none;appearance:none;border-radius:.25rem;transition:border-color .15s ease-in-out,box-shadow .15s ease-in-out}button,input,optgroup,select,textarea{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}
        .auto-style13 {
            vertical-align: top;
            width: 947px;
        }
        table{caption-side:bottom;border-collapse:collapse}
        .auto-style16 {
            font-size: large;
        }
        .auto-style21 {
            font-size: x-large;
            width: 311px;
            height: 43px;
        }
        .auto-style22 {
            text-align: right;
            height: 43px;
        }
        .auto-style23 {
            font-size: x-large;
            width: 311px;
            height: 41px;
        }
        .auto-style24 {
            text-align: right;
            height: 41px;
        }
        .auto-style26 {
            font-size: x-large;
            height: 41px;
        }
        .auto-style27 {
            font-size: medium;
        }
        .auto-style28 {
            text-align: left;
            height: 41px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style13">
            <tr>
                <td class="auto-style7">
                    <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Imagenes/lpq2.jpg" Width="111px" />
                </td>
                <td class="auto-style14">
                    ALTA DE&nbsp;<strong> </strong>USUARIOS</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="text-end">
        <asp:Label ID="Label9" runat="server" Text="Usuario"></asp:Label>
        <asp:TextBox ID="USERNAME" runat="server" BorderStyle="None" Enabled="False" Width="295px">USERNAME</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Label ID="Label2"  runat="server" Text="Usuario"    required="required" CssClass="auto-style16"></asp:Label>
                    </td>
                <td class="auto-style22">
                    <asp:TextBox ID="Usuario" class="form-control" placeholder="Usuario" runat="server" Width="455px"  ></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label3"  runat="server" Text="Contraseña"    required="required" CssClass="auto-style16"></asp:Label>
                    </td>
                <td class="auto-style24">
                    <asp:TextBox ID="Contrasena" class="form-control" placeholder="Contraseña" runat="server" Width="455px" TextMode="Password"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label5"  runat="server" Text="Verifica Contraseña"    required="required" CssClass="auto-style16"></asp:Label>
                    </td>
                <td class="auto-style24">
                    <asp:TextBox ID="ContrasenaV" class="form-control" placeholder="Confirma Contraseña" runat="server" Width="455px" TextMode="Password"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label4"  runat="server" Text="Nivel de Usuario"    required="required" CssClass="auto-style16"></asp:Label>
                    </td>
                <td class="auto-style28">
                    <asp:DropDownList ID="Nivel" runat="server" Height="36px" class="form-control"   Width="219px">
                        <asp:ListItem Value="1">ADMINISTRADOR</asp:ListItem>
                        <asp:ListItem Value="2" Selected="True">ALMACEN</asp:ListItem>
                        <asp:ListItem Value="3">LOGISTICA</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label10"  runat="server" Text="Nombre(s)"    required="required" CssClass="auto-style16"></asp:Label>
                    </td>
                <td class="auto-style24">
                    <asp:TextBox ID="Nombre" class="form-control" placeholder="Nombre Completo" runat="server" Width="455px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label11"  runat="server" Text="Apellido Paterno"    required="required" CssClass="auto-style16"></asp:Label>
                    </td>
                <td class="auto-style24">
                    <asp:TextBox ID="Aparterno" class="form-control" placeholder="Apellido Paterno" runat="server" Width="455px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label12"  runat="server" Text="Apellido Materno"    required="required" CssClass="auto-style16"></asp:Label>
                    </td>
                <td class="auto-style24">
                    <asp:TextBox ID="Amaterno" class="form-control" placeholder="Apellido Materno" runat="server" Width="455px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label13"  runat="server" Text="Area"    required="required" CssClass="auto-style16"></asp:Label>
                    </td>
                <td class="auto-style24">
                    <asp:TextBox ID="Area" class="form-control" placeholder="Area o Departamento del Usuario" runat="server" Width="455px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="2">
                    <asp:Button ID="Button1" runat="server" Height="41px" Text="Guardar" Width="234px" class="btn btn-outline-success"/>
                    
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="41px" Text="Cancelar" Width="234px" class="btn btn-outline-primary"/>
                    
                    &nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Height="41px" Text="Salir" Width="234px" class="btn btn-outline-secondary"/>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="2">
        <asp:TextBox ID="NIVELUSU" runat="server" BorderStyle="None" Enabled="False" Width="295px" Visible="False">nivelusu</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="2">
                    <asp:TextBox ID="Mensage" runat="server" Enabled="False" EnableTheming="False" ReadOnly="True" Width="802px" BorderStyle="None"></asp:TextBox>
                </td>
            </tr>
        </table>

        </div>
    </form>
</body>
</html>
