VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form order 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000003&
   Caption         =   " "
   ClientHeight    =   4020
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12645
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   Picture         =   "Invoice.frx":0000
   ScaleHeight     =   11010
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
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
      Picture         =   "Invoice.frx":7F917
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00808080&
      Caption         =   " ORDERS"
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
      Picture         =   "Invoice.frx":80727
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
      Picture         =   "Invoice.frx":81537
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
      Picture         =   "Invoice.frx":82347
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
      Picture         =   "Invoice.frx":83157
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
      Picture         =   "Invoice.frx":83F67
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
      Picture         =   "Invoice.frx":84D77
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
      Picture         =   "Invoice.frx":85B87
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
      Picture         =   "Invoice.frx":86997
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
      Begin VB.CommandButton Command12 
         Caption         =   "Order completed"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   7560
         Picture         =   "Invoice.frx":877A7
         Style           =   1  'Graphical
         TabIndex        =   26
         Top             =   5880
         Width           =   2295
      End
      Begin VB.TextBox Text6 
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
         Left            =   7680
         TabIndex        =   24
         Top             =   1440
         Width           =   1575
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
         Left            =   7680
         TabIndex        =   23
         Top             =   840
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
         Height          =   495
         Left            =   10800
         TabIndex        =   22
         Top             =   1560
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
         Height          =   495
         Left            =   10800
         TabIndex        =   21
         Top             =   840
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
         Height          =   495
         Left            =   4560
         TabIndex        =   15
         Top             =   840
         Width           =   1575
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
         Left            =   12720
         Picture         =   "Invoice.frx":885B7
         Style           =   1  'Graphical
         TabIndex        =   14
         Top             =   840
         Width           =   1215
      End
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
         Left            =   12720
         Picture         =   "Invoice.frx":893C7
         Style           =   1  'Graphical
         TabIndex        =   13
         Top             =   1560
         Width           =   1215
      End
      Begin VB.TextBox Text5 
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
         Left            =   4560
         TabIndex        =   12
         Top             =   1440
         Width           =   1575
      End
      Begin MSDataGridLib.DataGrid bill 
         Height          =   2655
         Left            =   3000
         TabIndex        =   27
         Top             =   2880
         Width           =   11055
         _ExtentX        =   19500
         _ExtentY        =   4683
         _Version        =   393216
         BackColor       =   -2147483638
         ForeColor       =   -2147483643
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
         Caption         =   "Total bill"
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
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "Supplier_id"
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
         Left            =   6360
         TabIndex        =   25
         Top             =   1560
         Width           =   1575
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Customer Id"
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
         Left            =   3000
         TabIndex        =   20
         Top             =   960
         Width           =   1575
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Date"
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
         Left            =   9600
         TabIndex        =   19
         Top             =   1560
         Width           =   1215
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Order_id"
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
         Left            =   9600
         TabIndex        =   18
         Top             =   960
         Width           =   1215
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   " Item id"
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
         Left            =   6360
         TabIndex        =   17
         Top             =   960
         Width           =   975
      End
      Begin VB.Label Label6 
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
         Height          =   375
         Left            =   3000
         TabIndex        =   16
         Top             =   1560
         Width           =   1215
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
            Picture         =   "Invoice.frx":8A1D7
            Key             =   "stock"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Invoice.frx":8E419
            Key             =   "order"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Invoice.frx":97C03
            Key             =   "sales"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Invoice.frx":9C0F8
            Key             =   "find"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Invoice.frx":CC14A
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
Attribute VB_Name = "order"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim rs1 As New ADODB.Recordset
Dim rs2 As New ADODB.Recordset
Dim rs3 As New ADODB.Recordset

Private Sub Command1_Click()
  con.Close
  Unload Me
  Load add_new
  add_new.Show
End Sub

