VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form find 
   AutoRedraw      =   -1  'True
   Caption         =   "Find"
   ClientHeight    =   9330
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   18450
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   Picture         =   "Copy of hhh.frx":0000
   ScaleHeight     =   9330
   ScaleWidth      =   18450
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      BackColor       =   &H00808080&
      Caption         =   " "
      Height          =   735
      Left            =   0
      Picture         =   "Copy of hhh.frx":7F917
      Style           =   1  'Graphical
      TabIndex        =   29
      Top             =   2160
      Width           =   2295
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
      Height          =   435
      Left            =   12840
      TabIndex        =   16
      Top             =   6000
      Width           =   2535
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
      Picture         =   "Copy of hhh.frx":80727
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00808080&
      Caption         =   "ORDERS"
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
      Picture         =   "Copy of hhh.frx":81537
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   2160
      Width           =   2295
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
      Picture         =   "Copy of hhh.frx":82347
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
      Picture         =   "Copy of hhh.frx":83157
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
      Left            =   13680
      Picture         =   "Copy of hhh.frx":83F67
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command7 
      BackColor       =   &H00808080&
      Caption         =   " "
      Height          =   735
      Left            =   18120
      Picture         =   "Copy of hhh.frx":84D77
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
      Left            =   11400
      Picture         =   "Copy of hhh.frx":85B87
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command9 
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
      Picture         =   "Copy of hhh.frx":86997
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   2160
      Width           =   2295
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   0  'None
      Height          =   8655
      Left            =   2280
      TabIndex        =   1
      Top             =   2880
      Width           =   15855
      Begin VB.ComboBox Combo5 
         Height          =   315
         Left            =   5880
         TabIndex        =   32
         Text            =   "Order_id"
         Top             =   2400
         Width           =   1455
      End
      Begin VB.TextBox Text4 
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
         Height          =   435
         Left            =   7680
         TabIndex        =   31
         Top             =   2280
         Width           =   2535
      End
      Begin VB.CommandButton Command13 
         Caption         =   "Search"
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
         Left            =   10560
         Picture         =   "Copy of hhh.frx":877A7
         Style           =   1  'Graphical
         TabIndex        =   30
         Top             =   2280
         Width           =   1575
      End
      Begin VB.CommandButton Command12 
         Caption         =   "Search"
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
         Left            =   10560
         Picture         =   "Copy of hhh.frx":885B7
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   1560
         Width           =   1575
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
         Height          =   435
         Left            =   7680
         TabIndex        =   27
         Top             =   1560
         Width           =   2535
      End
      Begin VB.ComboBox Combo4 
         Height          =   315
         Left            =   5880
         TabIndex        =   25
         Text            =   "Invoice_id"
         Top             =   1680
         Width           =   1455
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         Left            =   5880
         TabIndex        =   20
         Text            =   "Mobile"
         Top             =   3120
         Width           =   1455
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   8760
         TabIndex        =   19
         Text            =   "Product_id"
         Top             =   3120
         Width           =   1455
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
         Height          =   435
         Left            =   7680
         TabIndex        =   18
         Top             =   840
         Width           =   2535
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   5880
         TabIndex        =   15
         Text            =   "Supplier_id"
         Top             =   960
         Width           =   1455
      End
      Begin VB.CommandButton Command11 
         Caption         =   "Search"
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
         Left            =   13440
         Picture         =   "Copy of hhh.frx":893C7
         Style           =   1  'Graphical
         TabIndex        =   13
         Top             =   3000
         Width           =   1575
      End
      Begin VB.CommandButton Command10 
         Caption         =   "Search"
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
         Left            =   10560
         Picture         =   "Copy of hhh.frx":8A1D7
         Style           =   1  'Graphical
         TabIndex        =   12
         Top             =   840
         Width           =   1575
      End
      Begin MSDataGridLib.DataGrid items 
         Height          =   3015
         Left            =   2760
         TabIndex        =   14
         Top             =   4080
         Width           =   12015
         _ExtentX        =   21193
         _ExtentY        =   5318
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   15
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Comic Sans MS"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Caption         =   "Items"
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "> Orders"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   34
         Top             =   2400
         Width           =   1575
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "Search by"
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
         Left            =   4440
         TabIndex        =   33
         Top             =   2400
         Width           =   1215
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "Search by"
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
         Left            =   4440
         TabIndex        =   26
         Top             =   1680
         Width           =   1215
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "> Invoice"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   24
         Top             =   1680
         Width           =   1575
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "> Items"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   23
         Top             =   3120
         Width           =   1215
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "> Supplier"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2760
         TabIndex        =   22
         Top             =   960
         Width           =   1455
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
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
         Left            =   4440
         TabIndex        =   21
         Top             =   3120
         Width           =   1095
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Search by"
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
         Left            =   4440
         TabIndex        =   17
         Top             =   960
         Width           =   1095
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Search by"
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
         Left            =   7560
         TabIndex        =   11
         Top             =   3120
         Width           =   1215
      End
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   1110
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   18450
      _ExtentX        =   32544
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
            Picture         =   "Copy of hhh.frx":8AFE7
            Key             =   "stock"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Copy of hhh.frx":8F229
            Key             =   "order"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Copy of hhh.frx":98A13
            Key             =   "sales"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Copy of hhh.frx":9CF08
            Key             =   "find"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Copy of hhh.frx":CCF5A
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
      TabIndex        =   10
      Top             =   1080
      Width           =   21495
   End
