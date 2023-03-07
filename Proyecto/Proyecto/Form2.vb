Public Class Form2
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim interes1, interes2, resultado
        interes1 = TextBox1.Text * Val(TextBox2.Text) / 100
        interes2 = interes1 + Val(TextBox1.Text)
        resultado = interes2 / Val(TextBox3.Text)

        TextBox4.Text = resultado

    End Sub
End Class