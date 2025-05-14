object frmConfigurarConexao: TfrmConfigurarConexao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configurar Conex'#227'o'
  ClientHeight = 386
  ClientWidth = 509
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object pnlConexao: TPanel
    Left = 0
    Top = 0
    Width = 509
    Height = 386
    Margins.Right = 0
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      509
      386)
    object lblDriverID: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 5
      Width = 489
      Height = 15
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'DriverID'
      ExplicitWidth = 42
    end
    object lblDatabase: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 51
      Width = 489
      Height = 15
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Database'
      ExplicitWidth = 48
    end
    object lblUser_name: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 97
      Width = 489
      Height = 15
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'User_name'
      ExplicitWidth = 58
    end
    object lblPassword: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 143
      Width = 489
      Height = 15
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Password'
      ExplicitWidth = 50
    end
    object lblPort: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 235
      Width = 489
      Height = 15
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Port'
      ExplicitWidth = 22
    end
    object lblServer: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 189
      Width = 489
      Height = 15
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Server'
      ExplicitWidth = 32
    end
    object lblVendorLib: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 281
      Width = 489
      Height = 15
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'VendorLib'
      ExplicitWidth = 53
    end
    object imgLocDatabase: TImage
      Left = 476
      Top = 69
      Width = 23
      Height = 23
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000170000
        00170806000000E02AD4A0000000097048597300000B1300000B1301009A9C18
        000001114944415478DA6364A021601C1E86FF9FC320C5C0C22089A6E6036302
        C35D8A0CFF3F9FA103C82BC7A2E637C37F8630C644860D6419FE7F260317031B
        C327064E76660666166CEAFE3070724C6560657986D7B47FFFEE337ABE5E8D6A
        F85C0651065989570C0202148531187CF97293D1E98906C2F03502F240C31F50
        257AFF03F187F7E28CEE2F5F410CDF21ACC120247A9D0A4643C0BBD79A8C1E6F
        6F400CDF29AEC82028788F6A86BF7FAF0474F97D88E1E7544419FEB0BCA29AE1
        2C7FC4188DEEBC1E357CD470520D3F26C3C9C0C2F319C864A682D17F19FE7CE1
        65B47AF21D512A9E526F07960615141BFD9FA18DD1FC463588895A9E9FD19004
        967F52E40707C33346931BCF61DC6152CD511B000020127618AD7B059B000000
        0049454E44AE426082}
      OnClick = imgLocDatabaseClick
      ExplicitLeft = 1048
    end
    object imgLocVendorLib: TImage
      Left = 476
      Top = 299
      Width = 23
      Height = 23
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000170000
        00170806000000E02AD4A0000000097048597300000B1300000B1301009A9C18
        000001114944415478DA6364A021601C1E86FF9FC320C5C0C22089A6E6036302
        C35D8A0CFF3F9FA103C82BC7A2E637C37F8630C644860D6419FE7F260317031B
        C327064E76660666166CEAFE3070724C6560657986D7B47FFFEE337ABE5E8D6A
        F85C0651065989570C0202148531187CF97293D1E98906C2F03502F240C31F50
        257AFF03F187F7E28CEE2F5F410CDF21ACC120247A9D0A4643C0BBD79A8C1E6F
        6F400CDF29AEC82028788F6A86BF7FAF0474F97D88E1E7544419FEB0BCA29AE1
        2C7FC4188DEEBC1E357CD470520D3F26C3C9C0C2F319C864A682D17F19FE7CE1
        65B47AF21D512A9E526F07960615141BFD9FA18DD1FC463588895A9E9FD19004
        967F52E40707C33346931BCF61DC6152CD511B000020127618AD7B059B000000
        0049454E44AE426082}
      OnClick = imgLocVendorLibClick
      ExplicitLeft = 1048
    end
    object edtDatabase: TEdit
      AlignWithMargins = True
      Left = 10
      Top = 69
      Width = 464
      Height = 23
      Margins.Left = 10
      Margins.Right = 35
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 1
    end
    object cbxDriverID: TComboBox
      AlignWithMargins = True
      Left = 10
      Top = 23
      Width = 489
      Height = 23
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Style = csDropDownList
      TabOrder = 0
      OnSelect = cbxDriverIDSelect
      Items.Strings = (
        'FB'
        'PG')
    end
    object edtUser_name: TEdit
      AlignWithMargins = True
      Left = 10
      Top = 115
      Width = 489
      Height = 23
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 2
    end
    object edtPassword: TEdit
      AlignWithMargins = True
      Left = 10
      Top = 161
      Width = 489
      Height = 23
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      PasswordChar = '*'
      TabOrder = 3
    end
    object edtPort: TEdit
      AlignWithMargins = True
      Left = 10
      Top = 253
      Width = 489
      Height = 23
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 5
    end
    object edtServer: TEdit
      AlignWithMargins = True
      Left = 10
      Top = 207
      Width = 489
      Height = 23
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 4
    end
    object edtVendorLib: TEdit
      AlignWithMargins = True
      Left = 10
      Top = 299
      Width = 464
      Height = 23
      Margins.Left = 10
      Margins.Right = 35
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 6
    end
    object pnlConfirmar: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 337
      Width = 489
      Height = 35
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 15
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Conectar Banco de Dados (F2)'
      Color = 5540912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      StyleElements = []
      OnClick = pnlConfirmarClick
    end
  end
  object OpenDialog: TOpenDialog
    Left = 225
    Top = 8
  end
end
