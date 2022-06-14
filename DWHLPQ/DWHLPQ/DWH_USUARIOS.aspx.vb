Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security


Public Class DWH_USUARIOS
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        USERNAME.Text = Request.QueryString(“userlpq”)
        NIVELUSU.Text = Request.QueryString(“nivellpq”)


        If USERNAME.Text = "" Then
            Response.Redirect("INICIO.aspx")
        End If

        Folio.Visible = False
        Label15.Visible = False
        GridView2.Visible = True

        Label10.Visible = False
        TextBox1.Visible = False

        Label11.Visible = False
        TextBox2.Visible = False

        Label21.Visible = False

        Label4.Visible = False
        Nivel0.Visible = False

        Label13.Visible = False
        Button5.Visible = False

        Nivel.Visible = False

        Label17.Visible = False
        Label18.Visible = False
        Label19.Visible = False
        Label20.Visible = False


        Nombre.Visible = False
        AMaterno.Visible = False
        APaterno.Visible = False
        Area.Visible = False

        Mensage.Visible = False

        Button7.Visible = False

    End Sub





    Protected Sub GridView2_SelectedSorting(sender As Object, e As EventArgs) Handles GridView2.Sorting




        Label15.Visible = True
        Folio.Visible = False
        GridView2.Visible = True
        Label21.Visible = False

        Label10.Visible = False
        TextBox1.Visible = False

        Label11.Visible = False
        TextBox2.Visible = False

        Label4.Visible = False
        Nivel0.Visible = False

        Button5.Visible = False
        Nivel.Visible = False

        Label13.Visible = False

        Label17.Visible = False
        Label18.Visible = False
        Label19.Visible = False
        Label20.Visible = False


        Nombre.Visible = False
        AMaterno.Visible = False
        APaterno.Visible = False
        Area.Visible = False

        Button7.Visible = False



    End Sub


    Protected Sub GridView2_SelectedIndexChanging(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanging



        Label15.Visible = True
        Folio.Visible = False
        GridView2.Visible = True
        Label21.Visible = False

        Label10.Visible = False
        TextBox1.Visible = False

        Label11.Visible = False
        TextBox2.Visible = False

        Label4.Visible = False
        Nivel0.Visible = False

        Button5.Visible = False
        Nivel.Visible = False

        Label13.Visible = False

        Label17.Visible = False
        Label18.Visible = False
        Label19.Visible = False
        Label20.Visible = False


        Nombre.Visible = False
        AMaterno.Visible = False
        APaterno.Visible = False
        Area.Visible = False

        Button7.Visible = False


    End Sub



    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged


        Label15.Visible = False
        Folio.Visible = True
        GridView2.Visible = False

        Label10.Visible = True
        TextBox1.Visible = True

        Label11.Visible = True
        TextBox2.Visible = True
        Label21.Visible = True

        Label4.Visible = True
        Nivel0.Visible = True

        Button5.Visible = True
        Nivel.Visible = True

        Label13.Visible = True

        Nombre.Visible = True
        APaterno.Visible = True
        AMaterno.Visible = True
        Area.Visible = True


        Label17.Visible = True
        Label18.Visible = True
        Label19.Visible = True
        Label20.Visible = True



        Dim row As GridViewRow = GridView2.SelectedRow

        Folio.Text = row.Cells(1).Text
        TextBox1.Text = row.Cells(2).Text
        TextBox2.Text = row.Cells(3).Text
        APaterno.Text = row.Cells(4).Text
        AMaterno.Text = row.Cells(5).Text
        Nombre.Text = row.Cells(6).Text
        Area.Text = row.Cells(7).Text
        Nivel.Text = row.Cells(8).Text
        Nivel0.Text = row.Cells(9).Text






        Label10.Visible = True
        TextBox1.Visible = True

        Label11.Visible = True
        TextBox2.Visible = True

        Label4.Visible = True
        Nivel0.Visible = True

        Button5.Visible = True
        Nivel.Visible = True

        Label13.Visible = True



        Label17.Visible = True
        Label18.Visible = True
        Label19.Visible = True
        Label20.Visible = True


        Nombre.Visible = True
        AMaterno.Visible = True
        APaterno.Visible = True
        Area.Visible = True

        Button7.Visible = True


        Button3.Visible = False
        Button4.Visible = False




    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click




        Label15.Visible = False
        GridView2.Visible = False
        Folio.Visible = False

        Label10.Visible = False
        TextBox1.Visible = False

        Label11.Visible = False
        TextBox2.Visible = False

        Label21.Visible = False

        Label4.Visible = False
        Nivel0.Visible = False

        Label13.Visible = False
        Button5.Visible = False

        Nivel.Visible = False

        Label17.Visible = False
        Label18.Visible = False
        Label19.Visible = False
        Label20.Visible = False


        Nombre.Visible = False
        AMaterno.Visible = False
        APaterno.Visible = False
        Area.Visible = False
        Mensage.Visible = False


        Dim con As New SqlConnection

        ' con.ConnectionString = "Server=LPQMOV01;Database=DWH;Trusted_Connection = yes;"
        con.ConnectionString = "Server=LPQDWH2;Database=DWH; User Id=dwh; Password=P4ssw0rd"

        Dim cmd As New SqlCommand("SP_USUARIOS_CAMBIOS", con) 'nombre del procedimiento, conn es la cadena de conexion
        cmd.CommandType = CommandType.StoredProcedure 'especificas que se ejecutara un procedimiento
        'envias los parametros






        If TextBox2.Text = "" Then

            Mensage.Text = "Debe ingresar la contraseña..."

            TextBox2.Focus()


        Else




            If Nombre.Text = "" Then

                Mensage.Text = "Debe ingresar el nombre del usuario..."

                Nombre.Focus()


            Else



                If APaterno.Text = "" Then

                    Mensage.Text = "Debe ingresar el apellido paterno del usuario..."

                    APaterno.Focus()


                Else


                    If AMaterno.Text = "" Then

                        Mensage.Text = "Debe ingresar el apellido materno del usuario..."

                        AMaterno.Focus()


                    Else




                        If Area.Text = "" Then

                            Mensage.Text = "Debe ingresar el area o departamento del usuario..."

                            Area.Focus()


                        Else

                            cmd.Parameters.AddWithValue("@FOLIO", Folio.Text)
                            cmd.Parameters.AddWithValue("@USUARIO", TextBox1.Text)
                            cmd.Parameters.AddWithValue("@CONTRASENA", TextBox2.Text)
                            cmd.Parameters.AddWithValue("@TIPO_USUARIO", Nivel.Text)
                            cmd.Parameters.AddWithValue("@USUARIO_ALTA", USERNAME.Text)
                            cmd.Parameters.AddWithValue("@NOMBRE", Nombre.Text)
                            cmd.Parameters.AddWithValue("@APATERNO", APaterno.Text)
                            cmd.Parameters.AddWithValue("@AMATERNO", AMaterno.Text)
                            cmd.Parameters.AddWithValue("@AREA", Area.Text)
                            cmd.Parameters.AddWithValue("@ESTATUS", Nivel0.Text)

                            con.Open() 'Abre la conexion
                            Try
                                cmd.ExecuteNonQuery()
                                Mensage.Text = "Registro Ingresado con Exito..."
                                'Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)



                            Catch ex As Exception
                                Mensage.Text = "Error no se Pudo Ingresar el Registro, Revise que el usuario no exista..."
                                con.Close() ' Cierra la conexión
                                ' Response.Redirect(“Default.aspx?userlpq=” + USERNAME.Text)
                            End Try

                        End If
                    End If
                End If
            End If
        End If


        Mensage.Visible = False
        Folio.Visible = False


        Label15.Visible = False


        GridView2.Visible = False

        Label10.Visible = False
        TextBox1.Visible = False

        Label11.Visible = False
        TextBox2.Visible = False
        Label21.Visible = False

        Label4.Visible = False
        Nivel0.Visible = False

        Label13.Visible = False
        Button5.Visible = False

        Nivel.Visible = False

        Label17.Visible = False
        Label18.Visible = False
        Label19.Visible = False
        Label20.Visible = False


        Nombre.Visible = False
        AMaterno.Visible = False
        APaterno.Visible = False
        Area.Visible = False

        Mensage.Visible = False

        Button7.Visible = False

        Button3.Visible = True
        Button4.Visible = True



        Response.Redirect(“DWH_USUARIOS.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)


    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click


        Response.Redirect(“ALTAUSUARIOS.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

        Response.Redirect(“DefaultAdmin.aspx?userlpq=” + USERNAME.Text + "&nivellpq=" + NIVELUSU.Text)

    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click



        Label15.Visible = True

        GridView2.Visible = True
        Folio.Visible = False

        Label10.Visible = False
        TextBox1.Visible = False

        Label11.Visible = False
        TextBox2.Visible = False
        Label21.Visible = False
        Label4.Visible = False
        Nivel0.Visible = False

        Button5.Visible = False
        Nivel.Visible = False

        Label13.Visible = False

        Label17.Visible = False
        Label18.Visible = False
        Label19.Visible = False
        Label20.Visible = False


        Nombre.Visible = False
        AMaterno.Visible = False
        APaterno.Visible = False
        Area.Visible = False

        Button7.Visible = False

        Button3.Visible = True
        Button4.Visible = True




    End Sub


End Class