Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security

Public Class DWH_PEDIDOS_MODIFICAR
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        USERNAME.Text = Request.QueryString(“userlpq”)
        Pedido.Text = Request.QueryString(“pedido”)
        NIVELUSU.Text = Request.QueryString(“nivellpq”)



        If USERNAME.Text = "" Then
            Response.Redirect("INICIO.aspx")
        End If

        Label17.Visible = False
        lARTICULO.Visible = False
        art01.Visible = False
        Cantidad.Visible = False
        Lcant01.Visible = False
        Modificar.Visible = False
        ELIMINAR.Visible = False
        Agregar.Visible = True
        Art1.Visible = False
        Agreg.Visible = False
        Uembarque.Visible = False
        UNEMB.Visible = False
        Cantidad0.Visible = False
        Lcant01.Visible = False
        Lcant02.Visible = False
    End Sub

    Protected Sub Guardar_Click(sender As Object, e As EventArgs) Handles Modificar.Click


        Dim con As New SqlConnection

        ' con.ConnectionString = "Server=LPQMOV01;Database=DWH;Trusted_Connection = yes;"
        con.ConnectionString = "Server=LPQDWH2;Database=DWH; User Id=dwh; Password=P4ssw0rd"

        Dim cmd As New SqlCommand("SP_MODIFICA_ARTICULO_PEDIDO", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros


        cmd.Parameters.AddWithValue("@USUARIO_ALTA", USERNAME.Text)
        cmd.Parameters.AddWithValue("@PEDIDO", Pedido.Text)
        cmd.Parameters.AddWithValue("@ARTICULO", art01.Text)
        cmd.Parameters.AddWithValue("@CANTIDAD", Cantidad.Text)


        con.Open() 'Abre la conexion
        Try
            cmd.ExecuteNonQuery()
            Mensage.Text = "Registro modificado con Exito..."
            'Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)


        Catch ex As Exception
            Mensage.Text = "Error no se Pudo Modificar el Registro..."
            con.Close() ' Cierra la conexión
            ' Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)
        End Try


        Response.Redirect(“DWH_PEDIDOS_MODIFICAR.aspx?userlpq=” + USERNAME.Text + "&pedido=" + Pedido.Text + "&nivellpq=" + NIVELUSU.Text)



    End Sub


    Protected Sub GridView2_SelectedIndexChanging(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanging


        Label17.Visible = True
        Pedido.Visible = True

        lARTICULO.Visible = True
        art01.Visible = True
        Cantidad.Visible = True
        Lcant01.Visible = True
        Modificar.Visible = True
        ELIMINAR.Visible = True
        Agregar.Visible = True
        Mensage.Visible = True
        Art1.Visible = False
        Agreg.Visible = False
        Uembarque.Visible = False
        UNEMB.Visible = False
        Cantidad0.Visible = False
        Lcant01.Visible = False
        Lcant02.Visible = False
    End Sub


    Protected Sub GridView2_Sorting(sender As Object, e As EventArgs) Handles GridView2.Sorting

        Label17.Visible = True
        Pedido.Visible = True

        lARTICULO.Visible = True
        art01.Visible = True
        Cantidad.Visible = True
        Lcant01.Visible = True
        Modificar.Visible = True
        ELIMINAR.Visible = True
        Mensage.Visible = True
        Agregar.Visible = True
        Art1.Visible = False
        Agreg.Visible = False
        Uembarque.Visible = False
        UNEMB.Visible = False
        Cantidad0.Visible = False
        Lcant01.Visible = False
        Lcant02.Visible = False
    End Sub

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged


        Dim row As GridViewRow = GridView2.SelectedRow


        art01.Text = row.Cells(4).Text
        Cantidad.Text = row.Cells(5).Text

        Label17.Visible = True
        Pedido.Visible = True

        lARTICULO.Visible = True
        art01.Visible = True
        Cantidad.Visible = True
        Lcant01.Visible = True
        Modificar.Visible = True
        Agregar.Visible = True
        Mensage.Visible = True
        ELIMINAR.Visible = True
        Art1.Visible = False
        Agreg.Visible = False
        Uembarque.Visible = False
        UNEMB.Visible = False
        Cantidad0.Visible = False
        Lcant01.Visible = False
        Lcant02.Visible = False
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click



        Response.Redirect(“defaultAdmin.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)


    End Sub



    Protected Sub Guardar1_Click(sender As Object, e As EventArgs) Handles Guardar1.Click

        Response.Redirect(“DWH_PEDIDOS_MODIFICAR_SELECCIONA.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub

    Protected Sub Guardar2_Click(sender As Object, e As EventArgs) Handles Guardar2.Click


        Dim con As New SqlConnection

        ' con.ConnectionString = "Server=LPQMOV01;Database=DWH;Trusted_Connection = yes;"
        con.ConnectionString = "Server=LPQDWH2;Database=DWH; User Id=dwh; Password=P4ssw0rd"

        Dim cmd As New SqlCommand("SP_MODIFICA_PEDIDO_LIBERAR", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros


        cmd.Parameters.AddWithValue("@Usuario_Alta", USERNAME.Text)
        cmd.Parameters.AddWithValue("@Pedido", Pedido.Text)


        con.Open() 'Abre la conexion
        Try
            cmd.ExecuteNonQuery()
            Mensage.Text = "Registro modificado con Exito..."
            'Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)


        Catch ex As Exception
            Mensage.Text = "Error no se Pudo Modificar el Registro..."
            con.Close() ' Cierra la conexión
            ' Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)
        End Try


        Response.Redirect(“DWH_PEDIDOS_MODIFICAR.aspx?userlpq=” + USERNAME.Text + "&pedido=" + Pedido.Text + "&nivellpq=" + NIVELUSU.Text)



    End Sub

    Protected Sub Guardar3_Click(sender As Object, e As EventArgs) Handles ELIMINAR.Click


        Dim con As New SqlConnection

        ' con.ConnectionString = "Server=LPQMOV01;Database=DWH;Trusted_Connection = yes;"
        con.ConnectionString = "Server=LPQDWH2;Database=DWH; User Id=dwh; Password=P4ssw0rd"

        Dim cmd As New SqlCommand("SP_MODIFICA_PEDIDO_ELIMINAR", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros


        cmd.Parameters.AddWithValue("@Usuario_Alta", USERNAME.Text)
        cmd.Parameters.AddWithValue("@Pedido", Pedido.Text)
        cmd.Parameters.AddWithValue("@Articulo", art01.Text)


        con.Open() 'Abre la conexion
        Try
            cmd.ExecuteNonQuery()
            Mensage.Text = "Registro modificado con Exito..."
            'Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)


        Catch ex As Exception
            Mensage.Text = "Error no se Pudo Modificar el Registro..."
            con.Close() ' Cierra la conexión
            ' Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)
        End Try

        Response.Redirect(“DWH_PEDIDOS_MODIFICAR.aspx?userlpq=” + USERNAME.Text + "&pedido=" + Pedido.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub

    Protected Sub Agregar_Click(sender As Object, e As EventArgs) Handles Agregar.Click

        lARTICULO.Visible = True
        art01.Visible = False
        Art1.Visible = True
        Agreg.Visible = True
        Uembarque.Visible = True
        UNEMB.Visible = True
        Cantidad0.Visible = True
        Lcant01.Visible = False
        Lcant02.Visible = True

    End Sub

    Protected Sub Agreg_Click(sender As Object, e As EventArgs) Handles Agreg.Click



        Dim con As New SqlConnection

        ' con.ConnectionString = "Server=LPQMOV01;Database=DWH;Trusted_Connection = yes;"
        con.ConnectionString = "Server=LPQDWH2;Database=DWH; User Id=dwh; Password=P4ssw0rd"


        If Cantidad0.Text = "" Then

            Mensage.Text = "Debe de ingresar una cantidad para poder dar de alta el articulo nuevo"
            Cantidad0.Focus()


            lARTICULO.Visible = True
            art01.Visible = False
            Art1.Visible = True
            Agreg.Visible = True
            Uembarque.Visible = True
            UNEMB.Visible = True
            Cantidad0.Visible = True
            Lcant01.Visible = False
            Lcant02.Visible = True




        Else



            Dim cmd As New SqlCommand("SP_PEDIDO_AGREGAR_ARTICULO", con) 'nombre del procedimiento, conn es la cadena de conexion
            cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
            'envias los parametros


            cmd.Parameters.AddWithValue("@Usuario_Alta", USERNAME.Text)
            cmd.Parameters.AddWithValue("@Pedido", Pedido.Text)
            cmd.Parameters.AddWithValue("@Articulo", Art1.Text)
            cmd.Parameters.AddWithValue("@UnidadEmbarque", UNEMB.Text)
            cmd.Parameters.AddWithValue("@Cantidad", Cantidad0.Text)

            con.Open() 'Abre la conexion
            Try
                cmd.ExecuteNonQuery()
                Mensage.Text = "Registro modificado con Exito..."
                'Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)


            Catch ex As Exception
                Mensage.Text = "Error no se Pudo Modificar el Registro..."
                con.Close() ' Cierra la conexión
                ' Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)
            End Try

            Response.Redirect(“DWH_PEDIDOS_MODIFICAR.aspx?userlpq=” + USERNAME.Text + "&pedido=" + Pedido.Text + "&nivellpq=" + NIVELUSU.Text)


            lARTICULO.Visible = True
            art01.Visible = True
            Cantidad.Visible = True
            Lcant01.Visible = True
            Modificar.Visible = True
            Agregar.Visible = True
            Mensage.Visible = True
            ELIMINAR.Visible = True
            Art1.Visible = False
            Agreg.Visible = False
            Uembarque.Visible = False
            UNEMB.Visible = False
            Cantidad0.Visible = False
            Lcant01.Visible = False
            Lcant02.Visible = False
        End If

    End Sub

    Protected Sub Cantidad0_TextChanged(sender As Object, e As EventArgs) Handles Cantidad0.TextChanged

    End Sub
End Class