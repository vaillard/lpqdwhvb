Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security

Public Class INICIO
    Inherits System.Web.UI.Page

    'Dim cnx As New SqlConnection("Server=LPQDWH2;Database=DWH;Trusted_Connection = yes;")
    Dim cnx As New SqlConnection("Server=LPQDWH2; Database=DWH; User Id=dwh; Password=P4ssw0rd")
    Dim dap As New SqlDataAdapter("select * from INTERFAZ_WEB_USUARIOS WHERE TIPO_USUARIO=1 &", cnx)
    Dim dapsist As New SqlDataAdapter("select * from INTERFAZ_WEB_USUARIOS WHERE TIPO_USUARIO=2 &", cnx)
    Dim daprep As New SqlDataAdapter("select * from INTERFAZ_WEB_USUARIOS WHERE TIPO_USUARIO=3 &", cnx)
    Dim dst As New DataSet
    Dim Usuario As Integer


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        txtUsername.Focus()

        TextMensaje.Visible = False

    End Sub



    Protected Sub ValidateUser(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim username As String = txtUsername.Text.Trim()
        Dim password As String = txtPassword.Text.Trim()
        Dim nivel As String = txtnivel.Text.Trim()


        dap = New SqlDataAdapter("select * from INTERFAZ_WEB_USUARIOS where  usuario='" & txtUsername.Text & "' and CONTRASENA='" & txtPassword.Text & "' AND TIPO_USUARIO=1 AND ESTATUS=1", cnx)
        dapsist = New SqlDataAdapter("select * from INTERFAZ_WEB_USUARIOS where  usuario='" & txtUsername.Text & "' and CONTRASENA='" & txtPassword.Text & "' AND TIPO_USUARIO=2 AND ESTATUS=1", cnx)
        daprep = New SqlDataAdapter("select * from INTERFAZ_WEB_USUARIOS where  usuario='" & txtUsername.Text & "' and CONTRASENA='" & txtPassword.Text & "' AND TIPO_USUARIO=3 AND ESTATUS=1", cnx)

        dap.Fill(dst, "log")
        dapsist.Fill(dst, "log1")
        daprep.Fill(dst, "log2")

        If dst.Tables("log").Rows.Count <> 0 Then

            username = txtUsername.Text
            NIVELUSUARIO.Text = txtnivel.Text

            ' Modulo de Almacen
            '  Response.Redirect(“Default.aspx?userlpq=” + txtUsername.Text)

            Response.Redirect(“DefaultAdmin.aspx?userlpq=” + txtUsername.Text + "&nivellpq=" + "1")


        Else

            If dst.Tables("log1").Rows.Count <> 0 Then


                username = txtUsername.Text
                NIVELUSUARIO.Text = txtnivel.Text


                ' Modulo de Administrador
                '    Response.Redirect(“DefaultAdmin.aspx?userlpq=” + txtUsername.Text)


                Response.Redirect(“DefaultAdmin.aspx?userlpq=” + txtUsername.Text + "&nivellpq=" + "2")


            Else


                If dst.Tables("log2").Rows.Count <> 0 Then


                    username = txtUsername.Text

                    ' Modulo de logistica

                    Response.Redirect(“DefaultAdmin.aspx?userlpq=” + txtUsername.Text + "&nivellpq=" + "3")


                Else

                    TextMensaje.Visible = True
                    TextMensaje.Text = "Verifique su usuario y Contraseña "



                End If
            End If
        End If

    End Sub


End Class