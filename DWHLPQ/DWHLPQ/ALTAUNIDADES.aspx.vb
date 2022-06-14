Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security


Public Class DWH_UNIDADES
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        USERNAME.Text = Request.QueryString(“userlpq”)
        NIVELUSU.Text = Request.QueryString(“nivellpq”)

        If USERNAME.Text = "" Then
            Response.Redirect("INICIO.aspx")
        End If
    End Sub




    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection

        ' con.ConnectionString = "Server=LPQMOV01;Database=DWH;Trusted_Connection = yes;"
        con.ConnectionString = "Server=LPQDWH2;Database=DWH; User Id=dwh; Password=P4ssw0rd"

        Dim cmd As New SqlCommand("SP_CAMIONETAS_ALTA", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros


        If Modelo.Text = "" Then

            Mensage.Text = "Debe ingresar el modelo del vehiculo..."

            Modelo.Focus()


        Else


            If Placas.Text = "" Then

                Mensage.Text = "Debe ingresar el numero de  placas del  vehiculo..."

                Placas.Focus()


            Else


                If Marca.Text = "" Then

                    Mensage.Text = "Debe ingresar la  Marca del vehiculo..."

                    Marca.Focus()


                Else

                    cmd.Parameters.AddWithValue("@Modelo", Modelo.Text)
                    cmd.Parameters.AddWithValue("@Placas", Placas.Text)
                    cmd.Parameters.AddWithValue("@Marca", Marca.Text)
                    cmd.Parameters.AddWithValue("@Tarjeta", Tarjeta.Text)
                    cmd.Parameters.AddWithValue("@Vigencia", Vigencia.Text)
                    cmd.Parameters.AddWithValue("@Expedida", Expedida.Text)
                    cmd.Parameters.AddWithValue("@NoSeguro", NoSeguro.Text)
                    cmd.Parameters.AddWithValue("@Aseguradora", Aseguradora.Text)
                    cmd.Parameters.AddWithValue("@Ruta1", Ruta1.Text)
                    cmd.Parameters.AddWithValue("@Ruta2", Ruta2.Text)
                    cmd.Parameters.AddWithValue("@Ruta3", Ruta3.Text)
                    cmd.Parameters.AddWithValue("@Ruta4", Ruta4.Text)
                    cmd.Parameters.AddWithValue("@Ruta5", Ruta5.Text)
                    cmd.Parameters.AddWithValue("@Operador", Oper1.Text)
                    cmd.Parameters.AddWithValue("@Usuario_Alta", USERNAME.Text)


                    con.Open() 'Abre la conexion
                    Try
                        cmd.ExecuteNonQuery()
                        Mensage.Text = "Registro Ingresado con Exito..."
                        'Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)

                        Modelo.Text = ""
                        Placas.Text = ""
                        Marca.Text = ""
                        Tarjeta.Text = ""
                        Aseguradora.Text = ""
                        NoSeguro.Text = ""
                        Aseguradora.Text = ""
                        Vigencia.Text = ""
                        Expedida.Text = ""

                    Catch ex As Exception
                        Mensage.Text = "Error no se Pudo Ingresar el Registro..."
                        con.Close() ' Cierra la conexión
                        ' Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)
                    End Try

                End If
            End If
        End If


    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        Modelo.Text = ""
        Placas.Text = ""
        Marca.Text = ""
        Tarjeta.Text = ""
        Aseguradora.Text = ""
        NoSeguro.Text = ""
        Aseguradora.Text = ""
        Vigencia.Text = ""
        Expedida.Text = ""

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click


        Response.Redirect(“DWH_UNIDADES.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)



    End Sub
End Class
