VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form customer 
   AutoRedraw      =   -1  'True
   Caption         =   "customer"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   Picture         =   "hhh.frx":0000
   ScaleHeight     =   11010
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   10440
      MaxLength       =   12
      TabIndex        =   15
      Top             =   6000
      Width           =   1935
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   10440
      MaxLength       =   6
      TabIndex        =   14
      Top             =   5280
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00808080&
      Caption         =   "ADD NEW"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4560
      MaskColor       =   &H00FFFFFF&
      Picture         =   "hhh.frx":7F917
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00808080&
      Caption         =   "SALES ORDER"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   9120
      Picture         =   "hhh.frx":80727
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00808080&
      Caption         =   " "
      Height          =   735
      Left            =   0
      Picture         =   "hhh.frx":81537
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   2160
      Width           =   2355
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H00808080&
      Caption         =   "ADD STOCK"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   6840
      Picture         =   "hhh.frx":82347
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H00808080&
      Caption         =   "INVOICE"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2280
      Picture         =   "hhh.frx":83157
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H00808080&
      Caption         =   "FIND"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   13560
      Picture         =   "hhh.frx":83F67
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command7 
      BackColor       =   &H00808080&
      Caption         =   "SALES"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   15840
      Picture         =   "hhh.frx":84D77
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command8 
      BackColor       =   &H00808080&
      Caption         =   "CUSTOMERS"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   11280
      Picture         =   "hhh.frx":85B87
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command9 
      BackColor       =   &H00808080&
      Caption         =   " "
      Height          =   735
      Left            =   18120
      Picture         =   "hhh.frx":86997
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   2160
      Width           =   2295
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   0  'None
      Caption         =   "Sales"
      Height          =   8655
      Left            =   2280
      TabIndex        =   1
      Top             =   2880
      Width           =   15855
      Begin VB.CommandButton Command11 
         Caption         =   "REMOVE"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   9120
         Picture         =   "hhh.frx":877A7
         Style           =   1  'Graphical
         TabIndex        =   18
         Top             =   3960
         Width           =   1095
      End
      Begin VB.CommandButton Command10 
         Caption         =   "ADD"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   8160
         Picture         =   "hhh.frx":885B7
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   3960
         Width           =   1095
      End
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   8160
         MaxLength       =   15
         TabIndex        =   12
         Top             =   1680
         Width           =   1935
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Phone"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   6120
         TabIndex        =   19
         Top             =   3240
         Width           =   975
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Customer ID"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   6120
         TabIndex        =   16
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Customer Name"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   6120
         TabIndex        =   13
         Top             =   2520
         Width           =   1935
      End
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   1110
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   20370
      _ExtentX        =   35930
      _ExtentY        =   1958
      ButtonWidth     =   1455
      ButtonHeight    =   1799
      Appearance      =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   5
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "HOME"
            Key             =   "sims"
            Object.ToolTipText     =   "sims"
            Object.Tag             =   "sims"
            ImageKey        =   "sims"
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "FIND"
            Key             =   "find"
            Object.ToolTipText     =   "Find"
            ImageKey        =   "find"
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "ORDER"
            Key             =   "order"
            Object.ToolTipText     =   "ORDER"
            ImageKey        =   "order"
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "SALES"
            Key             =   "sales"
            Object.ToolTipText     =   "SALES"
            ImageKey        =   "sales"
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "STOCK"
            Key             =   "stock"
            Object.ToolTipText     =   "STOCK"
            ImageKey        =   "stock"
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   0
      Top             =   7560
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   48
      ImageHeight     =   48
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   5
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "hhh.frx":893C7
            Key             =   "stock"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "hhh.frx":8D609
            Key             =   "order"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "hhh.frx":96DF3
            Key             =   "sales"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "hhh.frx":9B2E8
            Key             =   "find"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "hhh.frx":CB33A
            Key             =   "sims"
         EndProperty
      EndProperty
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "       Inventory Sales and Managment System"
      BeginProperty Font 
         Name            =   "Georgia"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   0
      TabIndex        =   11
      Top             =   1080
      Width           =   21495
   End
End
Attribute VB_Name = "customer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As New ADODB.Connection
Dim con1 As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim rs1 As New ADODB.Recordset

Private Sub Command1_Click()
  con.Close
  Unload Me
  Load add_new
  add_new.Show
End Sub

Private Sub Command10_Click()
    rs.Open "insert into customer values (" & Val(Text1.Text) & ",'" & Text2.Text & "'," & Val(Text3.Text) & " )", con, adOpenDynamic, adLockOptimistic
End Sub

Private Sub Command11_Click()
    rs1.Open "delete from customer where customer_id='" & Val(Text1.Text) & "'", con, adOpenDynamic, adLockOptimistic
End Sub

Private Sub Command2_Click()
    con.Close
    Load order
    order.Show
    Unload Me
End Sub

Private Sub Command4_Click()
   con.Close
    Load add_stock
    add_stock.Show
    Unload Me
End Sub

Private Sub Command5_Click()
    con.Close
    Load Invoice
    Invoice.Show
    Unload Me
End Sub

Private Sub Command6_Click()
    con.Close
    Load find
    find.Show
    Unload Me
End Sub

Private Sub Command8_Click()
    con.Close
    Load customer
    customer.Show
    Unload Me
End Sub

Private Sub Form_Load()
   con.Open "Provider=MSDAORA.1;Password=tiger ; User ID=shop;Persist Security Info=False"
End Sub

