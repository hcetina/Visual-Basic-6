VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H8000000C&
   Caption         =   "Form1"
   ClientHeight    =   6120
   ClientLeft      =   60
   ClientTop       =   390
   ClientWidth     =   6870
   LinkTopic       =   "Form1"
   ScaleHeight     =   6120
   ScaleWidth      =   6870
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   5640
      Top             =   2280
   End
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   4200
      Top             =   3000
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00808000&
      Height          =   1215
      Left            =   3480
      ScaleHeight     =   1155
      ScaleWidth      =   2595
      TabIndex        =   0
      Top             =   360
      Width           =   2655
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   735
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Width           =   2175
      End
   End
   Begin VB.Image auto 
      Height          =   1935
      Left            =   3600
      Picture         =   "Form1.frx":0000
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   2655
   End
   Begin VB.Shape forma3 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00008000&
      FillColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   1560
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   975
   End
   Begin VB.Shape forma2 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H0000FFFF&
      FillColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   1560
      Shape           =   3  'Circle
      Top             =   2160
      Width           =   975
   End
   Begin VB.Shape forma1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H000000FF&
      FillColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   1440
      Shape           =   3  'Circle
      Top             =   1080
      Width           =   1335
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000002&
      FillStyle       =   0  'Solid
      Height          =   1095
      Left            =   1920
      Top             =   4680
      Width           =   375
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H80000001&
      BackStyle       =   1  'Opaque
      BorderWidth     =   2
      Height          =   3855
      Left            =   960
      Shape           =   4  'Rounded Rectangle
      Top             =   840
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
Static state As Integer

Select Case state

Case 0

forma1.BackColor = vbRed

forma2.BackColor = vbWhite

forma3.BackColor = vbWhite

Label1.Caption = "Stop"

'Label1.ForeColor = vbRed

Timer1.Interval = 7000

state = 1

Case 1

forma1.BackColor = vbWhite

forma2.BackColor = vbYellow

forma3.BackColor = vbWhite

Label1.Caption = "Wait"

'Label1.ForeColor = vbYellow

Timer1.Interval = 3000
state = 2

Case 2
forma1.BackColor = vbWhite

forma2.BackColor = vbWhite

forma3.BackColor = vbGreen

Label1.Caption = "Go"

'Label1.ForeColor = vbGreen

Timer1.Interval = 5000
Timer2.Enabled = True
auto.Top = auto.Top - 500
 End Select
End Sub
