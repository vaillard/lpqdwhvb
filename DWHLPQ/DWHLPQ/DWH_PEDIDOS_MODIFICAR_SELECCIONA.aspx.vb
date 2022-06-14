Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security

Public Class DWH_PEDIDOS_MODIFICAR_SELECCIONA
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        USERNAME.Text = Request.QueryString(“userlpq”)
        NIVELUSU.Text = Request.QueryString(“nivellpq”)


        If USERNAME.Text = "" Then
            Response.Redirect("INICIO.aspx")
        End If

        Label17.Visible = False


    End Sub




    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        Response.Redirect(“defaultAdmin.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)


    End Sub


    Protected Sub GridView3_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView3.SelectedIndexChanged


        Pedido.Visible = True

        Dim row As GridViewRow = GridView3.SelectedRow
        Pedido.Text = row.Cells(1).Text


        Response.Redirect(“DWH_PEDIDOS_MODIFICAR.aspx?userlpq=” + USERNAME.Text + "&pedido=" + Pedido.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub

    Protected Sub Guardar1_Click(sender As Object, e As EventArgs) Handles Guardar1.Click

        Response.Redirect(“DWH_PEDIDOS_ATENDER.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub
End Class