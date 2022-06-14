<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="INICIO.aspx.vb" Inherits="DWHLPQ.INICIO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<link rel="stylesheet" href="css/bootstrap.min.css" crossorigin="anonymous">
<link rel="stylesheet" href="css/bootstrap-theme.min.css" crossorigin="anonymous">
<script src="js/bootstrap.min.js" crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Acceso</title>




    <style type="text/css">
        .auto-style1 {
            width: 53%;
            height: 248px;
            margin-right: 0px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style6 {
            text-align: center;
            width: 392px;
        }
        .auto-style7 {
            font-size: xx-large;
        }
        .auto-style8 {
            width: 181px;
            height: 182px;
        }
        .auto-style9 {
            width: 397px;
        }
        .auto-style10 {
            font-size: medium;
            background-color: #FFFFFF;
            font-weight: bold;
        }
        .auto-style11 {
            color: #9D0000;
            font-size: large;
            font-weight: bold;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>






        <table class="auto-style1" align="left">
            <tr>
                <td class="auto-style9" rowspan="7">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style6">
            <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text="Acceso al Sistema"></asp:Label>
                    <br />
                    <br />
                </td>
                <td class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td rowspan="7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img alt="LogoLPQ" class="auto-style8" src="Imagenes/lpq2.jpg" /><br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text="Usuario"></asp:Label>
                    <br class="auto-style3" />
                    <div class="text-center">
                    <asp:TextBox ID="txtUsername" runat="server" class="form-control" placeholder="Indique su nombre de Usuario" Width="380px"></asp:TextBox>
                    </div>
                </td>
                <td class="text-center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style3" Text="Contraseña"></asp:Label>
                    <br class="auto-style3" />
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Indique su Contraseña" Width="384px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="text-center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <strong>
                    <asp:TextBox ID="txtnivel" runat="server" class="form-control" placeholder="Indique su Contraseña" Width="384px" CssClass="auto-style12" ReadOnly="True" Visible="False"></asp:TextBox>
                    </strong>
                </td>
                <td class="text-center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <br />
                   
                    
                       <asp:Button ID="btnLogin" runat="server" Height="38px" Text="Ingresar" Width="390px" class="btn btn-outline-dark"/>
                               
                </td>
                <td class="text-center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="NIVELUSUARIO" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="text-center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <strong>
                    <asp:TextBox ID="TextMensaje" runat="server" class="form-control" placeholder="Indique su Contraseña" Width="375px" Enabled="False" Height="83px" ReadOnly="True" BorderStyle="None" CssClass="auto-style11" Visible="False"></asp:TextBox>
                    </strong>
                </td>
                <td class="text-center">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>





</html>


