Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security

Public Class DWH_UNIDADES1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        USERNAME.Text = Request.QueryString(“userlpq”)
        NIVELUSU.Text = Request.QueryString(“nivellpq”)

        If USERNAME.Text = "" Then
            Response.Redirect("INICIO.aspx")
        End If

        Label15.Visible = False

        GridView2.Visible = True

        Label1.Visible = False
        Label2.Visible = False
        Label3.Visible = False
        Label4.Visible = False


        Label33.Visible = False
        Folio7.Visible = False

        Label6.Visible = False
        Label7.Visible = False
        Label8.Visible = False
        Label29.Visible = False
        Label10.Visible = False
        Label11.Visible = False
        Label12.Visible = False
        Label13.Visible = False
        Label30.Visible = False
        Label25.Visible = False
        Label26.Visible = False
        Label31.Visible = False
        ESTATUS.Visible = False
        Label34.Visible = False
        Label32.Visible = False
        Aseguradora.Visible = False

        Folio.Visible = False
        Unidad.Visible = False
        Modelo.Visible = False
        Folio5.Visible = False
        Folio6.Visible = False
        Marca.Visible = False
        Tcirculacion.Visible = False
        Placas.Visible = False


        Modelo.Visible = False
        Modelo.Visible = False
        NoSeguro.Visible = False
        Operador1.Visible = False
        Ruta1.Visible = False
        Ruta2.Visible = False
        Ruta3.Visible = False
        Ruta4.Visible = False
        Ruta5.Visible = False

        Cancelar.Visible = False
        Guardar.Visible = False

        Mensage.Visible = False

    End Sub


    Protected Sub GridView2_Sorted(sender As Object, e As EventArgs) Handles GridView2.Sorted

        Label15.Visible = True

        GridView2.Visible = True

        Label1.Visible = False
        Label2.Visible = False
        Label3.Visible = False
        Label4.Visible = False


        Label33.Visible = False
        Folio7.Visible = False

        Label6.Visible = False
        Label7.Visible = False
        Label8.Visible = False
        Label29.Visible = False
        Label10.Visible = False
        Label11.Visible = False
        Label12.Visible = False
        Label13.Visible = False
        Label30.Visible = False
        Label25.Visible = False
        Label26.Visible = False
        Label31.Visible = False
        ESTATUS.Visible = False
        Label34.Visible = False

        Label32.Visible = False
        Aseguradora.Visible = False

        Folio.Visible = False
        Unidad.Visible = False
        Modelo.Visible = False
        Folio5.Visible = False
        Folio6.Visible = False
        Marca.Visible = False
        Tcirculacion.Visible = False
        Placas.Visible = False


        Modelo.Visible = False
        Modelo.Visible = False
        NoSeguro.Visible = False
        Operador1.Visible = False
        Ruta1.Visible = False
        Ruta2.Visible = False
        Ruta3.Visible = False
        Ruta4.Visible = False
        Ruta5.Visible = False

        Button3.Visible = True
        Button4.Visible = True
        Mensage.Visible = False

    End Sub


    Protected Sub GridView2_PageIndexChanged(sender As Object, e As EventArgs) Handles GridView2.PageIndexChanged


        Label15.Visible = False

        GridView2.Visible = True

        Label1.Visible = False
        Label2.Visible = False
        Label3.Visible = False
        Label4.Visible = False


        Label33.Visible = False
        Folio7.Visible = False

        Label6.Visible = False
        Label7.Visible = False
        Label8.Visible = False
        Label29.Visible = False
        Label10.Visible = False
        Label11.Visible = False
        Label12.Visible = False
        Label13.Visible = False
        Label30.Visible = False
        Label25.Visible = False
        Label26.Visible = False
        Label31.Visible = False
        ESTATUS.Visible = False

        Label32.Visible = False
        Aseguradora.Visible = False

        Folio.Visible = False
        Unidad.Visible = False
        Modelo.Visible = False
        Folio5.Visible = False
        Folio6.Visible = False
        Marca.Visible = False
        Tcirculacion.Visible = False
        Placas.Visible = False
        Label34.Visible = False

        Modelo.Visible = False
        Modelo.Visible = False
        NoSeguro.Visible = False
        Operador1.Visible = False
        Ruta1.Visible = False
        Ruta2.Visible = False
        Ruta3.Visible = False
        Ruta4.Visible = False
        Ruta5.Visible = False

        Guardar.Visible = False
        Cancelar.Visible = False

        Button3.Visible = True
        Button4.Visible = True

        Mensage.Visible = False

    End Sub




    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged

        Label15.Visible = False

        GridView2.Visible = False

        Label1.Visible = True
        Label2.Visible = True
        Label3.Visible = True
        Label4.Visible = True


        Label33.Visible = True
        Folio7.Visible = True

        Label6.Visible = True
        Label7.Visible = True
        Label8.Visible = True
        Label29.Visible = True
        Label10.Visible = True
        Label11.Visible = True
        Label12.Visible = True
        Label13.Visible = True
        Label30.Visible = True
        Label25.Visible = True
        Label26.Visible = True
        Label31.Visible = True
        ESTATUS.Visible = True

        Label32.Visible = True
        Aseguradora.Visible = True

        Folio.Visible = True
        Unidad.Visible = True
        Modelo.Visible = True
        Folio5.Visible = True
        Folio6.Visible = True
        Marca.Visible = True
        Tcirculacion.Visible = True
        Placas.Visible = True
        Label34.Visible = True

        Modelo.Visible = True
        Modelo.Visible = True
        NoSeguro.Visible = True
        Operador1.Visible = True
        Ruta1.Visible = True
        Ruta2.Visible = True
        Ruta3.Visible = True
        Ruta4.Visible = True
        Ruta5.Visible = True

        Button3.Visible = False
        Button4.Visible = False

        Guardar.Visible = True
        Cancelar.Visible = True

        Mensage.Visible = False


        Dim row As GridViewRow = GridView2.SelectedRow
        Folio.Text = row.Cells(1).Text
        Unidad.Text = row.Cells(1).Text
        Placas.Text = row.Cells(2).Text
        Folio7.Text = row.Cells(3).Text

        NoSeguro.Text = row.Cells(4).Text
        Aseguradora.Text = row.Cells(5).Text
        Folio5.Text = row.Cells(6).Text
        Folio6.Text = row.Cells(7).Text
        Marca.Text = row.Cells(8).Text
        Modelo.Text = row.Cells(9).Text

        Tcirculacion.Text = row.Cells(10).Text
        Operador1.Text = row.Cells(16).Text


        Ruta1.Text = row.Cells(11).Text
        Ruta2.Text = row.Cells(12).Text
        Ruta3.Text = row.Cells(13).Text
        Ruta4.Text = row.Cells(14).Text
        Ruta5.Text = row.Cells(15).Text

        'Folio6.Text = row.Cells(15).Text

        ESTATUS.Text = row.Cells(17).Text

    End Sub

    Protected Sub Guardar_Click(sender As Object, e As EventArgs) Handles Guardar.Click

        Mensage.Visible = True



        Dim con As New SqlConnection

        ' con.ConnectionString = "Server=LPQMOV01;Database=DWH;Trusted_Connection = yes;"
        con.ConnectionString = "Server=LPQDWH2;Database=DWH; User Id=dwh; Password=P4ssw0rd"

        Dim cmd As New SqlCommand("SP_CAMIONETAS_CAMBIOS", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros


        If Modelo.Text = "" Then
            Mensage.Text = "Debe ingresar el Modelo de la Camioneta..."
            Modelo.Focus()
        Else
            If Placas.Text = "" Then
                Mensage.Text = "Debe ingresar las Placas de la Camioneta..."
                Placas.Focus()
            Else

                If Marca.Text = "" Then
                    Mensage.Text = "Debe ingresar la Marca de la Camioneta..."
                    Marca.Focus()
                Else
                    If Tcirculacion.Text = "" Then
                        Mensage.Text = "Debe ingresar el Numero de Tarjeta de Circulación..."
                        Tcirculacion.Focus()
                    Else
                        If Folio6.Text = "" Then
                            Mensage.Text = "Debe ingresar el Vigencia..."
                            Folio6.Focus()
                        Else
                            If Folio5.Text = "" Then
                                Mensage.Text = "Debe ingresar el Lugar de Expedición..."
                                Folio5.Focus()
                            Else
                                If NoSeguro.Text = "" Then
                                    Mensage.Text = "Debe ingresar el Numero de Seguro..."
                                    NoSeguro.Focus()
                                Else
                                    If Aseguradora.Text = "" Then
                                        Mensage.Text = "Debe ingresar la Aseguradora..."
                                        Aseguradora.Focus()
                                    Else


                                        cmd.Parameters.AddWithValue("@Unidad", Unidad.Text)
                                        cmd.Parameters.AddWithValue("@Modelo", Modelo.Text)
                                        cmd.Parameters.AddWithValue("@Placas", Placas.Text)
                                        cmd.Parameters.AddWithValue("@Marca", Marca.Text)
                                        cmd.Parameters.AddWithValue("@Vigencia", Folio7.Text)
                                        cmd.Parameters.AddWithValue("@Vigencia1", Folio6.Text)
                                        cmd.Parameters.AddWithValue("@NoSeguro", NoSeguro.Text)

                                        cmd.Parameters.AddWithValue("@Tarjeta", Tcirculacion.Text)
                                        cmd.Parameters.AddWithValue("@Expedida", Folio5.Text)

                                        cmd.Parameters.AddWithValue("@Aseguradora", Aseguradora.Text)
                                        cmd.Parameters.AddWithValue("@Operador", Operador1.Text)
                                        cmd.Parameters.AddWithValue("@Ruta1", Ruta1.Text)
                                        cmd.Parameters.AddWithValue("@Ruta2", Ruta2.Text)
                                        cmd.Parameters.AddWithValue("@Ruta3", Ruta3.Text)
                                        cmd.Parameters.AddWithValue("@Ruta4", Ruta4.Text)
                                        cmd.Parameters.AddWithValue("@Ruta5", Ruta5.Text)
                                        cmd.Parameters.AddWithValue("@Estatus", ESTATUS.Text)
                                        cmd.Parameters.AddWithValue("@Usuario_Modifica", USERNAME.Text)


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

                                    End If
                                End If
                            End If
                        End If
                    End If
                End If
            End If
        End If


        Response.Redirect(“DWH_UNIDADES.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)







    End Sub

    Protected Sub Cancelar_Click(sender As Object, e As EventArgs) Handles Cancelar.Click


        Label15.Visible = True

        GridView2.Visible = True

        Label1.Visible = False
        Label2.Visible = False
        Label3.Visible = False
        Label4.Visible = False

        Label33.Visible = False
        Folio7.Visible = False

        Label6.Visible = False
        Label7.Visible = False
        Label8.Visible = False
        Label29.Visible = False
        Label10.Visible = False
        Label11.Visible = False
        Label12.Visible = False
        Label13.Visible = False
        Label30.Visible = False
        Label25.Visible = False
        Label26.Visible = False
        Label31.Visible = False
        ESTATUS.Visible = False

        Label32.Visible = False
        Aseguradora.Visible = False

        Folio.Visible = False
        Unidad.Visible = False
        Modelo.Visible = False
        Folio5.Visible = False
        Folio6.Visible = False
        Marca.Visible = False
        Tcirculacion.Visible = False
        Placas.Visible = False

        Label34.Visible = False
        Modelo.Visible = False
        Modelo.Visible = False
        NoSeguro.Visible = False
        Operador1.Visible = False
        Ruta1.Visible = False
        Ruta2.Visible = False
        Ruta3.Visible = False
        Ruta4.Visible = False
        Ruta5.Visible = False

        Cancelar.Visible = False
        Guardar.Visible = False

        Button3.Visible = True
        Button4.Visible = True


    End Sub




    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

        Response.Redirect(“DefaultAdmin.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click

        Response.Redirect(“ALTAUNIDADES.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub
End Class