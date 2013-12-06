object Form2: TForm2
  Left = 276
  Top = 164
  Caption = #1042#1099#1073#1086#1088' '#1089#1082#1080#1085#1072
  ClientHeight = 78
  ClientWidth = 279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Прочти: TsPageControl
    Left = 0
    Top = 0
    Width = 279
    Height = 78
    ActivePage = sTabSheet1
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'PAGECONTROL'
    object sTabSheet1: TsTabSheet
      Caption = #1042#1099#1073#1086#1088' '#1089#1082#1080#1085#1072
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object sGroupBox1: TsGroupBox
        Left = 0
        Top = 0
        Width = 271
        Height = 50
        Align = alClient
        Caption = #1057#1082#1080#1085#1099
        TabOrder = 0
        SkinData.SkinSection = 'GROUPBOX'
        object sComboBox1: TsComboBox
          Left = 16
          Top = 20
          Width = 169
          Height = 21
          Alignment = taLeftJustify
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'COMBOBOX'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'AlterMetro'
          OnChange = sComboBox1Change
          Items.Strings = (
            'AlterMetro'
            'Android OS'
            'Beijing'
            'BlueGauze'
            'Calcium'
            'Cold'
            'Elegant'
            'Lucky'
            'MacMetal'
            'MacOS2'
            'Matrix'
            'MetroUI'
            'Nautilus'
            'Neutral2'
            'Office2007 Black'
            'Pulsar'
            'Snow Leopard'
            'Toxic'
            'TV-b'
            'Ubuntu'
            'Vista'
            'Windows 8')
        end
        object sButton2: TsButton
          Left = 191
          Top = 21
          Width = 75
          Height = 20
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 1
          OnClick = sButton2Click
          SkinData.SkinSection = 'BUTTON'
        end
      end
    end
  end
end
