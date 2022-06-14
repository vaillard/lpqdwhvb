Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security

Public Class DWH_PEDIDOS_ATENDER
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        USERNAME.Text = Request.QueryString(“userlpq”)
        NIVELUSU.Text = Request.QueryString(“nivellpq”)

        If USERNAME.Text = "" Then
            Response.Redirect("INICIO.aspx")
        End If

    End Sub



    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

        Dim row As GridViewRow = GridView1.SelectedRow
        PEDIDO.Text = row.Cells(1).Text



        Dim con As New SqlConnection

        ' con.ConnectionString = "Server=LPQMOV01;Database=DWH;Trusted_Connection = yes;"
        con.ConnectionString = "Server=LPQDWH2;Database=DWH; User Id=dwh; Password=P4ssw0rd"

        Dim cmd As New SqlCommand("SP_PEDIDO_PRELIBERAR", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros


        cmd.Parameters.AddWithValue("@USUARIO_ALTA", USERNAME.Text)
        cmd.Parameters.AddWithValue("@PEDIDO", PEDIDO.Text)


        con.Open() 'Abre la conexion
        Try
            cmd.ExecuteNonQuery()
            Mensage.Text = "Registro Ingresado con Exito..."
            'Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)


        Catch ex As Exception
            Mensage.Text = "Error no se Pudo Ingresar el Registro..."
            con.Close() ' Cierra la conexión
            ' Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)
        End Try

        PEDIDO.Text = ""

        Response.Redirect(“DWH_PEDIDOS_ATENDER.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)





    End Sub

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged


        Dim row As GridViewRow = GridView2.SelectedRow
        PEDIDO.Text = row.Cells(1).Text



        Dim con As New SqlConnection

        ' con.ConnectionString = "Server=LPQMOV01;Database=DWH;Trusted_Connection = yes;"
        con.ConnectionString = "Server=LPQDWH2;Database=DWH; User Id=dwh; Password=P4ssw0rd"

        Dim cmd As New SqlCommand("SP_PEDIDO_NO_PRELIBERAR", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros


        cmd.Parameters.AddWithValue("@USUARIO_ALTA", USERNAME.Text)
        cmd.Parameters.AddWithValue("@PEDIDO", PEDIDO.Text)


        con.Open() 'Abre la conexion
        Try
            cmd.ExecuteNonQuery()
            Mensage.Text = "Registro Ingresado con Exito..."
            'Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)


        Catch ex As Exception
            Mensage.Text = "Error no se Pudo Ingresar el Registro..."
            con.Close() ' Cierra la conexión
            ' Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)
        End Try

        PEDIDO.Text = ""

        Response.Redirect(“DWH_PEDIDOS_ATENDER.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)




    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        Dim con As New SqlConnection

        ' con.ConnectionString = "Server=LPQMOV01;Database=DWH;Trusted_Connection = yes;"
        con.ConnectionString = "Server=LPQDWH2;Database=DWH; User Id=dwh; Password=P4ssw0rd"

        Dim cmd As New SqlCommand("SP_PEDIDO_LIBERAR", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros

        cmd.Parameters.AddWithValue("@USUARIO_ALTA", USERNAME.Text)


        con.Open() 'Abre la conexion
        Try
            cmd.ExecuteNonQuery()
            Mensage.Text = "Registro Ingresado con Exito..."
            'Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)


        Catch ex As Exception
            Mensage.Text = "Error no se Pudo Ingresar el Registro..."
            con.Close() ' Cierra la conexión
            ' Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)
        End Try


        Response.Redirect(“DWH_PEDIDOS_ATENDER.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)




    End Sub

    Protected Sub ModPedidos_Click(sender As Object, e As EventArgs) Handles ModPedidos.Click


        Response.Redirect(“DWH_PEDIDOS_MODIFICAR_SELECCIONA.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)


    End Sub

    Protected Sub Salir_Click(sender As Object, e As EventArgs) Handles Salir.Click

        Response.Redirect(“DefaultAdmin.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click


        Dim con As New SqlConnection

        ' con.ConnectionString = "Server=LPQMOV01;Database=DWH;Trusted_Connection = yes;"
        con.ConnectionString = "Server=LPQDWH2;Database=DWH; User Id=dwh; Password=P4ssw0rd"

        Dim cmd As New SqlCommand("IMPRIME_CFDI", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros


        con.Open() 'Abre la conexion
        Try
            cmd.ExecuteNonQuery()
            Mensage.Text = "Registro Ingresado con Exito..."
            'Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)


        Catch ex As Exception
            Mensage.Text = "Error no se Pudo Ingresar el Registro..."
            con.Close() ' Cierra la conexión
            ' Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)
        End Try


        Response.Redirect(“DWH_PEDIDOS_ATENDER.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)






    End Sub
End Class