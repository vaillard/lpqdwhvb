Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security

Public Class ALTAUSUARIOS
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

        Dim cmd As New SqlCommand("SP_USUARIOS_ALTA", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros


        If Usuario.Text = "" Then

            Mensage.Text = "Debe ingresar el nombre de Usuario..."

            Usuario.Focus()


        Else


            If Contrasena.Text = "" Then

                Mensage.Text = "Debe ingresar la contraseña..."

                Contrasena.Focus()


            Else


                If ContrasenaV.Text = "" Then

                    Mensage.Text = "Debe ingresar la  contraseña otra vez..."

                    ContrasenaV.Focus()


                Else


                    If Contrasena.Text <> ContrasenaV.Text Then

                        Mensage.Text = "Existen diferencias en la contraseña"

                        Contrasena.Focus()
                        ContrasenaV.Text = ""

                    Else


                        If Nombre.Text = "" Then

                            Mensage.Text = "Debe ingresar el nombre del usuario..."

                            Nombre.Focus()


                        Else



                            If Aparterno.Text = "" Then

                                Mensage.Text = "Debe ingresar el apellido paterno del usuario..."

                                Aparterno.Focus()


                            Else


                                If Amaterno.Text = "" Then

                                    Mensage.Text = "Debe ingresar el apellido materno del usuario..."

                                    Amaterno.Focus()


                                Else




                                    If Area.Text = "" Then

                                        Mensage.Text = "Debe ingresar el area o departamento del usuario..."

                                        Area.Focus()


                                    Else


                                        cmd.Parameters.AddWithValue("@USUARIO", Usuario.Text)
                                        cmd.Parameters.AddWithValue("@CONTRASENA", Contrasena.Text)
                                        cmd.Parameters.AddWithValue("@TIPO_USUARIO", Nivel.Text)
                                        cmd.Parameters.AddWithValue("@USUARIO_ALTA", USERNAME.Text)
                                        cmd.Parameters.AddWithValue("@NOMBRE", Nombre.Text)
                                        cmd.Parameters.AddWithValue("@APATERNO", Aparterno.Text)
                                        cmd.Parameters.AddWithValue("@AMATERNO", Amaterno.Text)
                                        cmd.Parameters.AddWithValue("@AREA", Area.Text)

                                        con.Open() 'Abre la conexion
                                        Try
                                            cmd.ExecuteNonQuery()
                                            Mensage.Text = "Registro Ingresado con Exito..."
                                            'Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)

                                            Usuario.Text = ""
                                            Contrasena.Text = ""
                                            ContrasenaV.Text = ""
                                            Nombre.Text = ""
                                            Aparterno.Text = ""
                                            Amaterno.Text = ""
                                            Area.Text = ""

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
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click



        ' Response.Redirect("defaultAdmin.aspx")

        Response.Redirect(“DWH_USUARIOS.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)


    End Sub


End Class