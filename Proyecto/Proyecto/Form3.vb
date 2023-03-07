Imports System.Reflection.Emit
Imports System.Windows.Forms.VisualStyles.VisualStyleElement

Public Class Form3
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim a, b, c As Integer

        a = Int(Rnd() * 10)
        b = Int(Rnd() * 10)
        c = Int(Rnd() * 10)

        Label7.Text = a
        Label8.Text = b
        Label9.Text = c

        If a = 7 And b = 7 And c = 7 Then
            Label5.Text = "FELICITACIONES HAS GANADO!!!!"
            PictureBox1.Visible = True

        Else
            Label5.Text = "PERDISTE, INTENTA DE NUEVO!!"
            PictureBox2.Visible = True

        End If
    End Sub


    Private Sub Label1_Click(sender As Object, e As EventArgs) Handles Label1.Click

    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click

    End Sub
End Class