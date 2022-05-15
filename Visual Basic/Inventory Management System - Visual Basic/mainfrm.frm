VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form add_new 
   BackColor       =   &H80000012&
   Caption         =   "ADD NEW"
   ClientHeight    =   3105
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4725
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   Picture         =   "mainfrm.frx":0000
   ScaleHeight     =   11010
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
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
      Left            =   7800
      MaxLength       =   5
      TabIndex        =   15
      Top             =   5640
      Width           =   1335
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
      Left            =   7800
      MaxLength       =   15
      TabIndex        =   14
      Top             =   5040
      Width           =   1335
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
      Left            =   7800
      MaxLength       =   10
      TabIndex        =   13
      Top             =   4440
      Width           =   1335
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   0  'None
      Caption         =   "Sales"
      Height          =   8655
      Left            =   2280
      TabIndex        =   9
      Top             =   2880
      Width           =   15855
      Begin VB.CommandButton Command16 
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
         Height          =   495
         Left            =   8880
         Picture         =   "mainfrm.frx":7F917
         Style           =   1  'Graphical
         TabIndex        =   42
         Top             =   3840
         Width           =   1335
      End
      Begin VB.CommandButton Command15 
         Caption         =   "UPDATE"
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
         Left            =   10200
         Picture         =   "mainfrm.frx":80727
         Style           =   1  'Graphical
         TabIndex        =   41
         Top             =   3840
         Width           =   1335
      End
      Begin VB.CommandButton Command14 
         Caption         =   "DELETE"
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
         Left            =   9720
         Picture         =   "mainfrm.frx":81537
         Style           =   1  'Graphical
         TabIndex        =   40
         Top             =   4320
         Width           =   1215
      End
      Begin VB.TextBox Text11 
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
         Left            =   10320
         MaxLength       =   15
         TabIndex        =   37
         Top             =   2760
         Width           =   1215
      End
      Begin VB.TextBox Text10 
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
         Left            =   10320
         MaxLength       =   6
         TabIndex        =   36
         Top             =   2040
         Width           =   1215
      End
      Begin VB.TextBox Text9 
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
         Left            =   5520
         MaxLength       =   6
         TabIndex        =   33
         Top             =   360
         Width           =   1335
      End
      Begin VB.TextBox Text8 
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
         Left            =   5520
         MaxLength       =   2
         TabIndex        =   31
         Top             =   5160
         Width           =   855
      End
      Begin VB.TextBox Text7 
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
         Left            =   5520
         MaxLength       =   4
         TabIndex        =   29
         Top             =   4560
         Width           =   855
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
         Left            =   5520
         MaxLength       =   2
         TabIndex        =   27
         Top             =   3960
         Width           =   855
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
         Left            =   5520
         MaxLength       =   4
         TabIndex        =   25
         Top             =   3360
         Width           =   1335
      End
      Begin VB.CommandButton Command13 
         Caption         =   "DELETE"
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
         Left            =   6960
         Picture         =   "mainfrm.frx":82347
         Style           =   1  'Graphical
         TabIndex        =   23
         Top             =   6360
         Width           =   1335
      End
      Begin VB.CommandButton Command12 
         Caption         =   "SEARCH"
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
         Left            =   5640
         Picture         =   "mainfrm.frx":83157
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   6360
         Width           =   1335
      End
      Begin VB.CommandButton Command11 
         Caption         =   "UPDATE"
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
         Left            =   4320
         Picture         =   "mainfrm.frx":83F67
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   6360
         Width           =   1335
      End
      Begin VB.CommandButton Command10 
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
         Height          =   495
         Left            =   3000
         Picture         =   "mainfrm.frx":84D77
         Style           =   1  'Graphical
         TabIndex        =   20
         Top             =   6360
         Width           =   1335
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
         Left            =   5520
         MaxLength       =   6
         TabIndex        =   12
         Top             =   960
         Width           =   1335
      End
      Begin VB.Label Label14 
         BackStyle       =   0  'Transparent
         Caption         =   "Supplier Id"
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
         Left            =   8640
         TabIndex        =   39
         Top             =   2160
         Width           =   1575
      End
      Begin VB.Label Label13 
         BackStyle       =   0  'Transparent
         Caption         =   "Name"
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
         Left            =   8760
         TabIndex        =   38
         Top             =   2880
         Width           =   1095
      End
      Begin VB.Label Label12 
         BackStyle       =   0  'Transparent
         Caption         =   "- - - - - -"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   6240
         TabIndex        =   35
         Top             =   5880
         Width           =   1215
      End
      Begin VB.Label Label11 
         BackStyle       =   0  'Transparent
         Caption         =   "Available Stock"
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
         Left            =   4200
         TabIndex        =   34
         Top             =   5880
         Width           =   1935
      End
      Begin VB.Label Label10 
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
         Left            =   4200
         TabIndex        =   32
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "SIM"
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
         Left            =   4200
         TabIndex        =   30
         Top             =   5280
         Width           =   615
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "RAM"
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
         Left            =   4200
         TabIndex        =   28
         Top             =   3480
         Width           =   975
      End
      Begin VB.Label Label7 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Space"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   495
         Left            =   4200
         TabIndex        =   26
         Top             =   4680
         Width           =   735
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "Camera"
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
         Left            =   4200
         TabIndex        =   24
         Top             =   4080
         Width           =   975
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Price"
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
         Left            =   4200
         TabIndex        =   19
         Top             =   2880
         Width           =   975
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Model"
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
         Left            =   4200
         TabIndex        =   18
         Top             =   1680
         Width           =   855
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Company"
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
         Left            =   4200
         TabIndex        =   17
         Top             =   2280
         Width           =   1095
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "ProductId"
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
         Left            =   4200
         TabIndex        =   16
         Top             =   1080
         Width           =   1215
      End
   End
   Begin VB.CommandButton Command9 
      BackColor       =   &H00000000&
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
      Picture         =   "mainfrm.frx":85B87
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command8 
      BackColor       =   &H00000000&
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
      Picture         =   "mainfrm.frx":86997
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command7 
      BackColor       =   &H00000000&
      Caption         =   " "
      Height          =   735
      Left            =   18120
      Picture         =   "mainfrm.frx":877A7
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H00000000&
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
      Picture         =   "mainfrm.frx":885B7
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H00000000&
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
      Picture         =   "mainfrm.frx":893C7
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H00000000&
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
      Picture         =   "mainfrm.frx":8A1D7
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00000000&
      Caption         =   " "
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
      Left            =   0
      Picture         =   "mainfrm.frx":8AFE7
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00000000&
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
      Picture         =   "mainfrm.frx":8BDF7
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   2160
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000000&
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
      Picture         =   "mainfrm.frx":8CC07
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   2160
      Width           =   2295
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   1110
      Left            =   0
      TabIndex        =   10
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
            Caption         =   "Home"
            Key             =   "sims"
            Object.ToolTipText     =   "sims"
            ImageKey        =   "sims"
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Find"
            Key             =   "find"
            Object.ToolTipText     =   "find"
            ImageKey        =   "find"
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Order"
            Key             =   "order"
            Object.ToolTipText     =   "order"
            ImageKey        =   "order"
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Sales"
            Key             =   "sales"
            Object.ToolTipText     =   "sales"
            ImageKey        =   "sales"
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Stock"
            Key             =   "stock"
            Object.ToolTipText     =   "stock"
            ImageKey        =   "stock"
         EndProperty
      EndProperty
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   2760
      Top             =   9000
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=MSDAORA.1;User ID=shop;Persist Security Info=False"
      OLEDBString     =   "Provider=MSDAORA.1;User ID=shop;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   2280
      Top             =   9840
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
            Picture         =   "mainfrm.frx":8DA17
            Key             =   "stock"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "mainfrm.frx":91C59
            Key             =   "order"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "mainfrm.frx":9B443
            Key             =   "sales"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "mainfrm.frx":9F938
            Key             =   "find"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "mainfrm.frx":CF98A
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
Attribute VB_Name = "add_new"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim con As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim rs1 As New ADODB.Recordset

