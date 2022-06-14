Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security

Public Class DWH_PEDIDOS_MODIFICAR_SELECCIONA_LOGISTICA
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        USERNAME.Text = Request.QueryString(“userlpq”)
        NIVELUSU.Text = Request.QueryString(“nivellpq”)



        If USERNAME.Text = "" Then
            Response.Redirect("INICIO.aspx")
        End If

        Label17.Visible = False
        Label18.Visible = False
        Label19.Visible = False
        DropDownList1.Visible = False
        DropDownList2.Visible = False
        Button2.Visible = False


    End Sub




    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        Response.Redirect(“defaultAdmin.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)


    End Sub


    Protected Sub GridView3_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView3.SelectedIndexChanged


        Pedido.Visible = True

        Label17.Visible = True
        Label18.Visible = True
        Label19.Visible = True
        DropDownList1.Visible = True
        DropDownList2.Visible = True
        Button2.Visible = True


        Dim row As GridViewRow = GridView3.SelectedRow
        Pedido.Text = row.Cells(1).Text
        Destino.Text = row.Cells(5).Text
        DropDownList1.Text = row.Cells(7).Text
        DropDownList2.Text = row.Cells(9).Text




    End Sub

    Protected Sub Guardar1_Click(sender As Object, e As EventArgs) Handles Guardar1.Click

        Response.Redirect(“DWH_PEDIDOS_ATENDER_LOGISTICA.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click


        Dim con As New SqlConnection

        ' con.ConnectionString = "Server=LPQMOV01;Database=DWH;Trusted_Connection = yes;"
        con.ConnectionString = "Server=LPQDWH2;Database=DWH; User Id=dwh; Password=P4ssw0rd"

        Dim cmd As New SqlCommand("SP_MODIFICA_LOGISTICA", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros


        cmd.Parameters.AddWithValue("@USUARIO_ALTA", USERNAME.Text)
        cmd.Parameters.AddWithValue("@PEDIDO", Pedido.Text)
        cmd.Parameters.AddWithValue("@UNIDAD", DropDownList1.Text)
        cmd.Parameters.AddWithValue("@OPERADOR", DropDownList2.Text)
        cmd.Parameters.AddWithValue("@DESTINO", Destino.Text)


        con.Open() 'Abre la conexion
                                        Try
                                            cmd.ExecuteNonQuery()
                                            Mensage.Text = "Registro Ingresado con Exito..."


        Catch ex As Exception
                                            Mensage.Text = "Error no se Pudo Ingresar el Registro..."
                                            con.Close() ' Cierra la conexión

        End Try

        Response.Redirect(“DWH_PEDIDOS_MODIFICAR_SELECCIONA_LOGISTICA.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)



    End Sub






End Class