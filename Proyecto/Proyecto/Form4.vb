Public Class Form4
    Private Sub Label1_Click(sender As Object, e As EventArgs) Handles Label1.Click

    End Sub

    Private Sub ComboBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ComboBox1.SelectedIndexChanged

    End Sub

    Private Sub Form4_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ComboBox1.Items.Add("MANZANA")
        ComboBox1.Items.Add("PERA")
        ComboBox1.Items.Add("DURAZNO")
        ComboBox1.Items.Add("NARANJA")
        ComboBox1.Items.Add("MORA")
        ComboBox1.Items.Add("FRESA")
        ComboBox1.Items.Add("SANDIA")
        ComboBox1.Items.Add("MELON")
        ComboBox1.Items.Add("UVAS")
        ComboBox1.Items.Add("GUANABANA")

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim a, iva As Integer

        If ComboBox1.Text = "MANZANA" Then
            a = 2500
            iva = a * 0.19
            TextBox1.Text = a
            TextBox2.Text = iva
            TextBox3.Text = iva + a

        ElseIf ComboBox1.Text = "PERA" Then
            a = 3000
            iva = a * 0.19
            TextBox1.Text = a
            TextBox2.Text = iva
            TextBox3.Text = iva + a

        ElseIf ComboBox1.Text = "DURAZNO" Then
            a = 3500
            iva = a * 0.19
            TextBox1.Text = a
            TextBox2.Text = iva
            TextBox3.Text = iva + a

        ElseIf ComboBox1.Text = "NARANJA" Then
            a = 4000
            iva = a * 0.19
            TextBox1.Text = a
            TextBox2.Text = iva
            TextBox3.Text = iva + a

        ElseIf ComboBox1.Text = "MORA" Then
            a = 4500
            iva = a * 0.19
            TextBox1.Text = a
            TextBox2.Text = iva
            TextBox3.Text = iva + a

        ElseIf ComboBox1.Text = "FRESA" Then
            a = 5000
            iva = a * 0.19
            TextBox1.Text = a
            TextBox2.Text = iva
            TextBox3.Text = iva + a

        ElseIf ComboBox1.Text = "SANDIA" Then
            a = 6000
            iva = a * 0.19
            TextBox1.Text = a
            TextBox2.Text = iva
            TextBox3.Text = iva + a

        ElseIf ComboBox1.Text = "MELON" Then
            a = 7000
            iva = a * 0.19
            TextBox1.Text = a
            TextBox2.Text = iva
            TextBox3.Text = iva + a

        ElseIf ComboBox1.Text = "UVAS" Then
            a = 8000
            iva = a * 0.19
            TextBox1.Text = a
            TextBox2.Text = iva
            TextBox3.Text = iva + a

        ElseIf ComboBox1.Text = "GUANABANA" Then
            a = 9000
            iva = a * 0.19
            TextBox1.Text = a
            TextBox2.Text = iva
            TextBox3.Text = iva + a




        End If



    End Sub

    Private Sub Label4_Click(sender As Object, e As EventArgs) Handles Label4.Click

    End Sub
End Class