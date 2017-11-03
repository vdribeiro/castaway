VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Naufrago 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Naufrago"
   ClientHeight    =   10575
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11190
   Icon            =   "Naufrago.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10575
   ScaleWidth      =   11190
   Visible         =   0   'False
   Begin VB.ComboBox Velocidade 
      Height          =   315
      ItemData        =   "Naufrago.frx":0ECA
      Left            =   5760
      List            =   "Naufrago.frx":0EDA
      Style           =   2  'Dropdown List
      TabIndex        =   15
      Top             =   9360
      Width           =   1335
   End
   Begin VB.Timer Relogio 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin MSComctlLib.ProgressBar PBFome 
      Height          =   255
      Left            =   7320
      TabIndex        =   8
      Top             =   9240
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
      Max             =   10
      Scrolling       =   1
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   1815
      Left            =   0
      TabIndex        =   0
      Top             =   8760
      Width           =   5655
      _ExtentX        =   9975
      _ExtentY        =   3201
      _Version        =   393216
      Tabs            =   4
      TabsPerRow      =   4
      TabHeight       =   706
      TabCaption(0)   =   "Inventário"
      TabPicture(0)   =   "Naufrago.frx":0EFC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Esq"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Dit"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Inv"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      TabCaption(1)   =   "Abilidades"
      TabPicture(1)   =   "Naufrago.frx":0F18
      Tab(1).ControlEnabled=   0   'False
      Tab(1).ControlCount=   0
      TabCaption(2)   =   "Conhecimentos"
      TabPicture(2)   =   "Naufrago.frx":0F34
      Tab(2).ControlEnabled=   0   'False
      Tab(2).ControlCount=   0
      TabCaption(3)   =   "Opções"
      TabPicture(3)   =   "Naufrago.frx":0F50
      Tab(3).ControlEnabled=   0   'False
      Tab(3).ControlCount=   0
      Begin VB.Image Inv 
         Height          =   975
         Left            =   480
         Stretch         =   -1  'True
         Top             =   600
         Width           =   975
      End
      Begin VB.Image Dit 
         Height          =   720
         Left            =   5040
         Top             =   720
         Width           =   720
      End
      Begin VB.Image Esq 
         Height          =   720
         Left            =   -120
         Top             =   720
         Width           =   720
      End
   End
   Begin VB.TextBox Chat 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   975
      Left            =   0
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   7800
      Width           =   11175
   End
   Begin MSComctlLib.ProgressBar PBEnergia 
      Height          =   255
      Left            =   7320
      TabIndex        =   9
      Top             =   10080
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
      Max             =   10
      Scrolling       =   1
   End
   Begin MSComctlLib.ProgressBar PBSocial 
      Height          =   255
      Left            =   9960
      TabIndex        =   10
      Top             =   9240
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
      Max             =   10
      Scrolling       =   1
   End
   Begin MSComctlLib.ProgressBar PBAlivio 
      Height          =   255
      Left            =   8640
      TabIndex        =   11
      Top             =   10080
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
      Max             =   10
      Scrolling       =   1
   End
   Begin MSComctlLib.ProgressBar PBComforto 
      Height          =   255
      Left            =   8640
      TabIndex        =   12
      Top             =   9240
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
      Max             =   10
      Scrolling       =   1
   End
   Begin MSComctlLib.ProgressBar PBStress 
      Height          =   255
      Left            =   9960
      TabIndex        =   13
      Top             =   10080
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
      Max             =   10
      Scrolling       =   1
   End
   Begin VB.PictureBox Ilha 
      BorderStyle     =   0  'None
      Height          =   7815
      Left            =   0
      ScaleHeight     =   7815
      ScaleWidth      =   11295
      TabIndex        =   17
      Top             =   0
      Width           =   11295
   End
   Begin VB.Label Hoje 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   5640
      TabIndex        =   16
      Top             =   9840
      Width           =   1575
   End
   Begin VB.Label Hora 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   5640
      TabIndex        =   14
      Top             =   8880
      Width           =   1575
   End
   Begin VB.Label Stress 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Stress"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   9960
      TabIndex        =   7
      Top             =   9720
      Width           =   1125
   End
   Begin VB.Label Comforto 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Comforto"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   8640
      TabIndex        =   6
      Top             =   8880
      Width           =   1125
   End
   Begin VB.Label Alivio 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Alívio"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   8640
      TabIndex        =   5
      Top             =   9720
      Width           =   1125
   End
   Begin VB.Label Social 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Social"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   9960
      TabIndex        =   4
      Top             =   8880
      Width           =   1125
   End
   Begin VB.Label Energia 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Energia"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   7320
      TabIndex        =   3
      Top             =   9720
      Width           =   1125
   End
   Begin VB.Label Fome 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Fome"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   7320
      TabIndex        =   2
      Top             =   8880
      Width           =   1125
   End
   Begin VB.Shape Quadro 
      BorderColor     =   &H00800000&
      FillColor       =   &H00800000&
      FillStyle       =   0  'Solid
      Height          =   1815
      Left            =   7200
      Top             =   8760
      Width           =   3975
   End
   Begin VB.Shape Tempo 
      BorderColor     =   &H00800000&
      FillColor       =   &H00004000&
      FillStyle       =   0  'Solid
      Height          =   1815
      Left            =   5640
      Top             =   8760
      Width           =   1575
   End
