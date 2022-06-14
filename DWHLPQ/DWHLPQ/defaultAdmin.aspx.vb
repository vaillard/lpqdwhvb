Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security


Public Class _defaultAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        USERNAME.Text = Request.QueryString(“userlpq”)
        NIVELUSU.Text = Request.QueryString(“nivellpq”)


        If USERNAME.Text = "" Then
            Response.Redirect("INICIO.aspx")
        End If


        If NIVELUSU.Text = 1 Then

            ' Administrador

            Label1.Visible = True
            Label2.Visible = False
            Label3.Visible = False

            Button2.Visible = True
            Button5.Visible = True

            Button3.Visible = True
            Button4.Visible = True
            Button6.Visible = True


        End If



        If NIVELUSU.Text = 2 Then
            ' Almacen

            Label1.Visible = False
            Label2.Visible = True
            Label3.Visible = False

            Button2.Visible = False
            Button5.Visible = True

            Button3.Visible = False
            Button4.Visible = False
            Button6.Visible = False


        End If


        If NIVELUSU.Text = 3 Then
            ' Logistica

            Label1.Visible = False
            Label2.Visible = False
            Label3.Visible = True

            Button2.Visible = False
            Button5.Visible = False

            Button3.Visible = True
            Button4.Visible = True
            Button6.Visible = True

        End If



    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        USERNAME.Text = Request.QueryString("Default.aspx?userlpq")

        If USERNAME.Text = "" Then
            Response.Redirect("INICIO.aspx")
        End If


    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click


        Response.Redirect(“DWH_USUARIOS.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)


    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

        Response.Redirect(“DWH_CHOFERES.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click

        Response.Redirect(“DWH_UNIDADES.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click

        Response.Redirect(“DWH_PEDIDOS_ATENDER.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click

        Response.Redirect(“DWH_PEDIDOS_ATENDER_LOGISTICA.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub
End Class