VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form add_stock 
   Caption         =   "ADD STOCK"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   Picture         =   "add_stock.frx":0000
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      BackColor       =   &H000000C0&
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
      Picture         =   "add_stock.frx":7F917
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H000000C0&
      Caption         =   "ORDER"
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
      Picture         =   "add_stock.frx":80727
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H000000C0&
      Caption         =   " "
      Height          =   735
      Left            =   0
      Picture         =   "add_stock.frx":81537
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H000000C0&
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
      Picture         =   "add_stock.frx":82347
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H000000C0&
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
      Picture         =   "add_stock.frx":83157
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H000000C0&
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
      Picture         =   "add_stock.frx":83F67
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command7 
      BackColor       =   &H000000C0&
      Caption         =   "SALES"
      Height          =   735
      Left            =   15840
      Picture         =   "add_stock.frx":84D77
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command8 
      BackColor       =   &H000000C0&
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
      Left            =   11400
      Picture         =   "add_stock.frx":85B87
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command9 
      BackColor       =   &H000000C0&
      Caption         =   " "
      Height          =   735
      Left            =   18120
      Picture         =   "add_stock.frx":86997
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
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   495
         Left            =   9720
         TabIndex        =   20
         Top             =   3480
         Width           =   1695
         _ExtentX        =   2990
         _ExtentY        =   873
         _Version        =   393216
         Format          =   19857409
         CurrentDate     =   41791
      End
      Begin VB.CommandButton Command11 
         Caption         =   "Modify"
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
         Picture         =   "add_stock.frx":877A7
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   4440
         Width           =   1095
      End
      Begin VB.CommandButton Command10 
         Caption         =   "Add New"
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
         Left            =   7920
         Picture         =   "add_stock.frx":885B7
         Style           =   1  'Graphical
         TabIndex        =   18
         Top             =   4440
         Width           =   1215
      End
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
         Left            =   7560
         MaxLength       =   10
         TabIndex        =   16
         Top             =   3480
         Width           =   1815
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
         Left            =   7560
         MaxLength       =   4
         TabIndex        =   14
         Top             =   2520
         Width           =   1815
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
         Left            =   7560
         MaxLength       =   6
         TabIndex        =   12
         Top             =   1560
         Width           =   1815
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Purschase Date"
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
         Left            =   5520
         TabIndex        =   17
         Top             =   3600
         Width           =   2055
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Quantity"
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
         Left            =   5520
         TabIndex        =   15
         Top             =   2640
         Width           =   1335
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Product id"
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
         Left            =   5520
         TabIndex        =   13
         Top             =   1680
         Width           =   1215
      End
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   630
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4680
      _ExtentX        =   8255
      _ExtentY        =   1111
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
            Object.ToolTipText     =   "HOME"
            ImageKey        =   "sims"
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "FIND"
            Key             =   "find"
            Object.ToolTipText     =   "find"
            ImageKey        =   "find"
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "ORDER"
            Key             =   "order"
            Object.ToolTipText     =   "order"
            ImageKey        =   "order"
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "SALES"
            Key             =   "sales"
            Object.ToolTipText     =   "sales"
            ImageKey        =   "sales"
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "STOCK"
            Key             =   "stock"
            Object.ToolTipText     =   "stock"
            ImageKey        =   "stock"
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   0
      Top             =   5040
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
            Picture         =   "add_stock.frx":893C7
            Key             =   "stock"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "add_stock.frx":8D609
            Key             =   "order"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "add_stock.frx":96DF3
            Key             =   "sales"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "add_stock.frx":9B2E8
            Key             =   "find"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "add_stock.frx":CB33A
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
Attribute VB_Name = "add_stock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim d1 As Date
Private Sub Command1_Click()
    con.Close
    Load add_new
    add_new.Show
    Unload Me
End Sub

Private Sub Command10_Click()
     f = 1
     rs.Open "select * from item where product_id=" & Text1.Text, con, adOpenDynamic, adLockOptimistic
     If (rs.BOF = True Or rs.EOF = True) Then
       MsgBox "not present "
       f = 0
     End If
     rs.Close
     If (f = 1) Then
       rs.Open "select * from stock where product_id=" & Text1.Text, con, adOpenDynamic, adLockOptimistic
       If (rs.BOF = False Or rs.EOF = False) Then
         MsgBox "alreday exist"
         rs.Close
       Else
       rs.Close
       rs.Open "insert into stock values (" & Val(Text1.Text) & "," & Val(Text2.Text) & "  ," & Text3.Text & ")", con, adOpenDynamic, adLockOptimistic
       End If
      End If
End Sub

Private Sub Command11_Click()
     f = 1
     rs.Open "select * from item where product_id=" & Text1.Text, con, adOpenDynamic, adLockOptimistic
     If (rs.BOF = True Or rs.EOF = True) Then
       MsgBox "not present "
       f = 0
     End If
     rs.Close
     If (f = 1) Then
       rs.Open "select * from stock where product_id=" & Text1.Text, con, adOpenDynamic, adLockOptimistic
        If (rs.BOF = True Or rs.EOF = True) Then
           MsgBox "No record found"
         rs.Close
        Else
         rs.Close
         rs.Open " update stock set quantity=" & Val(Text2.Text) & " where product_id=" & Val(Text1.Text) & " ", con, adOpenDynamic, adLockOptimistic
      End If
     End If
End Sub

Private Sub Command2_Click()
 con.Close
 Load order
 order.Show
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
  d1 = DTPicker1.Value
  MsgBox d1
End Sub