End
Attribute VB_Name = "find"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim strSQL As String
    

Private Sub Command1_Click()
  rs.Close
  con.Close
  Unload Me
  Load add_new
  add_new.Show
End Sub

Private Sub Command10_Click()
   If (Combo1.Text = "Supplier_id") Then
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from supplier where supplier_id=" & Val(Text1.Text), con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
   ElseIf Combo1.Text = "Name" Then
   MsgBox "name"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from supplier where name='" & LCase(Text1.Text) & "'", con, , , adCmdText

    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
   End If
End Sub

Private Sub Command11_Click()
    If (Combo3.Text = "Mobile") Then
    If (Combo2.Text = "Product_id") Then
    MsgBox "P_id"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,mobile where item.product_id=mobile.product_id and item.product_id=" & Val(Text2.Text), con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
   
   ElseIf Combo2.Text = "Model" Then
     MsgBox "model"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,mobile,stock where item.product_id=stock.product_id and item.product_id=mobile.product_id  and item.model='" & LCase(Text2.Text) & "'", con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
   ElseIf Combo2.Text = "Company" Then
     MsgBox "company"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,mobile where item.product_id=mobile.product_id and item.company='" & LCase(Text2.Text) & "'", con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
   ElseIf Combo2.Text = "Price" Then
     MsgBox "model"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,mobile where item.product_id=mobile.product_id and item.price='" & LCase(Text2.Text) & "'", con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
    ElseIf Combo2.Text = "RAM" Then
    MsgBox "P_id"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,mobile where item.product_id=mobile.product_id and item.RAM=" & Val(Text2.Text), con, , , adCmdText
    
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
     ElseIf Combo2.Text = "Camera" Then
    MsgBox "P_id"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,mobile where item.product_id=mobile.product_id and item.camera=" & Val(Text2.Text), con, , , adCmdText
    
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
     ElseIf Combo2.Text = "Store_id" Then
    MsgBox "P_id"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,mobile where item.product_id=mobile.product_id and item.store_id=" & Val(Text2.Text), con, , , adCmdText
    
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
   End If
  ElseIf (Combo3.Text = "Laptop") Then
   MsgBox "laptop "
  If (Combo2.Text = "Product_id") Then
    MsgBox "P_id"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,laptop where item.product_id=laptop.product_id and item.product_id=" & Val(Text2.Text), con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
   
   ElseIf Combo2.Text = "Model" Then
     MsgBox "model"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,laptop where item.product_id=laptop.product_id and item.model='" & LCase(Text2.Text) & "'", con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
   ElseIf Combo2.Text = "Company" Then
     MsgBox "company"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,laptop where item.product_id=laptop.product_id and item.company='" & LCase(Text2.Text) & "'", con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
   ElseIf Combo2.Text = "Price" Then
     MsgBox "model"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,laptop where item.product_id=laptop.product_id and item.price='" & LCase(Text2.Text) & "'", con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
    ElseIf Combo2.Text = "RAM" Then
    MsgBox "P_id"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,laptop where item.product_id=laptop.product_id and item.RAM=" & Val(Text2.Text), con, , , adCmdText
    
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
     ElseIf Combo2.Text = "Camera" Then
    MsgBox "P_id"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,laptop where item.product_id=laptop.product_id and item.camera=" & Val(Text2.Text), con, , , adCmdText
    
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
     ElseIf Combo2.Text = "Store_id" Then
    MsgBox "P_id"
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select  * from item,laptop where item.product_id=laptop.product_id and item.store_id=" & Val(Text2.Text), con, , , adCmdText
    
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
   End If
   
   End If
