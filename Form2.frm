VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Semáforo Inteligente - Luis Peña"
   ClientHeight    =   5550
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   4335
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5550
   ScaleWidth      =   4335
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer4 
      Interval        =   1
      Left            =   6600
      Top             =   3840
   End
   Begin VB.Timer Timer3 
      Interval        =   24000
      Left            =   6600
      Top             =   3120
   End
   Begin VB.Timer Timer2 
      Interval        =   16000
      Left            =   6600
      Top             =   2520
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BackColor       =   &H80000006&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000005&
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   5040
      Width           =   3135
   End
   Begin VB.Timer Timer1 
      Interval        =   8000
      Left            =   6480
      Top             =   1800
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000008&
      Caption         =   "00:00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   495
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   4335
   End
   Begin VB.Shape forma3 
      BackColor       =   &H80000006&
      BackStyle       =   1  'Opaque
      FillColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   1680
      Shape           =   3  'Circle
      Top             =   3480
      Width           =   975
   End
   Begin VB.Shape forma2 
      BackColor       =   &H80000006&
      BackStyle       =   1  'Opaque
      FillColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   1680
      Shape           =   3  'Circle
      Top             =   2280
      Width           =   975
   End
   Begin VB.Shape forma1 
      BackColor       =   &H80000006&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   1680
      Shape           =   3  'Circle
      Top             =   1080
      Width           =   975
   End
   Begin VB.Image Image1 
      Height          =   4485
      Left            =   0
      Picture         =   "Form2.frx":0000
      Stretch         =   -1  'True
      Top             =   480
      Width           =   4335
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
forma1.BackColor = vbRed
forma2.BackColor = vbBlack
forma3.BackColor = vbBlack
Text1.Text = "Parada"
End Sub
Private Sub Timer2_Timer()
forma1.BackColor = vbBlack
forma2.BackColor = vbYellow
forma3.BackColor = vbBlack
Text1.Text = "Precaución"
End Sub

Private Sub Timer3_Timer()
forma1.BackColor = vbBlack
forma2.BackColor = vbBlack
forma3.BackColor = vbGreen
Text1.Text = "Pase"
End Sub

Private Sub Timer4_Timer()
Label1.Caption = Time
End Sub
