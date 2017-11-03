VERSION 5.00
Begin VB.Form Sair 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   4245
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   7380
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "Sair.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4245
   ScaleWidth      =   7380
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.Frame Frame1 
      Height          =   4050
      Left            =   150
      TabIndex        =   0
      Top             =   60
      Width           =   7080
      Begin VB.Image LoveVB 
         Height          =   945
         Left            =   4560
         Picture         =   "Sair.frx":0ECA
         Stretch         =   -1  'True
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Image Logo 
         Height          =   3405
         Left            =   360
         Picture         =   "Sair.frx":1058C
         Stretch         =   -1  'True
         Top             =   240
         Width           =   3555
      End
      Begin VB.Label TP 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "-Save Pascal-"
         BeginProperty Font 
            Name            =   "OCR A Extended"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4320
         TabIndex        =   4
         Top             =   3000
         Width           =   2145
      End
      Begin VB.Label Criadores 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Vitor Daniel Ribeiro | Xoneca"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3960
         TabIndex        =   3
         Top             =   3600
         Width           =   2805
      End
      Begin VB.Label Versao 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Versão 1.0"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   4800
         TabIndex        =   1
         Top             =   1320
         Width           =   1200
      End
      Begin VB.Label Naufrago 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Naufrago"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   32.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   765
         Left            =   3960
         TabIndex        =   2
         Top             =   360
         Width           =   2820
      End
   End
End
Attribute VB_Name = "Sair"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Criadores_Click()
    End
End Sub

Private Sub Form_Click()
    End
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    End
End Sub

Private Sub Frame1_Click()
    End
End Sub

Private Sub Logo_Click()
    End
End Sub

Private Sub LoveVB_Click()
    End
End Sub

Private Sub Naufrago_Click()
    End
End Sub

Private Sub TP_Click()
    End
End Sub

Private Sub Versao_Click()
    End
End Sub
