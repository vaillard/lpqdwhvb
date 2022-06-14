Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security


Public Class DWH_CHOFERES
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

        Dim cmd As New SqlCommand("SP_CHOFERES_ALTA", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros


        If Nombres.Text = "" Then
            Mensage.Text = "Debe ingresar el nombre del chofer..."
            Nombres.Focus()
        Else
            If Apaterno.Text = "" Then
                Mensage.Text = "Debe ingresar el apellido paterno del chofer..."
                Apaterno.Focus()
            Else
                If Amaterno.Text = "" Then
                    Mensage.Text = "Debe ingresar el apellido materno del chofer..."
                    Amaterno.Focus()
                Else
                    If RFC.Text = "" Then
                        Mensage.Text = "Debe ingresar el RFC..."
                        RFC.Focus()
                    Else
                        If NoSeguro.Text = "" Then
                            Mensage.Text = "Debe ingresar el NoSeguro..."
                            NoSeguro.Focus()
                        Else
                            If NoLicencia.Text = "" Then
                                Mensage.Text = "Debe ingresar el NoLicencia..."
                                NoLicencia.Focus()
                            Else
                                If Vigencia.Text = "" Then
                                    Mensage.Text = "Debe ingresar el Vigencia..."
                                    Vigencia.Focus()
                                Else
                                    cmd.Parameters.AddWithValue("@USUARIO_ALTA", USERNAME.Text)
                                    cmd.Parameters.AddWithValue("@Nombres", Nombres.Text)
                                    cmd.Parameters.AddWithValue("@Apaterno", Apaterno.Text)
                                    cmd.Parameters.AddWithValue("@Amaterno", Amaterno.Text)
                                    cmd.Parameters.AddWithValue("@RFC", RFC.Text)
                                    cmd.Parameters.AddWithValue("@NoSeguro", NoSeguro.Text)
                                    cmd.Parameters.AddWithValue("@TipoLicencia", TipoLicencia.Text)
                                    cmd.Parameters.AddWithValue("@NoLicencia", NoLicencia.Text)
                                    cmd.Parameters.AddWithValue("@Vigencia", Vigencia.Text)


                                    con.Open() 'Abre la conexion
                                    Try
                                        cmd.ExecuteNonQuery()
                                        Mensage.Text = "Registro Ingresado con Exito..."
                                        'Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)

                                        Nombres.Text = ""
                                        Apaterno.Text = ""
                                        Amaterno.Text = ""
                                        RFC.Text = ""
                                        NoSeguro.Text = ""
                                        TipoLicencia.Text = ""
                                        NoSeguro.Text = ""
                                        Vigencia.Text = ""


                                    Catch ex As Exception
                                        Mensage.Text = "Error no se Pudo Ingresar el Registro..."
                                        con.Close() ' Cierra la conexión
                                        ' Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)
                                    End Try

                                End If
                            End If
                        End If
                    End If
                End If
            End If
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        Nombres.Text = ""
        Apaterno.Text = ""
        Amaterno.Text = ""
        RFC.Text = ""
        NoSeguro.Text = ""
        TipoLicencia.Text = ""
        NoSeguro.Text = ""
        Vigencia.Text = ""


    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click


        Response.Redirect(“DWH_CHOFERES.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)


    End Sub

    Protected Sub Mensage_TextChanged(sender As Object, e As EventArgs) Handles Mensage.TextChanged

    End Sub
End Class