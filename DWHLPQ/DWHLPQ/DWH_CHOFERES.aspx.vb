Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security

Public Class DWHCHOFERES
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        USERNAME.Text = Request.QueryString(“userlpq”)
        NIVELUSU.Text = Request.QueryString(“nivellpq”)

        If USERNAME.Text = "" Then
            Response.Redirect("INICIO.aspx")
        End If


        GridView2.Visible = True
        Label15.Visible = False

        Label1.Visible = False
        Label17.Visible = False
        Label18.Visible = False
        Label19.Visible = False
        Label20.Visible = False
        Label21.Visible = False
        Label22.Visible = False
        Label23.Visible = False
        Label24.Visible = False
        Label25.Visible = False

        Nombre.Visible = False
        ApellidoPaterno.Visible = False
        ApellidoMaterno.Visible = False
        RFC.Visible = False
        NoSEGUROSOCIAL.Visible = False
        NoLICENCIA.Visible = False
        VIGENCIA.Visible = False
        TIPOLICENCIA.Visible = False
        ESTATUS.Visible = False
        NoChofer.Visible = False


        Guardar.Visible = False
        Cancelar.Visible = False

        Mensage.Visible = True

    End Sub


    Protected Sub GridView2_SelectedIndexSorting(sender As Object, e As EventArgs) Handles GridView2.Sorting


        GridView2.Visible = True
        Label15.Visible = True


        Label1.Visible = False
        Label17.Visible = False
        Label18.Visible = False
        Label19.Visible = False
        Label20.Visible = False
        Label21.Visible = False
        Label22.Visible = False
        Label23.Visible = False
        Label24.Visible = False
        Label25.Visible = False

        Nombre.Visible = False
        ApellidoPaterno.Visible = False
        ApellidoMaterno.Visible = False
        RFC.Visible = False
        NoSEGUROSOCIAL.Visible = False
        NoLICENCIA.Visible = False
        VIGENCIA.Visible = False
        TIPOLICENCIA.Visible = False
        ESTATUS.Visible = False
        NoChofer.Visible = False


        Guardar.Visible = False
        Cancelar.Visible = False



    End Sub

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged


        GridView2.Visible = False
        Label15.Visible = False


        Label15.Visible = True

        Label1.Visible = True
        Label17.Visible = True
        Label18.Visible = True
        Label19.Visible = True
        Label20.Visible = True
        Label21.Visible = True
        Label22.Visible = True
        Label23.Visible = True
        Label24.Visible = True
        Label25.Visible = True

        Nombre.Visible = True
        ApellidoPaterno.Visible = True
        ApellidoMaterno.Visible = True
        RFC.Visible = True
        NoSEGUROSOCIAL.Visible = True
        NoLICENCIA.Visible = True
        VIGENCIA.Visible = True
        TIPOLICENCIA.Visible = True
        ESTATUS.Visible = True
        NoChofer.Visible = True


        Dim row As GridViewRow = GridView2.SelectedRow

        NoChofer.Text = row.Cells(1).Text
        ApellidoPaterno.Text = row.Cells(2).Text
        ApellidoMaterno.Text = row.Cells(3).Text
        Nombre.Text = row.Cells(4).Text
        RFC.Text = row.Cells(5).Text
        VIGENCIA.Text = row.Cells(6).Text
        NoSEGUROSOCIAL.Text = row.Cells(7).Text
        NoLICENCIA.Text = row.Cells(8).Text
        TIPOLICENCIA.Text = row.Cells(9).Text
        ESTATUS.Text = row.Cells(10).Text


        Button3.Visible = False
        Button4.Visible = False


        Guardar.Visible = True
        Cancelar.Visible = True

    End Sub



    Protected Sub GridView2_SelectedPageIndexChanging(sender As Object, e As EventArgs) Handles GridView2.PageIndexChanging



        GridView2.Visible = True
        Label15.Visible = True


        Label1.Visible = False
        Label17.Visible = False
        Label18.Visible = False
        Label19.Visible = False
        Label20.Visible = False
        Label21.Visible = False
        Label22.Visible = False
        Label23.Visible = False
        Label24.Visible = False
        Label25.Visible = False

        Nombre.Visible = False
        ApellidoPaterno.Visible = False
        ApellidoMaterno.Visible = False
        RFC.Visible = False
        NoSEGUROSOCIAL.Visible = False
        NoLICENCIA.Visible = False
        VIGENCIA.Visible = False
        TIPOLICENCIA.Visible = False
        ESTATUS.Visible = False
        NoChofer.Visible = False


        Guardar.Visible = False
        Cancelar.Visible = False

    End Sub



    Protected Sub Cancelar_Click(sender As Object, e As EventArgs) Handles Cancelar.Click



        GridView2.Visible = True
        Label15.Visible = True

        Label1.Visible = False
        Label17.Visible = False
        Label18.Visible = False
        Label19.Visible = False
        Label20.Visible = False
        Label21.Visible = False
        Label22.Visible = False
        Label23.Visible = False
        Label24.Visible = False
        Label25.Visible = False

        Nombre.Visible = False
        ApellidoPaterno.Visible = False
        ApellidoMaterno.Visible = False
        RFC.Visible = False
        NoSEGUROSOCIAL.Visible = False
        NoLICENCIA.Visible = False
        VIGENCIA.Visible = False
        TIPOLICENCIA.Visible = False
        ESTATUS.Visible = False
        NoChofer.Visible = False


        Nombre.Text = ""
        ApellidoPaterno.Text = ""
        ApellidoMaterno.Text = ""
        RFC.Text = ""
        NoSEGUROSOCIAL.Text = ""
        NoLICENCIA.Text = ""




        Guardar.Visible = False
        Cancelar.Visible = False


        Button3.Visible = True
        Button4.Visible = True


    End Sub



    Protected Sub Guardar_Click(sender As Object, e As EventArgs) Handles Guardar.Click


        Dim con As New SqlConnection

        ' con.ConnectionString = "Server=LPQMOV01;Database=DWH;Trusted_Connection = yes;"
        con.ConnectionString = "Server=LPQDWH2;Database=DWH; User Id=dwh; Password=P4ssw0rd"

        Dim cmd As New SqlCommand("SP_CHOFERES_CAMBIOS", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros


        If Nombre.Text = "" Then
            Mensage.Text = "Debe ingresar el nombre del chofer..."
            Nombre.Focus()
        Else
            If ApellidoPaterno.Text = "" Then
                Mensage.Text = "Debe ingresar el apellido paterno del chofer..."
                ApellidoPaterno.Focus()
            Else
                If ApellidoMaterno.Text = "" Then
                    Mensage.Text = "Debe ingresar el apellido materno del chofer..."
                    ApellidoMaterno.Focus()
                Else
                    If RFC.Text = "" Then
                        Mensage.Text = "Debe ingresar el RFC..."
                        RFC.Focus()
                    Else
                        If NoSEGUROSOCIAL.Text = "" Then
                            Mensage.Text = "Debe ingresar el NoSeguro..."
                            NoSEGUROSOCIAL.Focus()
                        Else
                            If NoLICENCIA.Text = "" Then
                                Mensage.Text = "Debe ingresar el NoLicencia..."
                                NoLICENCIA.Focus()
                            Else
                                If VIGENCIA.Text = "" Then
                                    Mensage.Text = "Debe ingresar el Vigencia..."
                                    VIGENCIA.Focus()
                                Else
                                    cmd.Parameters.AddWithValue("@Nochofer", NoChofer.Text)
                                    cmd.Parameters.AddWithValue("@USUARIO_ALTA", USERNAME.Text)
                                    cmd.Parameters.AddWithValue("@Nombres", Nombre.Text)
                                    cmd.Parameters.AddWithValue("@Estatus", ESTATUS.Text)
                                    cmd.Parameters.AddWithValue("@Apaterno", ApellidoPaterno.Text)
                                    cmd.Parameters.AddWithValue("@Amaterno", ApellidoMaterno.Text)
                                    cmd.Parameters.AddWithValue("@RFC", RFC.Text)
                                    cmd.Parameters.AddWithValue("@NoSeguro", NoSEGUROSOCIAL.Text)
                                    cmd.Parameters.AddWithValue("@TipoLicencia", TIPOLICENCIA.Text)
                                    cmd.Parameters.AddWithValue("@NoLicencia", NoLICENCIA.Text)
                                    cmd.Parameters.AddWithValue("@Vigencia", VIGENCIA.Text)


                                    con.Open() 'Abre la conexion
                                    Try
                                        cmd.ExecuteNonQuery()
                                        Mensage.Text = "Registro Ingresado con Exito..."
                                        'Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)

                                        Nombre.Text = ""
                                        ApellidoPaterno.Text = ""
                                        ApellidoMaterno.Text = ""
                                        RFC.Text = ""
                                        TIPOLICENCIA.Text = ""
                                        NoSEGUROSOCIAL.Text = ""
                                        VIGENCIA.Text = ""


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



        Response.Redirect(“DWH_CHOFERES.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)


        Mensage.Visible = True

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click


        Response.Redirect(“DefaultAdmin.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)


    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click

        Response.Redirect(“ALTACHOFERES.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub


End Class