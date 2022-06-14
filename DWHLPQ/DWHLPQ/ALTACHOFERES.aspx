<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ALTACHOFERES.aspx.vb" Inherits="DWHLPQ.DWH_CHOFERES" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    

<link rel="stylesheet" href="css/bootstrap.min.css" crossorigin="anonymous">
<link rel="stylesheet" href="css/bootstrap-theme.min.css" crossorigin="anonymous">
<script src="js/bootstrap.min.js" crossorigin="anonymous"></script>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 498px;
        }
        .auto-style4 {
            height: 26px;
            width: 498px;
        }
        .auto-style5 {
            width: 245px;
        }
        .auto-style6 {
            height: 26px;
            width: 245px;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            height: 27px;
        }
        .auto-style9 {
            width: 245px;
            height: 27px;
        }
        .auto-style10 {
            width: 498px;
            height: 27px;
        }
        .auto-style12 {
            height: 26px;
            color: #FF0000;
        }
        .auto-style13 {
            vertical-align: top;
            width: 947px;
        }
        .auto-style14 {
            text-align: left;
            font-size: xx-large;
        }
        .auto-style15 {
            height: 26px;
            width: 498px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            </div>
        <div class="mb-3">


        &nbsp;<table class="auto-style13">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="auto-style7" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Imagenes/lpq2.jpg" Width="111px" />
                </td>
                <td class="auto-style14">
                    <strong>ALTA DE&nbsp; CHOFERES</strong></td>
            </tr>
            <tr>
                <td>
                    <strong></strong></td>
                <td class="auto-style7" colspan="2">
                    &nbsp;</td>
                <td class="text-end">
                    <asp:Label ID="Label9" runat="server" Text="Usuario"></asp:Label>
                    <asp:TextBox ID="USERNAME" runat="server" BorderStyle="None" ReadOnly="True" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style9">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style10" colspan="2">
                    <asp:TextBox ID="Nombres" class="form-control" placeholder="Nombre (s)" runat="server" Width="455px"   ></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="auto-style5">
                    <strong>
                    <asp:Label ID="Label2"  runat="server" Text="Apellido Paterno"    required="required"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="Apaterno" class="form-control" placeholder="Apellido Paterno" runat="server" Width="455px"  ></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label3"  runat="server" Text="Apellido Materno"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="Amaterno" class="form-control" placeholder="Apellido Materno" runat="server" Width="455px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label4" runat="server" Text="RFC"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="RFC" placeholder="RFC"  class="form-control" runat="server" Width="455px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label5" runat="server" Text="Número de Seguro Social"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="NoSeguro" class="form-control" placeholder="Número de Seguro Social" runat="server" Width="455px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label7" runat="server" Text="Tipo Licencia"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style15" colspan="2">


                    <asp:DropDownList class="form-control" ID="TipoLicencia" runat="server" Height="32px" Width="101px" required="required">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem Selected="True">B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label6" runat="server" Text="Número de Licencia"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="NoLicencia" class="form-control" placeholder="Número de Licencia" runat="server" Width="455px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label8" runat="server" Text="Vigencia"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="Vigencia" class="form-control" placeholder="Vigencia de Licencia" runat="server" Width="455px" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style6"></td>
                <td class="auto-style4" colspan="2">
                   
                      <asp:Button ID="Button1" runat="server" Height="43px" Text="Guardar" Width="163px" class="btn btn-outline-success"/>

&nbsp;<asp:Button ID="Button2" runat="server" Height="43px" Text="Cancelar" Width="163px" class="btn btn-outline-primary"/>
                    
&nbsp;<asp:Button ID="Button3" runat="server" Height="43px" Text="Salir" Width="163px" class="btn btn-outline-secondary"/>
                    
                      &nbsp;&nbsp;&nbsp;
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style6"></td>
                <td class="auto-style4" colspan="2">
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style12" colspan="3">
                    <asp:TextBox ID="Mensage" runat="server" Enabled="False" EnableTheming="False" ReadOnly="True" Width="494px" BorderStyle="None"></asp:TextBox>
        <asp:TextBox ID="NIVELUSU" runat="server" BorderStyle="None" Enabled="False" Width="295px" Visible="False">nivelusu</asp:TextBox>
                </td>
            </tr>
        </table>

    </div>

    </form>
</body>
</html>
