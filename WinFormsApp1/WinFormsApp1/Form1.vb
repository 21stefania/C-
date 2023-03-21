Public Class Form1
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub RichTextBox1_TextChanged(sender As Object, e As EventArgs) Handles RichTextBox1.TextChanged

    End Sub

    Private Sub NurevoToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles NurevoToolStripMenuItem.Click
        RichTextBox1.Clear()
    End Sub

    Private Sub ABRIRToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ABRIRToolStripMenuItem.Click
        Dim Open As New OpenFileDialog()
        Dim myStreamReader As System.IO.StreamReader
        Open.Filter = "Text [*.txt*]|*.txt|All Files [*,*]|*,*"
        Open.CheckFileExists = True
        Open.Title = "Abrir Archivo"
        Open.ShowDialog(Me)
        Try
            Open.OpenFile()
            myStreamReader = System.IO.File.OpenText(Open.FileName)
            RichTextBox1.Text = myStreamReader.ReadToEnd()
        Catch ex As Exception

        End Try

    End Sub

    Private Sub LimipiarToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LimipiarToolStripMenuItem.Click

    End Sub

    Private Sub GuardarComoToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles GuardarComoToolStripMenuItem.Click
        Dim Save As New SaveFileDialog()
        Dim myStreamWriter As System.IO.StreamWriter
        Save.Filter = "Text (*.txt)|*.txt|HTML(*.html*)|*.html|PHP(*.php*)|*.php*|All files(*.*)|*.*"
        Save.CheckPathExists = True
        Save.Title = "Guardar como"
        Save.ShowDialog(Me)
        Try
            myStreamWriter = System.IO.File.AppendText(Save.FileName)
            myStreamWriter.Write(RichTextBox1.Text)
            myStreamWriter.Flush()
        Catch ex As Exception

        End Try
    End Sub

    Private Sub SalirToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SalirToolStripMenuItem.Click
        MessageBox.Show("Salir del aplicativo", "Bloc Notas PCQ02", MessageBoxButtons.OKCancel, MessageBoxIcon.Question)
        Dim a As Integer
        a = MessageBox.Show("Salir del aplicativo", "Bloc Notas PCQ02", MessageBoxButtons.OKCancel, MessageBoxIcon.Question)
        If a = DialogResult.OK Then
            End


        End If
    End Sub

    Private Sub CrefditosToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CrefditosToolStripMenuItem.Click
        AboutBox1.Show()
    End Sub
End Class