Private Sub Command10_Click()
   If (rs.State = 1) Then
  rs.Close
  End If
  
  If rs1.State = 1 Then
  rs1.Close
  End If
  
  If rs2.State = 1 Then
  rs2.Close
  End If
  
  If rs3.State = 1 Then
  rs3.Close
  End If
  
  If Text1.Text = "" Or Text2.Text = "" Or Text3.Text = "" Or Text4.Text = "" Or Text5.Text = "" Or Text6.Text = "" Then
    MsgBox "Some value is missing ", vbCritical
    rs.Open "select * from customer", con, adOpenDynamic, adLockOptimistic
    rs1.Open "select * from customer", con, adOpenDynamic, adLockOptimistic
  Else
    If rs.State = 1 Then
    rs.Close
    End If
    st = 1
    rs.Open "select status from orders where order_date='" & Val(Text3.Text) & "' and order_id='" & Val(Text4.Text) & "' and customer_id='" & Val(Text1.Text) & "'and product_id='" & Val(Text2.Text) & "'", con, adOpenDynamic, adLockOptimistic
   If (rs.EOF = False And rs.BOF = False) Then
     If rs!Status = 2 Then
        MsgBox " Order completed , unable to modify", vbCritical
        st = 0
     End If
   End If
   If st = 1 Then
    rs.Close
  rs.Open "select * from customer where customer_id=" & Val(Text1.Text), con, adOpenDynamic, adLockOptimistic
  rs1.Open "select * from item where product_id=" & Val(Text2.Text), con, adOpenDynamic, adLockOptimistic
  rs2.Open "select * from supplier where supplier_id=" & Val(Text6.Text), con, adOpenDynamic, adLockOptimistic
  
  If rs.EOF = True Or rs.BOF = True Then
     MsgBox "Customer Id not exist", vbCritical
     rs.Close
     rs1.Close
     rs2.Close
  ElseIf rs1.EOF = True Or rs.BOF = True Then
     MsgBox "Product Id not exist", vbCritical
     rs.Close
     rs1.Close
     rs2.Close
    
  ElseIf rs2.EOF = True Or rs2.BOF = True Then
     MsgBox "Supplier Id not exist", vbCritical
     rs.Close
     rs1.Close
     rs2.Close
  Else
     rs.Close
     rs1.Close
     rs2.Close
     rs.Open "select * from orders where order_id='" & Val(Text4.Text) & "'", con, adOpenDynamic, adLockOptimistic
     rs1.Open "select * from orders where order_date='" & Val(Text3.Text) & "' and customer_id='" & Val(Text1.Text) & "' and supplier_id='" & Val(Text6.Text) & "' and product_id='" & Val(Text2.Text) & "'", con, adOpenDynamic, adLockOptimistic
     rs2.Open "select * from orders where order_date='" & Val(Text3.Text) & "' and customer_id='" & Val(Text1.Text) & "'", con, adOpenDynamic, adLockOptimistic
     rs3.Open "select quantity from stock where product_id='" & Val(Text2.Text) & "'", con, adOpenDynamic, adLockOptimistic
      
     If rs.EOF = True Or rs.BOF = True Then
      MsgBox "Order  Id not exist", vbInformation
      rs.Close
      rs.Open "insert into orders values (" & Val(Text1.Text) & ",'" & Val(Text6.Text) & "' ,'" & Val(Text4.Text) & "'," & Val(Text3.Text) & ",'" & Val(Text5.Text) & "'," & 1 & ",'" & Val(Text2.Text) & "')", con, adOpenDynamic, adLockOptimistic
     ElseIf (rs1.EOF = False And rs1.BOF = False) Then
       MsgBox "Date exist with this Order , supplier  and customer id , updating quantity", vbInformation
       rs.Close
       rs.Open " update orders set quantity=quantity+" & Val(Text5.Text) & " where order_date='" & Val(Text3.Text) & "' and supplier_id='" & Val(Text6.Text) & "' and order_id='" & Val(Text4.Text) & "'and customer_id='" & Val(Text1.Text) & "'and product_id='" & Val(Text2.Text) & "'", con, adOpenDynamic, adLockOptimistic
    ElseIf rs2.EOF = False And rs2.BOF = False Then
       MsgBox "New record for existing Order id", vbInformation
       rs.Close
       rs.Open "insert into orders values (" & Val(Text1.Text) & ",'" & Val(Text6.Text) & "' ,'" & Val(Text4.Text) & "'," & Val(Text3.Text) & ",'" & Val(Text5.Text) & "'," & 1 & ",'" & Val(Text2.Text) & "')", con, adOpenDynamic, adLockOptimistic
     Else
       MsgBox "Check your data , something is wrong", vbCritical
     End If
  End If
  End If
  End If
   If (rs.State = 1) Then
    rs.Close
    End If
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
   rs.Open "select order_id , customer_id , product_id , supplier_id , quantity , order_date ,status from orders where order_id='" & Val(Text4.Text) & "'", con, , , adCmdText
   Set bill.DataSource = rs