End
Attribute VB_Name = "Naufrago"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim h, m, mes, ano As Integer

Private Sub Velocidade_Click()
    Relogio.Enabled = True
    Select Case Velocidade.ListIndex
        Case 0
            Relogio.Interval = 0
            Relogio.Enabled = False
        Case 1
            Relogio.Interval = 1000
        Case 2
            Relogio.Interval = 100
        Case 3
            Relogio.Interval = 10
    End Select
End Sub

Private Sub Form_Load()
    Ilha.Picture = LoadPicture(path & "Fundos\Dia.bmp")
    Esq.Picture = LoadPicture(path & "Icons\esq.ico")
    Dit.Picture = LoadPicture(path & "Icons\dir.ico")
    Me.Move (Screen.Width - Me.Width) / 2, 1
    Hora.Caption = "08:00"
    Hoje.Caption = "Jan. 2000"
    Velocidade.ListIndex = 2
    PBFome.Value = 10
    PBEnergia.Value = 10
    PBComforto.Value = 10
    PBAlivio.Value = 10
    PBSocial.Value = 10
    PBStress.Value = 10
    h = 8
    m = 0
    mes = 1
    ano = 2000
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Menu.Visible = True
End Sub

Sub needs()
    If PBFome.Value > 0 Then
        PBFome.Value = PBFome.Value - 0.5
    End If
    If PBFome.Value <= 2 Then
        Fome.ForeColor = &HFF&
    Else
        Fome.ForeColor = &HFFFF&
    End If
    If PBFome.Value = 0 Then
        fim
    End If
    If PBEnergia.Value > 0 Then
        PBEnergia.Value = PBEnergia.Value - 0.5
    End If
    If PBEnergia.Value <= 2 Then
        Energia.ForeColor = &HFF&
    Else
        Energia.ForeColor = &HFFFF&
    End If
    If PBEnergia.Value = 0 Then
    End If
End Sub

Sub fim()
    MsgBox "GAME OVER"
    Unload Me
    Relogio.Enabled = False
End Sub

Private Sub Relogio_Timer()
    If m = 59 Then
        m = 0
        h = h + 1
        If h = 8 Then
            Ilha.Picture = LoadPicture(path & "Fundos\Dia.bmp")
        End If
        If h = 20 Then
            Ilha.Picture = LoadPicture(path & "Fundos\Noite.bmp")
        End If
        needs
    Else
        m = m + 1
    End If
    If h = 24 Then
        h = 0
        mes = mes + 1
        If mes = 13 Then
            mes = 1
            ano = ano + 1
        End If
        Select Case mes
            Case 1
                Hoje.Caption = "Jan. "
            Case 2
                Hoje.Caption = "Fev. "
            Case 3
                Hoje.Caption = "Mar. "
            Case 4
                Hoje.Caption = "Abr. "
            Case 5
                Hoje.Caption = "Mai. "
            Case 6
                Hoje.Caption = "Jun. "
            Case 7
                Hoje.Caption = "Jul. "
            Case 8
                Hoje.Caption = "Ago. "
            Case 9
                Hoje.Caption = "Set. "
            Case 10
                Hoje.Caption = "Out. "
            Case 11
                Hoje.Caption = "Nov. "
            Case 12
                Hoje.Caption = "Dez. "
        End Select
        Hoje.Caption = Hoje.Caption & ano
    End If
    If h <= 9 Then
        Hora.Caption = "0" & h
    Else
        Hora.Caption = h
    End If
    If m <= 9 Then
        Hora.Caption = Hora.Caption & ":0" & m
    Else
        Hora.Caption = Hora.Caption & ":" & m
    End If
End Sub