Private Sub Command10_Click()
   If Text9.Text = "mobile" Then
   MsgBox "Mobile"
     rs.Open "select * from item where product_id='" & Val(Text1.Text) & "'", con, adOpenDynamic, adLockOptimistic
     If rs.BOF = False Or rs.EOF = False Then
        MsgBox "Alredy exist id , try again"
        rs.Close
     Else
        rs.Close
        rs.Open "insert into item values (" & Val(Text1.Text) & ",'" & Text2.Text & "' ,'" & Text3.Text & "'," & Val(Text4.Text) & "," & Val(Text5.Text) & "," & Val(Text6.Text) & "," & 123 & ")", con, adOpenDynamic, adLockOptimistic
        rs.Open "insert into mobile values (" & Val(Text1.Text) & ",'" & Text8.Text & "' )", con, adOpenDynamic, adLockOptimistic
     End If
 ElseIf Text9.Text = "laptop" Then
   MsgBox "laptop"
      rs.Open "select * from item where product_id='" & Val(Text1.Text) & "'", con, adOpenDynamic, adLockOptimistic
     If rs.BOF = False Or rs.EOF = False Then
        MsgBox "Alredy exist id , try again"
        rs.Close
     Else
      rs.Close
      rs.Open "insert into item values (" & Val(Text1.Text) & ",'" & Text2.Text & "' ,'" & Text3.Text & "'," & Val(Text4.Text) & "," & Val(Text5.Text) & "," & Val(Text6.Text) & "," & 123 & ")", con, adOpenDynamic, adLockOptimistic
      rs.Open "insert into laptop values (" & Val(Text1.Text) & ",'" & Text8.Text & "' )", con, adOpenDynamic, adLockOptimistic
     End If
 Else
   MsgBox "Category not exsist"
 End If
