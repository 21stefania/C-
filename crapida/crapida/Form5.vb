Public Class Form1

    Private Sub RadioButton1_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton1.CheckedChanged
        If RadioButton1.Checked = True Then
            TextBox7.Text = 22000
        Else
            TextBox1.Enabled = False
            TextBox2.Enabled = False
            TextBox3.Enabled = False
            TextBox4.Enabled = False
            TextBox5.Enabled = False
            TextBox6.Enabled = False

        End If
    End Sub

    Private Sub RadioButton2_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton2.CheckedChanged
        If RadioButton2.Checked = True Then
            TextBox7.Text = 25000
        Else
            TextBox1.Enabled = False
            TextBox2.Enabled = False
            TextBox3.Enabled = False
            TextBox4.Enabled = False
            TextBox5.Enabled = False
            TextBox6.Enabled = False

        End If
    End Sub

    Private Sub RadioButton3_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton3.CheckedChanged
        If RadioButton3.Checked = True Then
            TextBox7.Text = 40000
        Else
            TextBox1.Enabled = False
            TextBox2.Enabled = False
            TextBox3.Enabled = False
            TextBox4.Enabled = False
            TextBox5.Enabled = False
            TextBox6.Enabled = False

        End If
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim hamburguesa, perro, sandwich, te, refresco, papas As Integer
        Dim total As Integer

        hamburguesa = TextBox1.Text * 12000
        perro = TextBox2.Text * 11000
        te = TextBox3.Text * 4500
        refresco = TextBox4.Text * 3200
        papas = TextBox5.Text * 8500
        sandwich = TextBox6.Text * 5000

        total = hamburguesa + perro + sandwich + te + papas + refresco * 0.19

        TextBox7.Text = total

    End Sub

    Private Sub RadioButton4_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton4.CheckedChanged
        If RadioButton4.Checked = False Then
            TextBox1.Text = 25000
        Else
            TextBox1.Enabled = True
            TextBox2.Enabled = True
            TextBox3.Enabled = True
            TextBox4.Enabled = True
            TextBox5.Enabled = True
            TextBox6.Enabled = True

        End If



    End Sub
End Class
