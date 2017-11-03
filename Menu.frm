VERSION 5.00
Begin VB.Form Menu 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Menu"
   ClientHeight    =   7200
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9600
   Icon            =   "Menu.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7200
   ScaleWidth      =   9600
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7200
      Left            =   0
      ScaleHeight     =   7200
      ScaleWidth      =   9600
      TabIndex        =   0
      Top             =   0
      Width           =   9600
      Begin VB.Image Image1 
         Height          =   1215
         Left            =   7200
         Stretch         =   -1  'True
         Top             =   3480
         Width           =   855
      End
      Begin VB.Image Image3 
         Height          =   735
         Left            =   4680
         Top             =   6120
         Width           =   1095
      End
      Begin VB.Image Image5 
         Height          =   1335
         Left            =   0
         Top             =   4080
         Width           =   1575
      End
      Begin VB.Image Image4 
         Height          =   2055
         Left            =   360
         Top             =   240
         Width           =   2055
      End
      Begin VB.Image Image2 
         Height          =   735
         Left            =   5880
         Top             =   960
         Width           =   975
      End
   End
End
Attribute VB_Name = "Menu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Sub bordas()
    Image1.BorderStyle = 0
    Image2.BorderStyle = 0
    Image3.BorderStyle = 0
    Image4.BorderStyle = 0
    Image5.BorderStyle = 0
End Sub

Private Sub Form_Load()
    Picture1.Picture = LoadPicture(path & "Fundos\menu.bmp")
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Sair.Visible = True
End Sub

Private Sub Image1_Click()
    Naufrago.Visible = True
    Naufrago.Relogio.Enabled = True
    Me.Visible = False
    bordas
End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Image1.BorderStyle = 1
End Sub

Private Sub Image2_Click()
    Instrucoes.Visible = True
    Me.Visible = False
    bordas
End Sub

Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Image2.BorderStyle = 1
End Sub

Private Sub Image3_Click()
    Opcoes.Visible = True
    Me.Visible = False
    bordas
End Sub

Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Image3.BorderStyle = 1
End Sub

Private Sub Image4_Click()
    Creditos.Visible = True
    Me.Visible = False
    bordas
End Sub

Private Sub Image4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Image4.BorderStyle = 1
End Sub

Private Sub Image5_Click()
    Unload Me
End Sub

Private Sub Image5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Image5.BorderStyle = 1
End Sub

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    bordas
End Sub