End Sub

Private Sub Command11_Click()
    If Text9.Text = "mobile" Then
      MsgBox "mobile"
      rs.Open "select * from item,mobile where item.product_id=mobile.product_id and item.product_id='" & Val(Text1.Text) & "'", con, adOpenDynamic, adLockOptimistic
    If rs.BOF = True Or rs.EOF = True Then
        MsgBox "No Data to modify"
        rs.Close
    Else
       rs.Close
       rs.Open " update mobile set sim=" & Val(Text8.Text) & " where product_id=" & Val(Text1.Text) & " ", con, adOpenDynamic, adLockOptimistic
       rs.Open " update item set model='" & Text2.Text & "',company='" & Text3.Text & "',price=" & Val(Text4.Text) & ",ram=" & Val(Text5.Text) & ",camera=" & Val(Text6.Text) & " where product_id=" & Val(Text1.Text) & " ", con, adOpenDynamic, adLockOptimistic
    End If
  ElseIf Text9.Text = "laptop" Then
      MsgBox "laptop"
      rs.Open "select * from item,laptop where item.product_id=laptop.product_id and item.product_id='" & Val(Text1.Text) & "'", con, adOpenDynamic, adLockOptimistic
    If rs.BOF = True Or rs.EOF = True Then
        MsgBox "No Data to modify"
        rs.Close
    Else
       rs.Close
       rs.Open " update laptop set harddisk=" & Val(Text7.Text) & " where product_id=" & Val(Text1.Text) & " ", con, adOpenDynamic, adLockOptimistic
       rs.Open " update item set model=" & Text2.Text & ",company=" & Text3.Text & ",price=" & Val(Text4.Text) & ",ram=" & Val(Text5.Text) & ",camera=" & Val(Text6.Text) & " where product_id=" & Val(Text1.Text) & " ", con, adOpenDynamic, adLockOptimistic
    End If
  End If
End Sub

Private Sub Command12_Click()
     rs.Open "select quantity from item,stock where item.product_id=stock.product_id and item.product_id='" & Val(Text1.Text) & "'", con, adOpenDynamic, adLockOptimistic
     If rs.BOF = True Or rs.EOF = True Then
        MsgBox "No Stock Found"
        rs.Close
     Else
        Label12.Caption = rs!quantity
        rs.Close
     End If
End Sub

Private Sub Command13_Click()
     If Text9.Text = "mobile" Then
        MsgBox "mobile"
        rs.Open "delete from mobile where product_id='" & Val(Text1.Text) & "'", con, adOpenDynamic, adLockOptimistic
     ElseIf Text9.Text = "laptop" Then
        rs.Open "delete from laptop where product_id='" & Val(Text1.Text) & "'", con, adOpenDynamic, adLockOptimistic
     End If
        rs.Open "delete from item where product_id='" & Val(Text1.Text) & "'", con, adOpenDynamic, adLockOptimistic
End Sub

Private Sub Command15_Click()
      rs.Open "select * from supplier where supplier_id=" & Text10.Text, con, adOpenDynamic, adLockOptimistic
        If (rs.BOF = True Or rs.EOF = True) Then
           MsgBox "No record found"
         rs.Close
        Else
         rs.Close
         rs.Open " update supplier set name='" & Text11.Text & "' where supplier_id=" & Val(Text10.Text) & " ", con, adOpenDynamic, adLockOptimistic
       End If
End Sub

Private Sub Command16_Click()
      rs.Open "select * from supplier where supplier_id=" & Text10.Text, con, adOpenDynamic, adLockOptimistic
       If (rs.BOF = False Or rs.EOF = False) Then
         MsgBox "alreday exist"
         rs.Close
       Else
       rs.Close
       rs.Open "insert into supplier values (" & Val(Text10.Text) & ",'" & Text11.Text & "')", con, adOpenDynamic, adLockOptimistic
       
      End If
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