End Sub

Private Sub Command11_Click()
   If (rs.State = 1) Then
  rs.Close
  End If
  
  If rs1.State = 1 Then
  rs1.Close
  End If
  
  If rs2.State = 1 Then
  rs2.Close
  End If
  
  If Text1.Text = "" Or Text2.Text = "" Or Text3.Text = "" Or Text4.Text = "" Or Text5.Text = "" Or Text6.Text = "" Then
    MsgBox "Some value is missing ", vbCritical
  Else
    rs.Open "select status from orders where order_date='" & Val(Text3.Text) & "' and order_id='" & Val(Text4.Text) & "' and customer_id='" & Val(Text1.Text) & "'and product_id='" & Val(Text2.Text) & "'", con, adOpenDynamic, adLockOptimistic
    st = 1
   If (rs.EOF = False And rs.BOF = False) Then
     If rs!Status = 2 Then
        MsgBox " Order completed , unable to modify", vbCritical
        st = 0
     End If
   End If
   If st = 1 Then
    rs.Close
    rs.Open "select * from orders where order_date='" & Val(Text3.Text) & "' and order_id='" & Val(Text4.Text) & "' and customer_id='" & Val(Text1.Text) & "'and product_id='" & Val(Text2.Text) & "'", con, adOpenDynamic, adLockOptimistic
    If (rs.EOF = True Or rs.BOF = True) Then
       MsgBox "No Record Found ", vbInformation
    Else
      If (rs!quantity < Val(Text5.Text)) Then
       MsgBox "Previous quantity was small, deleting record", vbInformation
       rs.Close
       rs.Open "delete from orders where order_date='" & Val(Text3.Text) & "' and order_id='" & Val(Text4.Text) & "' and customer_id='" & Val(Text1.Text) & "'and product_id='" & Val(Text2.Text) & "'", con, adOpenDynamic, adLockOptimistic
       Else
       rs.Close
       rs.Open " update orders set quantity=quantity-" & Val(Text5.Text) & " where  order_date='" & Val(Text3.Text) & "' and order_id='" & Val(Text4.Text) & "'and customer_id='" & Val(Text1.Text) & "'and product_id='" & Val(Text2.Text) & "'", con, adOpenDynamic, adLockOptimistic
      End If
    End If
   End If
  End If
  If (rs.State = 1) Then
    rs.Close
    End If
    rs.CursorType = adOpenStatic
    rs.CursorLocation = adUseClient
    rs.LockType = adLockOptimistic
   rs.Open "select order_id , customer_id , product_id , supplier_id , quantity , order_date ,status from orders where order_id='" & Val(Text4.Text) & "'", con, , , adCmdText
   Set bill.DataSource = rs

End Sub
Private Sub Command12_Click()
  If (rs.State = 1) Then
   rs.Close
   End If
      rs.Open "select status from orders where order_id='" & Val(Text4.Text) & "' ", con, adOpenDynamic, adLockOptimistic
      If (rs.EOF = False And rs.BOF = False) Then
         If (rs!Status = 2) Then
           MsgBox "Already Completed", vbInformation
         Else
           rs.Close
           rs.Open " update orders set status=" & 2 & " where  order_id='" & Val(Text4.Text) & "' and customer_id='" & Val(Text1.Text) & "'", con, adOpenDynamic, adLockOptimistic
           MsgBox "Order completed", vbInformation
         End If
      Else
        MsgBox "Before completing order, plese give an order", vbInformation
      End If

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
