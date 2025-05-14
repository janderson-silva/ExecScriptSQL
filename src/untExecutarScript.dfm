object frmExecutarScript: TfrmExecutarScript
  Left = 0
  Top = 0
  Margins.Right = 0
  Caption = 'Executar Script'
  ClientHeight = 461
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object Splitter: TSplitter
    Left = 222
    Top = 0
    Height = 461
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitHeight = 376
  end
  object pnlLateral: TPanel
    Left = 0
    Top = 0
    Width = 222
    Height = 461
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 441
    object CheckListBox: TCheckListBox
      AlignWithMargins = True
      Left = 10
      Top = 65
      Width = 202
      Height = 381
      Margins.Left = 10
      Margins.Top = 15
      Margins.Right = 10
      Margins.Bottom = 15
      Align = alClient
      TabOrder = 0
      ExplicitTop = 15
      ExplicitWidth = 212
      ExplicitHeight = 411
    end
    object pnlSelecionar: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 15
      Width = 202
      Height = 35
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 15
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Selecionar .sql (F2)'
      Color = 5540912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      StyleElements = []
      OnClick = pnlSelecionarClick
      ExplicitTop = 411
    end
  end
  object pnlClient: TPanel
    Left = 225
    Top = 0
    Width = 559
    Height = 461
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 544
    ExplicitHeight = 441
    object pnlExecutarScript: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 411
      Width = 539
      Height = 35
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 15
      Margins.Right = 10
      Margins.Bottom = 15
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Executar Script (F4)'
      Color = 5540912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      StyleElements = []
      OnClick = pnlExecutarScriptClick
      ExplicitTop = 391
      ExplicitWidth = 524
    end
    object pgcPrincipal: TPageControl
      AlignWithMargins = True
      Left = 10
      Top = 15
      Width = 539
      Height = 381
      Margins.Left = 10
      Margins.Top = 15
      Margins.Right = 10
      Margins.Bottom = 0
      ActivePage = tsDica
      Align = alClient
      TabHeight = 30
      TabOrder = 1
      object tsScript: TTabSheet
        Caption = 'Script'
        ImageIndex = 1
        object MemoScript: TMemo
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 511
          Height = 321
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alClient
          ScrollBars = ssBoth
          TabOrder = 0
          ExplicitWidth = 496
          ExplicitHeight = 301
        end
      end
      object tsLog: TTabSheet
        Caption = 'Log'
        object MemoLog: TMemo
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 511
          Height = 321
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alClient
          ScrollBars = ssBoth
          TabOrder = 0
          ExplicitWidth = 496
          ExplicitHeight = 301
        end
      end
      object tsDica: TTabSheet
        Caption = 'Dicas'
        ImageIndex = 2
        object MemoDicas: TMemo
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 511
          Height = 321
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alClient
          Lines.Strings = (
            '2. Confirme que o arquivo .sql est'#225' salvo como UTF-8'
            #10'Abra o arquivo no Notepad++ ou VS Code'#10#10
            'Verifique a codifica'#231#227'o:'
            #10#10'Se estiver como ANSI ou outra, altere para UTF-8'#10#10
            'Salve novamente'#10#10
            'No Notepad++:'#10
            
              'Menu "Codifica'#231#227'o" '#8594' "Codificar em UTF-8" (ou UTF-8 sem BOM, se ' +
              'necess'#225'rio)'
            #10#10'Salve')
          ScrollBars = ssBoth
          TabOrder = 0
          ExplicitLeft = 18
          ExplicitTop = 18
        end
      end
    end
  end
  object FDScript: TFDScript
    SQLScripts = <>
    Connection = frmDmConexao.FDConnection
    Params = <>
    Macros = <>
    Left = 400
    Top = 168
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivos SQL (*.sql)|*.sql'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 399
    Top = 91
  end
end