End Sub

Private Sub Command12_Click()
  If (Combo4.Text = "Invoice_id") Then
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select * from sales_invoice where invoice_id=" & Val(Text3.Text), con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
  ElseIf (Combo4.Text = "Product_id") Then
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select * from sales_invoice where product_id=" & Val(Text3.Text), con, , , adCmdText
   If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
    
  ElseIf (Combo4.Text = "Customer_id") Then
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select * from sales_invoice where customer_id=" & Val(Text3.Text), con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
    
  ElseIf (Combo4.Text = "Date") Then
     rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select * from sales_invoice where sale_date=" & Val(Text3.Text), con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
    
  End If
  
End Sub

Private Sub Command13_Click()
   If (Combo5.Text = "Order_id") Then
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select * from orders where order_id=" & Val(Text4.Text), con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
  ElseIf (Combo5.Text = "Product_id") Then
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select * from orders where product_id=" & Val(Text4.Text), con, , , adCmdText
   If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
    
  ElseIf (Combo5.Text = "Customer_id") Then
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select * from orders where customer_id=" & Val(Text4.Text), con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
       
  ElseIf (Combo5.Text = "Supplier_id") Then
    rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select * from orders where supplier_id=" & Val(Text4.Text), con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
    
  ElseIf (Combo5.Text = "Date") Then
     rs.Close
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
    rs.Open "select * from orders where sale_date=" & Val(Text4.Text), con, , , adCmdText
    If rs.BOF = True Or rs.EOF = True Then
       MsgBox "No Record Found", vbCritical
    Else
       Set items.DataSource = rs
    End If
    
  End If
  
End Sub

Private Sub Command2_Click()
  rs.Close
  con.Close
  Load order
  order.Show
  Unload Me
End Sub

Private Sub Command4_Click()
    rs.Close
    con.Close
    Load add_stock
    add_stock.Show
    Unload Me
End Sub

Private Sub Command5_Click()
   rs.Close
   con.Close
   Load Invoice
   Invoice.Show
   Unload Me
End Sub

Private Sub Command8_Click()
  rs.Close
  con.Close
  Load customer
  customer.Show
  Unload Me
End Sub

Private Sub Form_Load()

    Combo2.AddItem "Product_id"
    Combo2.AddItem "Model"
    Combo2.AddItem "Company"
    Combo2.AddItem "Price"
    Combo2.AddItem "RAM"
    Combo2.AddItem "Camera"
    Combo2.AddItem "Store_id"
    
    Combo1.AddItem "Supplier_id"
    Combo1.AddItem "Name"
    
    Combo3.AddItem "Mobile"
    Combo3.AddItem "Laptop"
    
    Combo4.AddItem "Invoice_id"
    Combo4.AddItem "Product_id"
    Combo4.AddItem "Customer_id"
    Combo4.AddItem "Date"
    
    Combo5.AddItem "Order_id"
    Combo5.AddItem "Customer_id"
    Combo5.AddItem "Product_id"
    Combo5.AddItem "Supplier_id"
    Combo5.AddItem "Date"
    
    con.Open "Provider=MSDAORA.1;Password=tiger ; User ID=shop;Persist Security Info=False"
    rs.Open "select * from supplier where supplier_id=" & Val(Text1.Text), con, , , adCmdText
  
End Sub

