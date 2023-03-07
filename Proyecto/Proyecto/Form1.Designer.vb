<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.ARCHIVO = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.MenuStrip1 = New System.Windows.Forms.MenuStrip()
        Me.ARCHIVOToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SALIRToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.APLICATIVOSToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SUPER7ToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CALCULARINTERESToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SUPERMERCADOToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CREDITOSToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ARCHIVO
        '
        Me.ARCHIVO.Name = "ContextMenuStrip1"
        Me.ARCHIVO.Size = New System.Drawing.Size(61, 4)
        Me.ARCHIVO.Text = "ARCHIVO"
        '
        'MenuStrip1
        '
        Me.MenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ARCHIVOToolStripMenuItem, Me.APLICATIVOSToolStripMenuItem, Me.CREDITOSToolStripMenuItem})
        Me.MenuStrip1.Location = New System.Drawing.Point(0, 0)
        Me.MenuStrip1.Name = "MenuStrip1"
        Me.MenuStrip1.Size = New System.Drawing.Size(800, 24)
        Me.MenuStrip1.TabIndex = 1
        Me.MenuStrip1.Text = "MenuStrip1"
        '
        'ARCHIVOToolStripMenuItem
        '
        Me.ARCHIVOToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SALIRToolStripMenuItem})
        Me.ARCHIVOToolStripMenuItem.Name = "ARCHIVOToolStripMenuItem"
        Me.ARCHIVOToolStripMenuItem.Size = New System.Drawing.Size(70, 20)
        Me.ARCHIVOToolStripMenuItem.Text = "ARCHIVO"
        '
        'SALIRToolStripMenuItem
        '
        Me.SALIRToolStripMenuItem.Name = "SALIRToolStripMenuItem"
        Me.SALIRToolStripMenuItem.Size = New System.Drawing.Size(104, 22)
        Me.SALIRToolStripMenuItem.Text = "SALIR"
        '
        'APLICATIVOSToolStripMenuItem
        '
        Me.APLICATIVOSToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SUPER7ToolStripMenuItem, Me.CALCULARINTERESToolStripMenuItem, Me.SUPERMERCADOToolStripMenuItem})
        Me.APLICATIVOSToolStripMenuItem.Name = "APLICATIVOSToolStripMenuItem"
        Me.APLICATIVOSToolStripMenuItem.Size = New System.Drawing.Size(89, 20)
        Me.APLICATIVOSToolStripMenuItem.Text = "APLICATIVOS"
        '
        'SUPER7ToolStripMenuItem
        '
        Me.SUPER7ToolStripMenuItem.Name = "SUPER7ToolStripMenuItem"
        Me.SUPER7ToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.SUPER7ToolStripMenuItem.Text = "SUPER 7"
        '
        'CALCULARINTERESToolStripMenuItem
        '
        Me.CALCULARINTERESToolStripMenuItem.Name = "CALCULARINTERESToolStripMenuItem"
        Me.CALCULARINTERESToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.CALCULARINTERESToolStripMenuItem.Text = "CALCULAR INTERES"
        '
        'SUPERMERCADOToolStripMenuItem
        '
        Me.SUPERMERCADOToolStripMenuItem.Name = "SUPERMERCADOToolStripMenuItem"
        Me.SUPERMERCADOToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.SUPERMERCADOToolStripMenuItem.Text = "SUPERMERCADO"
        '
        'CREDITOSToolStripMenuItem
        '
        Me.CREDITOSToolStripMenuItem.Name = "CREDITOSToolStripMenuItem"
        Me.CREDITOSToolStripMenuItem.Size = New System.Drawing.Size(71, 20)
        Me.CREDITOSToolStripMenuItem.Text = "CREDITOS"
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.MenuStrip1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.MenuStrip1.ResumeLayout(False)
        Me.MenuStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents ARCHIVO As ContextMenuStrip
    Friend WithEvents MenuStrip1 As MenuStrip
    Friend WithEvents ARCHIVOToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SALIRToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents APLICATIVOSToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SUPER7ToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CALCULARINTERESToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CREDITOSToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SUPERMERCADOToolStripMenuItem As ToolStripMenuItem
End Class
