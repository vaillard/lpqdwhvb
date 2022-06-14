<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="defaultAdmin.aspx.vb" Inherits="DWHLPQ._defaultAdmin" %>

<!DOCTYPE html>

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


<link rel="stylesheet" href="css/bootstrap.min.css" crossorigin="anonymous">
<link rel="stylesheet" href="css/bootstrap-theme.min.css" crossorigin="anonymous">
<script src="js/bootstrap.min.js" crossorigin="anonymous"></script>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <link href="menulpqq.css" rel="stylesheet" />


<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type="text/css">
        html, body, div, iframe { margin:0; padding:0; height:100%; }
iframe { display:block; width:100%; border:none; }
*{box-sizing:border-box}input{margin:0 0 0 380px;
font-family:inherit;font-size:inherit;line-height:inherit
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style7 {
            width: 118px;
            height: 110px;
        }
        .auto-style8 {
            width: 99%;
            height: 5px;
            background-color: #99CCFF;
        }
        .auto-style10 {
            color: #000066;
        }
        </style>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style2"> 
            <br />
&nbsp;&nbsp;&nbsp;<img alt="LogoLPQ" class="auto-style7" src="Imagenes/lpq2.jpg" />&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Menu Adminstrativo"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Menu Almacén"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Menu Logistica"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
            &nbsp;&nbsp;&nbsp;
            </span>
        <asp:Label ID="Label9" runat="server" Text="Usuario"></asp:Label>
            :
        <asp:TextBox ID="USERNAME" runat="server" BorderStyle="None" Enabled="False" Width="295px">USERNAME</asp:TextBox>
        <asp:TextBox ID="NIVELUSU" runat="server" BorderStyle="None" Enabled="False" Width="295px" Visible="False">nivelusu</asp:TextBox>
            <br />
        </div>
        <table class="auto-style8">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>





                    <strong class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="AltaUsuarios.aspx">
        
                    

                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                            <td>





                                <strong class="auto-style10"><a href="AltaUsuarios.aspx">
        
                    

                    <asp:Button ID="Button2" runat="server" Height="68px" Text="Usuarios" Width="337px" class="btn btn-outline-primary" BorderStyle="Outset"/>



        </a>
                                <br />
                    <a href="AltaUsuarios.aspx">
        
                    

                         <asp:Button ID="Button3" runat="server" Height="68px" Text="Choferes" Width="337px" class="btn btn-outline-primary"/>
        


        </a>
                                <br />
                    <a href="AltaUsuarios.aspx">
        
                    

                                         <asp:Button ID="Button4" runat="server" Height="68px" Text="Camionetas" Width="337px" class="btn btn-outline-primary"/>



        </a>
                                <br />
                    <a href="AltaUsuarios.aspx">
        
                    

<asp:Button ID="Button6" runat="server" Height="68px" Text="Atender Pedidos" Width="337px" class="btn btn-outline-primary"/>



        </a>
                                <br />
                    <a href="AltaUsuarios.aspx">
        
                    

                        <asp:Button ID="Button5" runat="server" Height="68px" Text="Pedidos" Width="337px" class="btn btn-outline-primary"/>



        </a>
                                <br />
                    <a href="AltaUsuarios.aspx">
        
                    

<asp:Button ID="Button1" runat="server" Height="68px" Text="Cerrar Sesión" Width="337px" class="btn btn-outline-secondary"/>



        </a>
        </strong>

                            </td>
                            <td>&nbsp;</td>
                        </tr>
        </table>

        </a>
        </strong>

    </form>



</body>
</html>


