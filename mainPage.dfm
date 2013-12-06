object Form19: TForm19
  Left = 88
  Top = 93
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Quest Editor'
  ClientHeight = 668
  ClientWidth = 1127
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 8
    Top = 34
    Width = 321
    Height = 567
    Style = lbOwnerDrawVariable
    TabOrder = 2
    OnClick = ListBox1Click
    OnDblClick = ListBox1DblClick
    OnDrawItem = ListBox1DrawItem
  end
  object ListBox2: TListBox
    Left = 8
    Top = 68
    Width = 321
    Height = 537
    Style = lbOwnerDrawVariable
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnClick = ListBox2Click
    OnDblClick = ListBox2DblClick
    OnDrawItem = ListBox2DrawItem
  end
  object Button1: TButton
    Left = 885
    Top = 8
    Width = 74
    Height = 21
    Caption = #1054#1090#1082#1088#1099#1090#1100
    Style = bsSplitButton
    TabOrder = 0
    OnClick = Button1Click
  end
  object sFilenameEdit1: TsFilenameEdit
    Left = 8
    Top = 8
    Width = 813
    Height = 21
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 255
    ParentFont = False
    TabOrder = 1
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'EDIT'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    Filter = #1060#1072#1081#1083' '#1082#1074#1077#1089#1090#1086#1074'|tasks.data|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
  end
  object sProgressBar1: TsProgressBar
    Left = 8
    Top = 647
    Width = 1115
    Height = 17
    TabOrder = 3
    SkinData.SkinSection = 'GAUGE'
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 35
    Width = 57
    Height = 28
    Glyph.Data = {
      36160000424D3616000000000000360400002800000060000000300000000100
      08000000000000120000120B0000120B0000000100004900000050D9A50052D9
      A7004ED8A3004CD7A1004BD7A00047D69C0048D69D0046D59B0044D4990042D4
      97003ED294003DD293003CD191003BD1910038CF8E0038CF8D0036CF8C0034CE
      8A0033CD89002FCC85002DCB83002ACB83002DCC830029CA800022C97A0028C8
      7E0028C77C001DC876001FC8780017C470001AC2720015C36E0014C06C0022B8
      710021B7700020B66E0020B56E0020B46D004FA585004EA383004DA080004D9F
      7E001BAB65004C9D7C004B9B7A004A9978004A97770049957400489373004791
      7100468F6F00468D6E00468D6D00458B6C00438A6A00438A6900428968004088
      68003F8766003E8564003A866200008080003884600037845F0032805A003480
      5C00337F5B00327E5900307D5700367A5900367A5A0035785800307152000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D2A3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D48
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D2A2A3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D4848
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D2A212A3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D484648
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D2A22152A3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D48463948
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D2A221717212A2A2A2A2A2A2A2A2A2A2A2A2A3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D48463A3A46
      484848484848484848484848483D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D2A221717171D16161210100B0B07070404012A3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D48463A3A3A40
      38383532322F2F2C2C282826483D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D2A221717171F1F1F1313110F0D0D09070703002A3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D48463A3A3A4343
      433737343430302D2D292927483D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D2A221717171F1F1F1F141412180E0B0B080606022A3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D48463A3A3A434343
      433838353C31312E2E2B2B27483D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D2A251A17171F20202020201E1E1C10100A0A0707032A3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D48473B3B3B43444444
      444442423E32322F2F2C2C28483D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D2A241919191F20202020201E1B110E0C0C0805052A3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D48473B3B3B434444
      444444413F333330302D2B2B483D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D2A231717171F1F1F171716161210100B0B07072A3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D48473A3A3A4343
      433A3A3A363632322F2F2C2C483D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D2A221717171F1F1717171313110F0D0D09072A3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D48453A3A3A43
      433A3A3A3737343430302D2D483D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D2A221717222A2A2A2A2A2A2A2A2A2A2A2A2A3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D48463A3A46
      484848484848484848484848483D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D2A22172A3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D48463A48
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D2A222A3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D484648
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D2A2A3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D4848
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D2A3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D48
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
      3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D}
    NumGlyphs = 2
    TabOrder = 5
    Visible = False
    OnClick = BitBtn1Click
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 331
    Top = 32
    Width = 788
    Height = 609
    ActivePage = TabSheet1
    DockSite = True
    DoubleBuffered = True
    Enabled = False
    MultiLine = True
    ParentDoubleBuffered = False
    ScrollOpposite = True
    TabOrder = 6
    object TabSheet1: TTabSheet
      Caption = #1043#1083#1072#1074#1085#1072#1103
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 774
        Height = 366
        Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 52
          Height = 13
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
        end
        object sColorSelect1: TsColorSelect
          Left = 231
          Top = 10
          Width = 32
          Height = 32
          Glyph.Data = {
            76060000424D7606000000000000360000002800000014000000140000000100
            2000000000004006000000000000000000000000000000000000FF00FF008000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FFFF00FF00800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FFFF00FF00800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
            00FF800000FF800000FF800000FF800000FF800000FFFF00FF00}
          SkinData.SkinSection = 'SPEEDBUTTON'
          OnChange = sColorSelect1Change
          ColorValue = clNavy
          ImgWidth = 20
          ImgHeight = 20
          StandardDlg = True
        end
        object Label7: TLabel
          Left = 16
          Top = 51
          Width = 53
          Height = 13
          Caption = 'ID '#1082#1074#1077#1089#1090#1072':'
        end
        object Label9: TLabel
          Left = 288
          Top = 24
          Width = 35
          Height = 13
          Caption = #1040#1074#1090#1086#1088':'
        end
        object Label11: TLabel
          Left = 15
          Top = 78
          Width = 60
          Height = 13
          Caption = #1058#1080#1087' '#1082#1074#1077#1089#1090#1072':'
        end
        object Label12: TLabel
          Left = 15
          Top = 105
          Width = 72
          Height = 13
          Caption = #1054#1075#1088'. '#1074#1088#1077#1084#1077#1085#1080':'
        end
        object Label14: TLabel
          Left = 16
          Top = 132
          Width = 24
          Height = 13
          Caption = 'NPC:'
        end
        object Label15: TLabel
          Left = 154
          Top = 129
          Width = 7
          Height = 19
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 288
          Top = 52
          Width = 71
          Height = 13
          Caption = #1062#1080#1082#1083#1080#1095#1085#1086#1089#1090#1100':'
        end
        object Label17: TLabel
          Left = 288
          Top = 79
          Width = 95
          Height = 13
          Caption = #1050#1086#1083'-'#1074#1086' '#1088#1072#1079' '#1074' '#1094#1080#1082#1083':'
        end
        object Label18: TLabel
          Left = 15
          Top = 338
          Width = 59
          Height = 13
          Caption = #1056#1086#1076'. '#1082#1074#1077#1089#1090':'
        end
        object Label19: TLabel
          Left = 168
          Top = 338
          Width = 66
          Height = 13
          Caption = #1055#1088#1077#1076'. '#1082#1074#1077#1089#1090':'
        end
        object Label20: TLabel
          Left = 327
          Top = 338
          Width = 66
          Height = 13
          Caption = #1057#1083#1077#1076'. '#1082#1074#1077#1089#1090':'
        end
        object Label21: TLabel
          Left = 477
          Top = 338
          Width = 78
          Height = 13
          Caption = #1055#1077#1088'. '#1087#1086#1076#1082#1074#1077#1089#1090':'
        end
        object Label22: TLabel
          Left = 288
          Top = 213
          Width = 44
          Height = 13
          Caption = #1058#1088#1080#1075#1075#1077#1088':'
        end
        object Label10: TLabel
          Left = 16
          Top = 160
          Width = 41
          Height = 13
          Caption = #1059#1088#1086#1074#1085#1080':'
        end
        object Label37: TLabel
          Left = 155
          Top = 154
          Width = 7
          Height = 19
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label46: TLabel
          Left = 288
          Top = 132
          Width = 48
          Height = 13
          Caption = #1060#1088#1072#1082#1094#1080#1103':'
        end
        object Label47: TLabel
          Left = 288
          Top = 159
          Width = 48
          Height = 13
          Caption = #1055#1088#1077#1089#1090#1080#1078':'
        end
        object Label48: TLabel
          Left = 288
          Top = 186
          Width = 46
          Height = 13
          Caption = #1042#1083#1080#1103#1085#1080#1077':'
        end
        object Label13: TLabel
          Left = 288
          Top = 105
          Width = 71
          Height = 13
          Caption = #1050#1091#1083#1100#1090#1080#1074#1072#1094#1080#1103':'
        end
        object Label30: TLabel
          Left = 289
          Top = 240
          Width = 23
          Height = 13
          Caption = #1055#1086#1083':'
        end
        object Label31: TLabel
          Left = 16
          Top = 186
          Width = 55
          Height = 13
          Caption = #1058#1080#1087' '#1089#1076#1072#1095#1080':'
        end
        object Label32: TLabel
          Left = 16
          Top = 213
          Width = 45
          Height = 13
          Caption = #1058#1080#1087' NPC:'
        end
        object Label33: TLabel
          Left = 289
          Top = 267
          Width = 59
          Height = 13
          Caption = #1042#1088#1084'. '#1088#1072#1084#1082#1080':'
        end
        object QuestName: TEdit
          Left = 88
          Top = 21
          Width = 140
          Height = 21
          TabOrder = 0
          OnExit = QuestNameExit
        end
        object Edit8: TEdit
          Left = 88
          Top = 48
          Width = 140
          Height = 21
          MaxLength = 5
          TabOrder = 1
          OnExit = QuestNameExit
        end
        object Edit9: TEdit
          Left = 389
          Top = 21
          Width = 140
          Height = 21
          TabOrder = 2
        end
        object ComboBox2: TComboBox
          Left = 88
          Top = 75
          Width = 140
          Height = 21
          TabOrder = 3
          OnChange = QuestNameExit
          Items.Strings = (
            #1054#1073#1099#1095#1085#1099#1081
            #1055#1086#1074#1090#1086#1088#1103#1102#1097#1080#1081#1089#1103
            #1059#1074#1072#1078#1077#1085#1080#1077
            #1043#1077#1088#1086#1081
            #1048#1089#1087#1099#1090#1072#1085#1080#1077
            #1055#1088#1080#1082#1083#1102#1095#1077#1085#1080#1077
            #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
            #1051#1077#1075#1077#1085#1076#1072
            #1041#1080#1090#1074#1072
            #1055#1072#1073#1083#1080#1082' '#1082#1074#1077#1089#1090
            #1044#1086#1089#1082#1072' '#1089#1077#1084#1080' '#1091#1073#1080#1081#1089#1090#1074
            #1050#1083#1072#1085#1093#1086#1083#1083
            #1050#1061' '#1048#1074#1077#1085#1090)
        end
        object Edit11: TEdit
          Left = 88
          Top = 102
          Width = 140
          Height = 21
          TabOrder = 4
          OnExit = QuestNameExit
        end
        object Edit13: TEdit
          Left = 88
          Top = 129
          Width = 59
          Height = 21
          TabOrder = 5
          OnExit = QuestNameExit
        end
        object Edit14: TEdit
          Left = 169
          Top = 129
          Width = 59
          Height = 21
          TabOrder = 6
          OnExit = QuestNameExit
        end
        object Edit15: TEdit
          Left = 389
          Top = 75
          Width = 140
          Height = 21
          TabOrder = 7
          TextHint = #1050#1086#1083'-'#1074#1086' '#1087#1086#1074#1090#1086#1088#1074' '#1074' '#1094#1080#1082#1083
        end
        object Edit16: TEdit
          Left = 80
          Top = 335
          Width = 72
          Height = 21
          TabOrder = 8
        end
        object Edit17: TEdit
          Left = 240
          Top = 335
          Width = 72
          Height = 21
          TabOrder = 9
        end
        object Edit18: TEdit
          Left = 399
          Top = 335
          Width = 72
          Height = 21
          TabOrder = 10
        end
        object Edit19: TEdit
          Left = 561
          Top = 335
          Width = 72
          Height = 21
          TabOrder = 11
        end
        object GroupBox6: TGroupBox
          Left = 593
          Top = 151
          Width = 168
          Height = 85
          Caption = #1058#1080#1087#1099' '#1072#1082#1090#1080#1074#1072#1094#1080#1080' '#1087#1086#1076#1082#1074#1077#1089#1090#1086#1074
          TabOrder = 12
          object CheckBox15: TCheckBox
            Left = 10
            Top = 62
            Width = 94
            Height = 17
            Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081
            TabOrder = 0
          end
          object CheckBox14: TCheckBox
            Left = 10
            Top = 39
            Width = 79
            Height = 17
            Caption = 'C'#1083#1091#1095#1072#1081#1085#1099#1081
            TabOrder = 1
          end
          object CheckBox13: TCheckBox
            Left = 10
            Top = 16
            Width = 86
            Height = 17
            Caption = #1055#1077#1088#1074#1099#1081
            TabOrder = 2
          end
        end
        object Edit28: TEdit
          Left = 88
          Top = 156
          Width = 59
          Height = 21
          MaxLength = 3
          TabOrder = 13
        end
        object Edit29: TEdit
          Left = 169
          Top = 156
          Width = 59
          Height = 21
          MaxLength = 3
          TabOrder = 14
        end
        object ComboBox4: TComboBox
          Left = 389
          Top = 48
          Width = 140
          Height = 21
          TabOrder = 15
          OnChange = QuestNameExit
          Items.Strings = (
            #1054#1073#1099#1095#1085#1099#1081
            #1055#1086#1074#1090#1086#1088#1103#1102#1097#1080#1081#1089#1103
            #1059#1074#1072#1078#1077#1085#1080#1077
            #1043#1077#1088#1086#1081
            #1048#1089#1087#1099#1090#1072#1085#1080#1077
            #1055#1088#1080#1082#1083#1102#1095#1077#1085#1080#1077
            #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
            #1051#1077#1075#1077#1085#1076#1072
            #1041#1080#1090#1074#1072
            #1055#1072#1073#1083#1080#1082' '#1082#1074#1077#1089#1090
            #1044#1086#1089#1082#1072' '#1089#1077#1084#1080' '#1091#1073#1080#1081#1089#1090#1074
            #1050#1083#1072#1085#1093#1086#1083#1083
            #1050#1061' '#1048#1074#1077#1085#1090)
        end
        object ComboBox5: TComboBox
          Left = 389
          Top = 129
          Width = 140
          Height = 21
          TabOrder = 16
          OnChange = QuestNameExit
          Items.Strings = (
            #1051#1102#1073#1072#1103
            #1083#1086#1083'1'
            #1083#1086#1083'2'
            #1083#1086#1083'3'
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            #1054#1088#1076#1077#1085' '#1089#1086#1083#1085#1094#1072
            #1054#1088#1076#1077#1085' '#1084#1088#1072#1082#1072
            #1040#1088#1084#1080#1103' '#1079#1072#1088#1080)
        end
        object GroupBox9: TGroupBox
          Left = 593
          Top = 12
          Width = 168
          Height = 133
          Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1080
          TabOrder = 17
          object Label49: TLabel
            Left = 10
            Top = 21
            Width = 40
            Height = 13
            Caption = #1050#1091#1079#1085#1077#1094':'
          end
          object Label50: TLabel
            Left = 10
            Top = 47
            Width = 47
            Height = 13
            Caption = #1055#1086#1088#1090#1085#1086#1081':'
          end
          object Label51: TLabel
            Left = 10
            Top = 74
            Width = 69
            Height = 13
            Caption = #1056#1077#1084#1077#1089#1083#1077#1085#1085#1080#1082':'
          end
          object Label52: TLabel
            Left = 10
            Top = 101
            Width = 53
            Height = 13
            Caption = #1040#1087#1090#1077#1082#1072#1088#1100':'
          end
          object sSpinEdit1: TsSpinEdit
            Left = 97
            Top = 17
            Width = 55
            Height = 21
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            EditorEnabled = False
            MaxValue = 10
            MinValue = 0
            Value = 0
          end
          object sSpinEdit2: TsSpinEdit
            Left = 97
            Top = 44
            Width = 55
            Height = 21
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            EditorEnabled = False
            MaxValue = 10
            MinValue = 0
            Value = 0
          end
          object sSpinEdit3: TsSpinEdit
            Left = 97
            Top = 71
            Width = 55
            Height = 21
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            EditorEnabled = False
            MaxValue = 10
            MinValue = 0
            Value = 0
          end
          object sSpinEdit4: TsSpinEdit
            Left = 97
            Top = 98
            Width = 55
            Height = 21
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            EditorEnabled = False
            MaxValue = 10
            MinValue = 0
            Value = 0
          end
        end
        object ComboBox6: TComboBox
          Left = 389
          Top = 102
          Width = 140
          Height = 21
          TabOrder = 18
          OnChange = QuestNameExit
          Items.Strings = (
            '[0] '#1057#1090#1086#1081#1082#1080#1081
            '[1] '#1051#1102#1073#1086#1087#1099#1090#1085#1099#1081
            '[2] '#1054#1087#1099#1090#1085#1099#1081
            '[3] '#1056#1072#1089#1089#1091#1076#1080#1090#1077#1083#1100#1085#1099#1081
            '[4] '#1047#1072#1075#1072#1076#1086#1095#1085#1099#1081
            '[5] '#1046#1077#1089#1090#1086#1082#1080#1081
            '[6] '#1047#1083#1086#1081
            '[7] '#1054#1090#1088#1077#1096#1077#1085#1085#1099#1081
            '[8] '#1041#1083#1072#1075#1086#1095#1077#1089#1090#1080#1074#1099#1081
            '[20] '#1041#1077#1079#1091#1087#1088#1077#1095#1085#1099#1081
            '[21] '#1055#1088#1086#1089#1074#1103#1097#1077#1085#1085#1099#1081
            '[22] '#1041#1077#1089#1089#1084#1077#1088#1090#1085#1099#1081
            '[30] '#1044#1077#1084#1086#1085
            '[31] '#1044#1091#1093' '#1079#1083#1072
            '[32] '#1057#1099#1085' '#1072#1076#1072)
        end
        object ComboBox7: TComboBox
          Left = 389
          Top = 237
          Width = 140
          Height = 21
          TabOrder = 19
          OnChange = QuestNameExit
          Items.Strings = (
            #1051#1102#1073#1086#1081
            #1052#1091#1078#1089#1082#1086#1081
            #1046#1077#1085#1089#1082#1080#1081)
        end
        object ComboBox8: TComboBox
          Left = 88
          Top = 183
          Width = 140
          Height = 21
          TabOrder = 20
          OnChange = QuestNameExit
          Items.Strings = (
            '[0] '#1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081
            '[1] '#1059#1073#1080#1090#1100' '#1084#1086#1085#1089#1090#1088#1086#1074
            '[2] '#1055#1086#1083#1091#1095#1080#1090#1100' '#1084#1086#1085#1077#1090#1099' '#1080' '#1087#1088#1077#1076#1084#1077#1090#1099
            '[3] '#1040#1074#1090#1086#1089#1076#1072#1095#1072
            '[4] '#1055#1088#1080#1076#1090#1080' '#1085#1072' '#1084#1077#1089#1090#1086
            '[5] '#1055#1086#1076#1086#1078#1076#1072#1090#1100
            '[6]'
            '[7]'
            '[8]'
            '[9]'
            '[10]'
            '[11]'
            '[12]'
            '[13] '#1059#1073#1080#1090#1100' '#1083#1102#1076#1077#1081
            '[14]'
            '[15]')
        end
        object ComboBox9: TComboBox
          Left = 88
          Top = 210
          Width = 140
          Height = 21
          TabOrder = 21
          OnChange = QuestNameExit
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15')
        end
        object ComboBox10: TComboBox
          Left = 88
          Top = 237
          Width = 140
          Height = 21
          TabOrder = 22
          OnChange = QuestNameExit
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15')
        end
        object ComboBox11: TComboBox
          Left = 88
          Top = 264
          Width = 140
          Height = 21
          TabOrder = 23
          OnChange = QuestNameExit
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15')
        end
        object ComboBox12: TComboBox
          Left = 88
          Top = 291
          Width = 140
          Height = 21
          TabOrder = 24
          OnChange = QuestNameExit
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15')
        end
        object Edit21: TEdit
          Left = 389
          Top = 264
          Width = 140
          Height = 21
          TabOrder = 25
        end
        object CheckBox5: TCheckBox
          Left = 365
          Top = 264
          Width = 18
          Height = 19
          TabOrder = 26
        end
      end
      object GroupBox5: TGroupBox
        Left = 3
        Top = 375
        Width = 774
        Height = 207
        Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1092#1083#1072#1075#1080
        TabOrder = 1
        object CheckBox2: TCheckBox
          Left = 16
          Top = 24
          Width = 129
          Height = 17
          Caption = #1055#1088#1086#1074#1072#1083' '#1087#1088#1080' '#1074#1099#1093#1086#1076#1077
          TabOrder = 0
          OnClick = QuestNameExit
        end
        object CheckBox3: TCheckBox
          Left = 16
          Top = 47
          Width = 129
          Height = 17
          Caption = #1055#1088#1086#1074#1072#1083' '#1087#1086#1089#1083#1077' '#1076#1072#1090#1099':'
          TabOrder = 1
          OnClick = QuestNameExit
        end
        object sMonthCalendar1: TsMonthCalendar
          Left = 15
          Top = 70
          Height = 131
          BevelWidth = 1
          BorderWidth = 3
          Caption = ' '
          TabOrder = 2
          SkinData.SkinSection = 'PANEL'
          CalendarDate = 1132618.000000000000000000
          UseCurrentDate = False
        end
        object CheckBox4: TCheckBox
          Left = 207
          Top = 23
          Width = 169
          Height = 17
          Caption = #1055#1088#1086#1074#1072#1083' '#1087#1088#1080' '#1087#1086#1090#1077#1088#1077' '#1087#1088#1077#1076#1084#1077#1090#1072
          TabOrder = 3
        end
        object CheckBox6: TCheckBox
          Left = 207
          Top = 46
          Width = 114
          Height = 17
          Caption = #1053#1072#1083#1080#1095#1080#1077' '#1092#1088#1072#1082#1094#1080#1080
          TabOrder = 4
        end
        object CheckBox7: TCheckBox
          Left = 207
          Top = 69
          Width = 114
          Height = 17
          Caption = #1053#1072#1083#1080#1095#1080#1077' '#1090#1088#1080#1075#1075#1077#1088#1072
          TabOrder = 5
        end
        object CheckBox8: TCheckBox
          Left = 207
          Top = 92
          Width = 154
          Height = 17
          Caption = #1041#1077#1088#1077#1090#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
          TabOrder = 6
        end
        object CheckBox9: TCheckBox
          Left = 207
          Top = 115
          Width = 186
          Height = 17
          Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1073#1077#1088#1077#1090#1089#1103' '#1074' '#1090#1086#1095#1082#1077
          TabOrder = 7
        end
        object CheckBox10: TCheckBox
          Left = 207
          Top = 138
          Width = 82
          Height = 17
          Caption = #1042#1089#1077#1075#1076#1072' False'
          Enabled = False
          TabOrder = 8
        end
        object CheckBox11: TCheckBox
          Left = 207
          Top = 161
          Width = 138
          Height = 17
          Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1091#1084#1077#1088#1077#1090#1100
          TabOrder = 9
        end
        object CheckBox12: TCheckBox
          Left = 207
          Top = 183
          Width = 186
          Height = 21
          Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1077#1090#1089#1103' '#1074' '#1089#1087#1080#1089#1082#1077' '#1082#1074#1077#1089#1090#1086#1074
          TabOrder = 10
        end
      end
      object Edit20: TEdit
        Left = 392
        Top = 213
        Width = 140
        Height = 21
        TabOrder = 2
      end
      object GroupBox8: TGroupBox
        Left = 475
        Top = 390
        Width = 294
        Height = 188
        Caption = #1053#1077#1080#1079#1074#1077#1089#1090#1085#1086#1077
        TabOrder = 3
        object Label24: TLabel
          Left = 135
          Top = 22
          Width = 51
          Height = 13
          Caption = '- '#1042#1089#1077#1075#1076#1072' 0'
        end
        object Label25: TLabel
          Left = 135
          Top = 49
          Width = 51
          Height = 13
          Caption = '- '#1042#1089#1077#1075#1076#1072' 0'
        end
        object Label26: TLabel
          Left = 135
          Top = 76
          Width = 51
          Height = 13
          Caption = '- '#1042#1089#1077#1075#1076#1072' 0'
        end
        object Label27: TLabel
          Left = 135
          Top = 102
          Width = 51
          Height = 13
          Caption = '- '#1042#1089#1077#1075#1076#1072' 0'
        end
        object Label28: TLabel
          Left = 135
          Top = 130
          Width = 51
          Height = 13
          Caption = '- '#1042#1089#1077#1075#1076#1072' 0'
        end
        object Label29: TLabel
          Left = 135
          Top = 156
          Width = 80
          Height = 13
          Caption = '- '#1053#1077#1082#1080#1081' '#1086#1092#1092#1089#1077#1090
        end
      end
      object Edit22: TEdit
        Left = 483
        Top = 409
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object Edit23: TEdit
        Left = 483
        Top = 436
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object Edit24: TEdit
        Left = 483
        Top = 463
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object Edit25: TEdit
        Left = 483
        Top = 490
        Width = 121
        Height = 21
        TabOrder = 7
      end
      object Edit26: TEdit
        Left = 483
        Top = 517
        Width = 121
        Height = 21
        TabOrder = 8
      end
      object Edit27: TEdit
        Left = 483
        Top = 544
        Width = 121
        Height = 21
        TabOrder = 9
      end
      object Edit44: TEdit
        Left = 392
        Top = 159
        Width = 140
        Height = 21
        TabOrder = 10
      end
      object Edit45: TEdit
        Left = 392
        Top = 186
        Width = 140
        Height = 21
        TabOrder = 11
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1053#1072#1075#1088#1072#1076#1099
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = False
      object PageControl2: TPageControl
        Left = 1
        Top = 0
        Width = 779
        Height = 581
        ActivePage = TabSheet3
        TabOrder = 0
        object TabSheet3: TTabSheet
          Caption = #1047#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1077
          object Edit1: TEdit
            Left = 112
            Top = 11
            Width = 121
            Height = 21
            TabOrder = 0
          end
          object Edit10: TEdit
            Left = 112
            Top = 38
            Width = 121
            Height = 21
            TabOrder = 1
            Text = 'Edit1'
          end
          object Edit12: TEdit
            Left = 112
            Top = 362
            Width = 121
            Height = 21
            TabOrder = 2
            Text = 'Edit1'
          end
          object Edit30: TEdit
            Left = 112
            Top = 65
            Width = 121
            Height = 21
            TabOrder = 3
            Text = 'Edit1'
          end
          object Edit31: TEdit
            Left = 112
            Top = 335
            Width = 121
            Height = 21
            TabOrder = 4
            Text = 'Edit1'
          end
          object Edit32: TEdit
            Left = 112
            Top = 92
            Width = 121
            Height = 21
            TabOrder = 5
            Text = 'Edit1'
          end
          object Edit33: TEdit
            Left = 112
            Top = 308
            Width = 121
            Height = 21
            TabOrder = 6
            Text = 'Edit1'
          end
          object Edit34: TEdit
            Left = 112
            Top = 281
            Width = 121
            Height = 21
            TabOrder = 7
            Text = 'Edit1'
          end
          object Edit35: TEdit
            Left = 112
            Top = 254
            Width = 121
            Height = 21
            TabOrder = 8
            Text = 'Edit1'
          end
          object Edit36: TEdit
            Left = 112
            Top = 227
            Width = 121
            Height = 21
            TabOrder = 9
            Text = 'Edit1'
          end
          object Edit37: TEdit
            Left = 112
            Top = 119
            Width = 121
            Height = 21
            TabOrder = 10
            Text = 'Edit1'
          end
          object Edit38: TEdit
            Left = 112
            Top = 146
            Width = 121
            Height = 21
            TabOrder = 11
            Text = 'Edit1'
          end
          object Edit39: TEdit
            Left = 112
            Top = 173
            Width = 121
            Height = 21
            TabOrder = 12
            Text = 'Edit1'
          end
          object Edit40: TEdit
            Left = 112
            Top = 200
            Width = 121
            Height = 21
            TabOrder = 13
            Text = 'Edit1'
          end
        end
        object TabSheet7: TTabSheet
          Caption = #1047#1072' '#1087#1088#1086#1074#1072#1083
          ImageIndex = 1
        end
        object TabSheet8: TTabSheet
          Caption = 'TabSheet8'
          ImageIndex = 2
        end
      end
    end
    object TabSheet5: TTabSheet
      ParentCustomHint = False
      Caption = #1044#1080#1072#1083#1086#1075#1080
      DoubleBuffered = False
      ImageIndex = 4
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = False
      object Label3: TLabel
        Left = 397
        Top = 1
        Width = 148
        Height = 13
        Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1077' '#1087#1088#1080' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080':'
      end
      object Label2: TLabel
        Left = 3
        Top = 1
        Width = 98
        Height = 13
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1079#1072#1076#1072#1085#1080#1103':'
      end
      object Memo2: TMemo
        Left = 397
        Top = 20
        Width = 380
        Height = 100
        TabOrder = 0
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 126
        Width = 774
        Height = 451
        Caption = '    '#1044#1080#1072#1083#1086#1075#1080
        TabOrder = 1
        object Label4: TLabel
          Left = 184
          Top = 26
          Width = 38
          Height = 13
          Caption = 'Unknow'
        end
        object ListBox3: TListBox
          Left = 12
          Top = 21
          Width = 153
          Height = 73
          ItemHeight = 13
          Items.Strings = (
            #1042#1079#1103#1090#1080#1077' '#1082#1074#1077#1089#1090#1072
            #1053#1077#1087#1086#1076#1093#1086#1076#1103#1097#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103
            #1044#1086#1089#1090#1072#1074#1082#1072' '#1087#1088#1077#1076#1084#1077#1090#1072
            #1042' '#1087#1088#1086#1094#1077#1089#1089#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
            #1057#1076#1072#1095#1072' '#1082#1074#1077#1089#1090#1072)
          TabOrder = 0
          OnClick = ListBox3Click
        end
        object CheckBox1: TCheckBox
          Left = 5
          Top = -1
          Width = 17
          Height = 17
          Enabled = False
          TabOrder = 1
        end
        object Edit3: TEdit
          Left = 228
          Top = 23
          Width = 121
          Height = 21
          TabOrder = 2
          OnExit = Edit3Exit
        end
        object GroupBox3: TGroupBox
          Left = 3
          Top = 100
          Width = 768
          Height = 349
          Caption = #1056#1077#1087#1083#1080#1082#1080' '#1053#1055#1057
          TabOrder = 3
          object Label5: TLabel
            Left = 6
            Top = 124
            Width = 60
            Height = 13
            Caption = 'ID '#1056#1077#1087#1083#1080#1082#1080':'
          end
          object Label6: TLabel
            Left = 6
            Top = 150
            Width = 117
            Height = 13
            Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1088#1077#1087#1083#1080#1082#1072':'
          end
          object ListBox4: TListBox
            Left = 8
            Top = 21
            Width = 167
            Height = 73
            ItemHeight = 13
            TabOrder = 0
            OnClick = ListBox4Click
          end
          object Memo3: TMemo
            Left = 181
            Top = 21
            Width = 584
            Height = 148
            TabOrder = 1
            OnExit = Edit4Exit
          end
          object Edit4: TEdit
            Left = 125
            Top = 120
            Width = 50
            Height = 21
            TabOrder = 2
            OnExit = Edit4Exit
          end
          object Edit5: TEdit
            Left = 125
            Top = 146
            Width = 50
            Height = 21
            TabOrder = 3
            OnExit = Edit4Exit
          end
          object GroupBox4: TGroupBox
            Left = 2
            Top = 169
            Width = 763
            Height = 176
            Caption = #1042#1072#1088#1080#1072#1085#1090#1099' '#1086#1090#1074#1077#1090#1086#1074
            TabOrder = 4
            object Label8: TLabel
              Left = 3
              Top = 150
              Width = 54
              Height = 13
              Caption = 'ID '#1050#1074#1077#1089#1090#1072':'
            end
            object ListBox5: TListBox
              Left = 3
              Top = 24
              Width = 169
              Height = 66
              ItemHeight = 13
              TabOrder = 0
              OnClick = ListBox5Click
            end
            object Edit7: TEdit
              Left = 90
              Top = 146
              Width = 82
              Height = 21
              TabOrder = 1
              OnExit = Edit6Exit
            end
            object Memo4: TMemo
              Left = 182
              Top = 25
              Width = 578
              Height = 148
              TabOrder = 2
              OnExit = Edit6Exit
            end
            object ComboBox1: TComboBox
              Left = 3
              Top = 119
              Width = 169
              Height = 21
              TabOrder = 3
              OnClick = Edit4Exit
              Items.Strings = (
                #1042#1079#1103#1090#1080#1077' '#1082#1074#1077#1089#1090#1072
                #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1082#1074#1077#1089#1090#1072
                #1042#1099#1093#1086#1076' '#1080#1079' '#1076#1080#1072#1083#1086#1075#1072
                #1042#1099#1093#1086#1076' '#1080#1079' '#1082#1074#1077#1089#1090#1072
                #1055#1088#1086#1074#1072#1083' '#1082#1074#1077#1089#1090#1072
                #1053#1072#1079#1072#1076
                #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1087#1088#1086#1074#1072#1083#1072
                #1042#1099#1079#1086#1074' '#1088#1077#1087#1083#1080#1082#1080':')
            end
            object Edit6: TEdit
              Left = 143
              Top = 119
              Width = 33
              Height = 21
              TabOrder = 4
              Visible = False
              OnExit = Edit6Exit
            end
            object Button4: TButton
              Left = 3
              Top = 96
              Width = 73
              Height = 17
              Caption = '+'
              TabOrder = 5
              OnClick = Button4Click
            end
            object Button5: TButton
              Left = 102
              Top = 96
              Width = 70
              Height = 17
              Caption = '-'
              TabOrder = 6
              OnClick = Button5Click
            end
          end
          object Button6: TButton
            Left = 9
            Top = 100
            Width = 70
            Height = 17
            Caption = '+'
            TabOrder = 5
            OnClick = Button6Click
          end
          object Button7: TButton
            Left = 105
            Top = 100
            Width = 70
            Height = 17
            Caption = '-'
            TabOrder = 6
            OnClick = Button7Click
          end
        end
      end
      object Memo1: TMemo
        Left = 3
        Top = 19
        Width = 380
        Height = 100
        TabOrder = 2
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1051#1086#1082#1072#1094#1080#1103
      ImageIndex = 5
    end
    object TabSheet2: TTabSheet
      AlignWithMargins = True
      Caption = 'PQ '#1055#1072#1088#1072#1084#1077#1090#1088#1099
      ImageIndex = 1
      object GroupBox10: TGroupBox
        Left = 3
        Top = 3
        Width = 768
        Height = 100
        Caption = #1041#1077#1088#1077#1090#1089#1103' '#1074' '#1086#1073#1083#1072#1089#1090#1080
        TabOrder = 0
      end
      object GroupBox11: TGroupBox
        Left = 3
        Top = 117
        Width = 768
        Height = 100
        Caption = #1059#1089#1087#1077#1093' '#1087#1088#1080' '#1074#1093#1086#1076#1077' '#1074' '#1086#1073#1083#1072#1089#1090#1100
        TabOrder = 1
      end
      object GroupBox13: TGroupBox
        Left = 3
        Top = 223
        Width = 768
        Height = 100
        Caption = #1055#1088#1086#1074#1072#1083' '#1087#1088#1080' '#1074#1093#1086#1076#1077' '#1074' '#1086#1073#1083#1072#1089#1090#1100
        TabOrder = 2
      end
      object GroupBox14: TGroupBox
        Left = 3
        Top = 337
        Width = 768
        Height = 100
        Caption = #1055#1088#1086#1074#1072#1083' '#1087#1088#1080' '#1074#1099#1093#1086#1076#1077' '#1080#1079' '#1086#1073#1083#1072#1089#1090#1080
        TabOrder = 3
      end
      object GroupBox12: TGroupBox
        Left = 3
        Top = 451
        Width = 768
        Height = 100
        Caption = #1055#1091#1073#1083#1080#1095#1085#1099#1081' '#1082#1074#1077#1089#1090
        TabOrder = 4
      end
    end
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 611
    Width = 100
    Height = 30
    Default = True
    Enabled = False
    Glyph.Data = {
      C6050000424DC605000000000000360400002800000014000000140000000100
      08000000000090010000120B0000120B000000010000D0000000096E0D0017AE
      49000080800013D36F0000725C0045D06C00319B44002DAD4B0040EB99000F88
      26003BD472001FC95B000065420055FEB4003EBF68001AC6550000DA75001AA2
      3D0026E98E0035B55700007A5C0043D57400469D4E0010841E0018C14D001A8C
      2D001BD977001CCF65003FCA6800067C63001DAC470047E791006FF9BF0012DD
      7F0048BB6700167B1D00258931001ED16D0034A950002BCD690028CB65000579
      4500217A220049D27F002FDC79006DF7BD0043BF690007765E0022BE4A0020C4
      5200198B2C0034E78D001BBD49003995430014DA790015D16A001ADD7D001B96
      2F0015CC63000985690033B35300007D5D0017D36D0022C44C0043D371001FC1
      540001775D001ED0680027953B0035DC79000D77130039BC630029AC480021C0
      4C00148A230044C7740020CC620034ED98002BA3450077FCC40007DF7C0033B1
      52000E821D001DD570002FE68B001ECD600040EE9D0019DE80001AE285001DAB
      450020C656001BCA5C003EA9540015952C0014D7730008DD7A00007C630035D8
      74004ABD680002795F001EC4580018D470001BD167000E8522000A74120014B6
      4B00007363000981630020DB7A001390270047EC9A002EEA91004EB866002ADC
      7E001B9B340031A2490019C759003AC26B0008876B001DCF6700057F62000DD4
      6E0045E7960021C2500022C04E001AC250000074630013E0820043CB690020C9
      5C001DCB5E0038D9760008816A001BC148001DD7740017D67200469F51001FC4
      540003745C0021C55600319E46001CC04F001CAE4A001DD36F00017B440036DD
      7D002FE88F0019E184000381630045D26E001FC95E0017D370001FCD65001BD1
      6B00007D5C0020C758002BAE4C0040D173000C771400098164001ECF6900037E
      5F00077E650033B35400108622001AC55700026742004ABD660008765F001ED1
      6A00148D24004BBF6A001AD5720022C350001088260010871E001ECF64003CC3
      6B0022C7590042CB6A001A8D2E001AC659001FCB5F001EC95C00469F4E0020C5
      50001CD87700067F62001FD36C0017D16A00027E5E0022C54C0000785C001083
      1D0040EE9F0035D977001EC758001BD168000A8063001ECE66001BC04B00489E
      50001ED36F0047D36E000D78140035B35400FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202020202
      1D2A239E9E9E006302020202020202020202020204C9CB853F3F170402020202
      0202020202020202041605344949C104020202020202020202020202041695C8
      7B7B170402020202020202020202020204C94018313117040202020202020202
      020202026A88157D8989AF7E020202020202A28AA8A8A8A8A6350A0F9B9B520C
      040404040404244432323232675C9D740B415D67AEAEAEAEAE68061F3A434343
      432728828264418181818181314A8C6E038686CACAC5C59898B6B6B6B69B9B9B
      7BAA73087987873E3E999999C7C74C5B747474748D6D260D126F6F54336C3725
      2525662C9191C3C3C3724E4B75B1B1B10E2B71656565699C13133C3C3C3976A1
      A178787890707A5EBAAC112914141414149402020202020260220836381A5984
      0202020202020202020202023D62562157571E9F020202020202020202020202
      3D62C27F58588E6B0202020202020202020202029AAB4D105F5F01C602020202
      0202020202020202BE2E4F2D2D2D47A10202020202020202020202023B481C1C
      1C1C073B020202020202}
    Layout = blGlyphBottom
    TabOrder = 7
  end
  object BitBtn3: TBitBtn
    Left = 230
    Top = 611
    Width = 100
    Height = 30
    Default = True
    Enabled = False
    Glyph.Data = {
      76060000424D7606000000000000360400002800000018000000180000000100
      08000000000040020000AF0D0000AF0D00000001000056000000000066000080
      8000004A9F000000B70000009D000000E7000014B700000089000000D800004E
      9B00000FB4000000D100006B8C000000AF000000C90000007C00000099000000
      C400003DA20000519B000014C600000076000000F9000000A9000014C3000000
      9200000FC7000000EB000000C1000014C100000072000000BF00000081000000
      8E000000A3000000E3000014BB000000F400000070000014B0000045A1000000
      B3000000E1000000D300000083000038A6000000DE00004E9D000000BB000000
      CC000000A50000008C000000AC0000007A000014BD000014B50000668F000000
      A0000000C6000000EE000000D60000008700000099000000B1000000B9000000
      9100004E9F000000B50000007E000014C5000000AD000014B9000000E9000000
      9F000000C5000000780000009600000074000014B3000046A0000000D5000000
      85000000A7000014BF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      010101010101010101010101010101010101010101010101010101010C090909
      09090909090909090909092F2F2F2F2F38010101280329292929292917173939
      4C4C21212C2C2C2C2D010101021C1F1F1F1F1F292917170404410720201E0015
      12010101020B0B0B0B0B0E0E1F1F3F3F222219192C2C1E1E12010101022A4848
      482E2E0B0E0E3029171710410720151512010101021B16163B3B2E3C3C3A3A03
      0D52494C21210F0F12010101131A1A1A1A18181818242424060606060606060A
      4F01010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101}
    Layout = blGlyphBottom
    TabOrder = 8
  end
  object Button2: TButton
    Left = 1045
    Top = 8
    Width = 74
    Height = 21
    Caption = #1042#1099#1073#1086#1088' '#1089#1082#1080#1085#1072
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 965
    Top = 8
    Width = 74
    Height = 21
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Enabled = False
    Style = bsSplitButton
    TabOrder = 10
    OnClick = Button3Click
  end
  object ComboBox3: TComboBox
    Left = 827
    Top = 8
    Width = 52
    Height = 21
    Style = csDropDownList
    ParentColor = True
    TabOrder = 11
    OnChange = ComboBox3Change
    Items.Strings = (
      '55'
      '56'
      '93'
      '100'
      '102')
  end
  object BitBtn4: TBitBtn
    Left = 119
    Top = 611
    Width = 100
    Height = 30
    Default = True
    Enabled = False
    Glyph.Data = {
      C6050000424DC605000000000000360400002800000014000000140000000100
      08000000000090010000120B0000120B000000010000D0000000096E0D0017AE
      49000080800013D36F0000725C0045D06C00319B44002DAD4B0040EB99000F88
      26003BD472001FC95B000065420055FEB4003EBF68001AC6550000DA75001AA2
      3D0026E98E0035B55700007A5C0043D57400469D4E0010841E0018C14D001A8C
      2D001BD977001CCF65003FCA6800067C63001DAC470047E791006FF9BF0012DD
      7F0048BB6700167B1D00258931001ED16D0034A950002BCD690028CB65000579
      4500217A220049D27F002FDC79006DF7BD0043BF690007765E0022BE4A0020C4
      5200198B2C0034E78D001BBD49003995430014DA790015D16A001ADD7D001B96
      2F0015CC63000985690033B35300007D5D0017D36D0022C44C0043D371001FC1
      540001775D001ED0680027953B0035DC79000D77130039BC630029AC480021C0
      4C00148A230044C7740020CC620034ED98002BA3450077FCC40007DF7C0033B1
      52000E821D001DD570002FE68B001ECD600040EE9D0019DE80001AE285001DAB
      450020C656001BCA5C003EA9540015952C0014D7730008DD7A00007C630035D8
      74004ABD680002795F001EC4580018D470001BD167000E8522000A74120014B6
      4B00007363000981630020DB7A001390270047EC9A002EEA91004EB866002ADC
      7E001B9B340031A2490019C759003AC26B0008876B001DCF6700057F62000DD4
      6E0045E7960021C2500022C04E001AC250000074630013E0820043CB690020C9
      5C001DCB5E0038D9760008816A001BC148001DD7740017D67200469F51001FC4
      540003745C0021C55600319E46001CC04F001CAE4A001DD36F00017B440036DD
      7D002FE88F0019E184000381630045D26E001FC95E0017D370001FCD65001BD1
      6B00007D5C0020C758002BAE4C0040D173000C771400098164001ECF6900037E
      5F00077E650033B35400108622001AC55700026742004ABD660008765F001ED1
      6A00148D24004BBF6A001AD5720022C350001088260010871E001ECF64003CC3
      6B0022C7590042CB6A001A8D2E001AC659001FCB5F001EC95C00469F4E0020C5
      50001CD87700067F62001FD36C0017D16A00027E5E0022C54C0000785C001083
      1D0040EE9F0035D977001EC758001BD168000A8063001ECE66001BC04B00489E
      50001ED36F0047D36E000D78140035B35400FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202020202
      1D2A239E9E9E006302020202020202020202020204C9CB853F3F170402020202
      0202020202020202041605344949C104020202020202020202020202041695C8
      7B7B170402020202020202020202020204C94018313117040202020202020202
      020202026A88157D8989AF7E020202020202A28AA8A8A8A8A6350A0F9B9B520C
      040404040404244432323232675C9D740B415D67AEAEAEAEAE68061F3A434343
      432728828264418181818181314A8C6E038686CACAC5C59898B6B6B6B69B9B9B
      7BAA73087987873E3E999999C7C74C5B747474748D6D260D126F6F54336C3725
      2525662C9191C3C3C3724E4B75B1B1B10E2B71656565699C13133C3C3C3976A1
      A178787890707A5EBAAC112914141414149402020202020260220836381A5984
      0202020202020202020202023D62562157571E9F020202020202020202020202
      3D62C27F58588E6B0202020202020202020202029AAB4D105F5F01C602020202
      0202020202020202BE2E4F2D2D2D47A10202020202020202020202023B481C1C
      1C1C073B020202020202}
    Layout = blGlyphBottom
    TabOrder = 12
    OnClick = BitBtn4Click
  end
  object sSkinManager1: TsSkinManager
    AnimEffects.BlendOnMoving.Active = True
    AnimEffects.DialogShow.Time = 300
    AnimEffects.FormShow.Time = 300
    AnimEffects.FormHide.Time = 300
    AnimEffects.DialogHide.Time = 300
    InternalSkins = <
      item
        Name = 'GPlus (internal)'
        Shadow1Color = clBlack
        Shadow1Offset = 0
        Shadow1Transparency = 0
        Data = {
          41537A660A0000000B0000004F7074696F6E732E646174E6310000789CED5A5F
          8FA338127F6FA9BFC3E503EC9C6DB0018D22B549DC040D81889074CFAE6E46AB
          D3EAEEE956DA87FBFC5765636308D0643A3D3D239D46E30652B87EF5BF6CF35B
          5654A92CF2F2B1FAC7FDDD5E1E1B55A779B39787B5B9F990EE0FF77767551FF3
          AA5CC71F08B9BF93A76657D5EBE31F7FFDEB8FBF657FFEE79FFFFEFDAF3FFF7B
          7FB7A90A784C4514458CF2FBBB5DD50C1F3D5665FB0CE649AB7AABEA96848980
          312EEEEF9A4DA11E9B35E55C848202D97127B7D5131DD2B58FABC7C7A30272F7
          202D4EF53AC0D99F373BB5F9A4B6EB074278F44068C06120310C9C3D040F38F7
          5E168547160AF8314CEC0B823CD0078DF4F9540E67E3C4CE26226FB61EA1E6A8
          E7D3337BF365B5FCEC4D261CB4D887D651D9F75BFA889A996AB9CDAB8E21A508
          8A212D7302D096AC872C62861710023B9A2486ABA6C0DF094EC443B8622D2A86
          13A5F9A62A77AA38581AC229A2031A22A89943D3ECF3D2923012B50C59E0936C
          8AEAA81CAF38B04424F288CAAADEBB8938B73451E2F392CF8E24A09604888D22
          3D38026525CE709479249613D290386A6988D50CD0205E5954A5030D1A420521
          4BE64FD5029A9829ABF343BE97999E86220DB37A2641D27A487E3CC88D5AFFC2
          F0BACEB35D8321D3E44DA1764ADF06148325AD9AA6DAEBDF364D75F0E3A6A763
          6D6F4000420333066C3BB83D7B46A1356A1CB63AD671FA946F9BDD3AC62CF1DC
          226070B75125A489360A11ADDAE64D9A7D55675542E007310B79044F9FCD2CEB
          957A6EF0F2C3A1CC566C4556C10AE58781E3C0B819A865BBAFB66AAD1D4F4B87
          29049EB5411F423202E63AE401E8FDDD6FDBFC9CC35B90CC8E8D6CD411DF5890
          8420D88E9FD65F30B86020140641F08AD95B42BC011EC07FD47F2D4B3054ADCA
          CDE7352506034858634E552328582288887B203A60F02EFAC66E0C3DA3842794
          2D414F1CFAC0A1F707875EF3AB4E074847CB157629F20004E516048D9781D8E5
          65D3033098514F160B1882F00B66259C5B0F381945A1999EED0B9F34CA5EE6E5
          5E95A76FF68C04D840DA85019D8246C2B9873FF86221BBBE1BB0175842C57C41
          D740312A1E32381D5339EAF93CE682D2605E3EEA1C5C6B95382BF6DCDF97AF91
          29C4644FBA59E764D63938FA05EBBCC10F32A6ED482F251DAA432752286B907F
          0ED045C01FA30CFB702B1BE9F4FC110A6C94C481F898441F09FC73F7EE029F92
          4BFBA09CB5DC7CEAA936781B3B1E0BCC5D9B9D2C4B55689569A5842EB25D72EA
          0DCCDAC4BCAFF5EDEA0916A850A7740215DC31395B2A9DF30916A14017346AA8
          9A7CF3099ABC5FD7F6572895E81478159A128524D0183633248F608A3253A54C
          0BE83AA87D9043C5900D3494E0A4C67D0F500DA1103575557C6B808283833A42
          0C509D1142DED7D3304087CEA45180DEBF16D5D3681011217812CDFBB8668A99
          429B8E9ADC379B24C0AF34DB1ECB5916987822F40981CC622D5CE2C44C4CEC3A
          16430D0E63661831E5DF65A78BA5A028632D281A08BCD5BA172E8D882B418D06
          32342E8C41BC320E3D15ED02B9BD77176D20633350CBAC17B76C5119CEF2B3AA
          9E4AFC694DBD658C7B09F3AD2AD4065D783CB9F32409237F05E4BAB25E6A1873
          EC5EEA396E20220A9081F69B82178B70E29276A2D36EE272B87FE53B62C7EA7C
          152B136D68716D7BC2C490CB45E130AC4C22DAF514389002CBBD09A7107DCB48
          C19C5BB557CC16FE61AB7445F9F4109D5F44A45B118E43228660F4D50D10B58D
          EC79AE2F12CEC8A24B2FB3251B9B67BD861871DB10422C20C198C32F4A1AF0DA
          EC43EF65CFDB19B064099D0C8C8B9A7FCC7F55FA02283DCCFAD601DE39B2B60F
          8392B3EFC9BC3C3447CD838A1C0B7DD76A0D9B1F671153C9C3914ACEBA4AEEA1
          B3131E640365B3746AEDDDEBE5A4A760F87DF80840C3943B257BCBA30BA45443
          0B635B50F945BBA1876098CA4D17E523774E3FEC86467CC286423FE7B725F723
          0D380F021EBB9C6FEFDD4597F3D1D81B79E8A7E6CBD0B972A564A5A4312751AC
          19D5799A8254327DAF06B85724672373A4B0ECB7394C23479B2D2BE4007EA457
          C5A1EB3EC69BD1F9A5B1D7E7E12EDFBBF67A0E89DE5DF931A098DD9C77C4D260
          AB7E1BC3F0B66CFB08C89C933804AF3448E8200807812CF35307E12686607D0C
          7408640E430E538F6F21F5B2507A029C652F9FCFA520BD648882B687313632B9
          CF1F8241FBD276D6CBFB005BBB980892484C7501A30D437FC9D8D42735B16A5C
          DE4A414F3BE879C297D7EF238719738A8D31DE22D6EAD414D14BC5C2D3912DAA
          6B77328CF9BB05507BEF2EDA62B85893937AD3BEF57577CAD4555B1FD7A86E65
          98200F3C6A5A052BBA222BD01575033343F826BEA1CF3B7AFB9F6FB4B7B3087B
          D0F5306933BAB40C83008F2D5ED7BF2ED623B6397872349265DE4D47AC5DB11D
          8A1C1BE0E9EEEB9B92D728D2A1A2AF89AC8985FDE9B0AD9ECA9E915FDA9FC51C
          12E00A586FB60C6BBBEBCB17A6EEB90CC3414CE8AC5D86B1F7EEE2DA0C03023F
          A974E84557ED8677DABFA533B5E09AF4EB7423DFA19BEEE7F9743F4F5FB1A13D
          D3CD47B0BA126178C56AAA33AF595276E66DEFDD45B79A02C54CFBE8A462B0C9
          615A09581119D57A6276D96B8F177009197DB949601AB7BCAACF789DCF4C0736
          68EC227D4F68EDED1C62616518CB303AAF980C134FAEFCF970CF907DBFED49F6
          9DB627C182BDD3AD37AA7959F1F9B0B38731011EA308FBF90934EAFE017C5F22
          447F21913F506BA75A1D557D56DBB4AA0A25CBD6AD7D39FB2BBE5941E3101E90
          F036E2EAAF2784C0B3AAC87C7930222E108CF8CA6BC41DAEEDBE8765F5319B60
          F65B0F107AD2B29DAF72FA5A51072BE9EF27A9B0E78113467509C0C8FCCD466D
          E0C1F0D4FBE73BA8327B89B80FF4930B32F501024D621ABFD0E05E7F769AC953
          36BA43F246FCB6B92CAAECA7DBF63F1E1444CEE5126EE4688B32C41A42F8D130
          19D54730BA85719B36DC03FA557FFE781BB8D11BC1DD54FBB41A367A3F1C4AFC
          1E6F76CD35EAB28BBF39C98AEA692FEB2C2F716EBC5BB74FC97A857F90BFFED8
          8FB61FFB91683898E83AD4550679FE38FAF95BB7F61E3BB05FD2258F7D53A673
          A5D9044D46C5F4A3DFE23BFFA0F87429BC8CF25BBBD4EB1CBCDB564CF3ECFFDB
          D6B35B933ABDF85B936F10BCFEE283D94F9639AE4044DC7EAD7CB30097C56127
          5F4C47B327A8EF959B34F44506F911E1FF0FA4DCE9FC0E000000427574746F6E
          487567652E626D701C200100789CED9D796C1555FBC7EBAB51A0654B31149040
          5002562452360DB108A9A9FCF1938269D5345812364917046B5140310846A952
          11653740A0085DD84A659322D00252CA56BA00B5ECA58BA5085D28EBEFF3DE13
          C6496F7B3BB777397378F906927B67CE799ECF9C3E73CE73E6CECC19FA7FCF75
          7DC2E3BFEAC87F2FFEFFE1F1A5C7131E3E1E0F1CD0FDFBF7EFDEBD5B5B5B5B55
          55555151515A5A5A545474F1E2C573E7CE1514149C3973E6B4457CE02B1BD945
          018A51982A54A43A461C6178CCAF22FFBD7BF76EDFBE5D5959595E5E0E126C79
          7979D9D9D9C78F1FDFBD7B777C7CFCBC79F3A64D9B1665111FF8CA4676518062
          14A60A15A98E114C61502E7F4646465252D2A2458B3EFFFCF3B163C7BEFDF6DB
          AFBFFEBA9F457CE02B1BD945018A51D86CFCAAB43F8E88DB1B376E9494949C3F
          7F3E373717A45F7FFD353C3C3C3030B05FBF7EDDBB77F7F1F169DDBAF5D34F3F
          FD1F8BF8C05736B28B0214A33055A848758C600A839875C351D4E1DFB1630721
          F1E1871F02D6A54B97F6EDDBB76DDBD6D3D313E6279F7CF2098BF8C05736B28B
          0214A33055A84875B9FC0AB53F1D1D818AA3E2E262FA43C2383939392C2C0CA4
          4E9D3A356FDE9CA6F630208A51982A54A43A46308541CC621C172EEA51F5FC34
          DD9A356B264D9AD4AB572F42C2CBCBEBA9A79E32022F4461AA5091EA18C11406
          DDC9AF5CFB33505657579795951516169E3C7972D9B265C3860DE34C6CD6AC99
          F166B716D53182290C6216E3B8C011EE5CC47FEAD4A955AB56D16E5DBB766DD5
          AA955D61632DAA63045318C42CC65DCDAF5CFB8BB0FFE79F7F2E5FBE9C9393B3
          6EDD3ADC75ECD8915ED11172BD308541CC621C1738C29DB34E043DFF860D1BE8
          BAF973D37B302A398B1F5318C42CC671E13A7EE5DA1F0BB76EDD22CBFAEBAFBF
          323333C921BB75EBF6CC33CF388B5C2FCC621C1738C21D4E71EDE02168FC5959
          597171717DFAF421137062E4E885598CE30247B8732EBF8AED4FDD9A9A1AA67B
          F9F9F9EBD7AFF7F7F7A7AF3638C8364D18C7058E7087535C03D0E443D0F8B76F
          DF1E1111C188EFC473B621E10247B8C3A9B3F8556C7F014F4E45873677EE5C5F
          5F5F1785BDB570843B9CE21A80A61D82C69F98983862C4086F6F6F17753BD6C2
          11EE708A6BC7F9556C7F0D9E84303A3A9A14CBC13CD35EE10EA7B806A00987A0
          F1C7C7C70F1E3C98738A69AC3BF97187535C03E008BF8AED2FC65CFA2EC28F7E
          D8C7C7C7CD8D2F84535C03000630C6C7628D7FEDDAB5AFBDF69AA7A7A74BFBFC
          8684535C030046D3F8156D7F126F72A7BCBC3CC24F16BCFE10C0000624C08CF3
          27272773FACB0A1E2111426000632FBFA2EDCFC49FB9DBD9B36719FEE8C124C2
          6B870006302001D6E87509C1BF6BD7AE912347BA3ADB34229191020392717E45
          DB9F0EAABABAFAC2850B09090964506E1E731B1218C080041878367A51C17FE2
          C489C8C8483258E98D2F040630200166845FDDF6A7832A2B2B3B72E4083338B7
          65FB46040C48808167A31715FCF3E7CF6706EDB6D996110103126046F8156DFF
          7BF7EEDDB871E3CC993363C78EA5CB958D5C572001061E90F5FECC27F8B76CD9
          D2A74F1F375CE7B1572001069E6D7E75DBBFB6B6B6A8A868FDFAF5DDBA75939E
          36580B24C0C00312D47AF90B0A0A982FB46EDD5A366CFD020C3C201BE257B7FD
          45F093660F1B36CC543DA75E808107A4F52920F8E3E3E3BB76ED6AAA914B2FC0
          C003B2217E75DB9F418DB8FAE5975F3A76EC281BD396C00312D43AA3305F9920
          8C1E3DDACBCB4B36A32D810724A8D6FCEAB63F19756565E5E9D3A7892E13660E
          7A810724A8006B1301C19F989868E6CE47487441A05AF3ABDBFE4CEACBCBCB37
          6EDCC84C5F3660E302125480B56B11827FCA9429264C3BAD0524A8D6FCEAB63F
          E9D0F9F3E7C3C2C21CBC19C93D02125480B52C8E0FFBF7EFEFD5AB97492E98D8
          1690A002ACE757B7FDE985AAAAAA488AFAF5EB271BCDA8400518ECFB16F18141
          B97DFBF6B2B98C0A5480F5FCEAB63F8974454545424242A74E9D64731915A800
          837DCF223E8487879B3C73D60B5480F5FCEAB6FF9D3B7748A7399CE6CD9BCBE6
          322A500106FB8E45D9D9D9FDFBF75762F012021560B005BFD2EDCF2856585818
          181868C26B560D095480C1AEB568DBB66D4A649E7A010CB6E057BAFD6B6A6AF2
          F3F3151A7C850006BBC6A2152B562894FC08010CB6E057BAFDC982F6EDDBD7BD
          7B77D944F60960B0AB2C9A356B56DBB66D6513D92780C116FC4AB77F6565E5FA
          F5EB7D7C7C6413D92780C1AEB468C284099E9E9EB289EC13C0600B7EA5DBFFE6
          CD9B717171A6FDCDB121010CF64D8B860F1F6EF2CBB6D602186CC1AF7AFB4F9F
          3E5DC5F6075BF0FBFBFB9BFC670B6B010CF6A3D1FE93264D32C9AD7AC60530D8
          82BF6FDFBE0A4D5E840006FBD1687FD5F91FC78FFBA5B53F2990BAFDA7C83FD5
          1DBF04BFD2EDCF14EC871F7E50317F035BCC7F838282546C7FB005BFD2ED5F53
          53939090A0E2FC116C71FD6DE2C4892ACEDFC116FC4AB77F6D6D6D4646868AD7
          AFC016D7FFE7CC99A3E2F543B005BFD2ED7FE7CE9D82820215AF9F832D7E7F5C
          BD7AB58ABF5F802DF8956EFF7BF7EE5DBE7C59C5DFEFC016F73FECDEBD5BC5DF
          4FC116FC4AB7FFFDFBF72B2A2A222222D4BA7F0060B0C5FD579C082ADEBF01B6
          E057BAFDC5FD93C9C9C96ADDBF04B0FEFECFA8A828B5EE1F0358CFAF74FBDFBD
          7BB7B0B050A121185480F5F79FAF59B346A114085480F5FC4AB73FBD505959D9
          E8D1A355B97F1B5480F5CFBF1C3D7A54ADFBE701D6F32BDDFEE2F9B5AD5BB72A
          91850209AAF5F37753A74E55E5F91D50ADF9956E7F310B50E5F93591F9D7E14F
          4D4D55E5F94150ADF9956E7F545555B56AD52AF33F3F0B24A80FAC545A5A3A6E
          DC389367D1E00109AA35BFEAED4F445DBA74C9FCCFEF03D9D0FB4F366FDE6CE6
          2E48743E4036C4AF74FBA3EAEAEA8D1B379AF9FD21E001592F3C124F319BF6B7
          48C0C493CB0DF1ABDEFE64D425252574B0264C4441020C3CDBEF7FDBBB77AF9F
          9F9F09B308900003CF36BFD2EDFFC0722D223F3FDF9CEF4F03CCC8FB27972F5F
          6ECEF7D70166845FE9F6479595958CD1667B7F234880350A8F981D4447479BED
          FD99200166845FF5F6A783628C9E376F9E79DE1F0B0C48C6DFBF9D9595151212
          629EF7F7020392717EA5DB5F1C427171F1D4A953CDF0FE6A3080B1F7FDFF6969
          6943870E35C3FBC3C100C65E7EA5DB5F1CC2D5AB57A3A2A2E4BE3F1F00309AB6
          FEC8B66DDB060D1A2477FD0200C0681ABFD2EDAF1D02E1276BFD0E5C3719FEC1
          C310E2F497B57E0AAE9B163C8F46FB3F7838A38C8B8B73FFFA41386D74B66884
          7FCF9E3DA41FEE5FBF09A7B8769C5FE9F6178770EDDAB52D5BB6B873FD32DCE1
          D459EB3F1E3B762C2626C69DEBC7E10EA7CEE257BAFD85AAABABCF9C39336EDC
          3857AF9F880B1CD9B8C8D934151515AD58B1C2CFCFCFD5EB57E20247B8732EBF
          EAEDFFE0E16D2A9B376F76DDFAAD18AF73638973F9D3D3D3A3A3A35DB77E2EC6
          71E13A7EA5DB5FA8B6B6969C6AF5EAD5CE5D3F1A8398ADF7C5FECED5F5EBD753
          5353274C98E0DCF5BB3188598CBB9A5FF5F617BA75EB16C9D5F6EDDB478F1EED
          C8FAF554C708A630E81E72A1F2F2F29D3B774E9B36AD57AF5EEDDBB7A7F7B02B
          90284C152A521D2398B2F1ABA82BA47AFB0BD1D18975C9E9F722222202030341
          EADEBDBB8F8F0F9900BDE27F2CE2035FD9C82E0A508CC25411EB8CBBB4B76C94
          FFD4A95309090953A64C19306000672221D1B66D5B4F4F4F9819959EB0880F7C
          6523BB2840310A53858A5497CBAF74FBEB0F848CEBEFBFFF0629333373C3860D
          0B162C983163C6248BF8C05736B28B0214B3BD0C99FB05CCA54B973232320889
          D8D8D8C8C8C877DE7967F0E0C17D2DE2035FD9C82E0A508CC266E357BAFD1FEB
          7F571E4EF8673C73D0CB29AE1FF32BCA5F078639484040C098316366CE9CB978
          F1E2A4A424B2CAFD16F181AF6C641705284661E9C75207A05DBB76BEBEBEFEFE
          FEC3870F0F0B0B0B0F0F6732FE99457CE02B1BD945018A51D86CFC1D3A741838
          7020E36C5454D49C3973962C59B26EDDBA4D16F181AF6C64170528466189FC7A
          BF7E7E7E8404C36B5A5A5A4E4E4E4141C1C58B1799099695955DBB76EDBA457C
          E02B1BD945018A51982A54A4BAFB8F42EF91649890080D0D8D8989610EFBDB6F
          BF1D3C78303737F7C2850BA5A5A51516F181AF6C641705284661AA50B1CE1337
          EEE7EFD1A30721F1E5975F262727EFD8B18386DDBB776F7A7AFA8103070EEAC4
          5736B28B0214A33055A8487577F26B8EBCBDBD838282C827A122248A8A8A68E7
          7F0C8BC254A122D53182290CBAE1283417CCBE09DD90901066DF84C4C99327C9
          2A8DF353982A54A43A4630A57FEEC30DFCAD5AB51A3264C8A79F7E9A9292B27B
          F7EE7DFBF61124478E1C3976ECD8891327B2B3B34F59946391F8CC4676518062
          14A60A15A98E114CE9EF987529799B366D828383E90FF3F2F248E6E95E8C37BB
          B5A88E114C6110B31877D15168665BB468D1BF7F7F06A3C4C4441A13861B0E88
          EA18C11406318B7157F313A86FBEF9E6D75F7FBD7DFB76FA9343870E65656511
          CC4408CD78C6A2B367CF1658898D622FC5284C152A521D2398C220665D741668
          36495DE6CD9B77FAF469062347C2C65A18C42CC671E1F443D00C92BABCF7DE7B
          CC64C5229E4E1406318B715CB88E9F109D3E7D3A7F6E7A8FC3870F1F3F7E9C48
          C8CFCF272A4490FC6540A22455A848758C600A8398C5382E9CCB2F4C75EAD429
          3232921EEFCA952BCE8D1CBD308E0B1C692FA370167FDBB66D894CF2169ACBB9
          91A317C6718123ED7D68CEE227637FFFFDF7E9E8FEF8E38F3FFFFC13470C4C9C
          715A57632472ACA388EA18C11406318B715CE0489B203825EC070C18F0FDF7DF
          171616DA95E4344DB8C011EE70EAE089A055EFD6AD1B3DC3EFBFFF5E5E5EEEBA
          E011C2058E70875367F1BFF8E28B6429E4BD191919478F1EA5D3D022C7DEB0A9
          379044146116E3B8C011EE70EA08BF56F7ADB7DE5AB3668DB8D6ED36E10EA7B8
          6EF22168155F7EF9E5F1E3C733D6BB3A72F4C21D4E71ED38FFABAFBECAB04EB7
          4CFF40D222929CA6F5393642488C6818C7058E7087535C378D5FAB3572E4C82D
          5BB6383DDB31229CE21A80261C8256A56FDFBE5151514ECF768C08A7B806C011
          FEC183072F5FBE7CCF9E3D9999994CA09CD8EDD41B45A223C211EE708A6B009A
          CCCFDF8E296A494989FB834708D7006821642F3F7FBBC99327331ADE94245C03
          A08590BDFCFCED56AE5C494E426FC6E0E2F46EA7DE10121D11EE708A6B00B410
          B20B9EB183D3BFB4B4D4FD67AE5E0080A10D64C6F9193B38FD25068F16426068
          039971FE8103072E5DBA944E401F3CAE8B9C3A51A4851000600063905F142377
          25FD282E2E961B3C426000A3A5D346F8C95D493F989FCA0D1E213080D1D26923
          FC3D7BF68C8D8D2509611C7173F0D4092100C00006A446F94501E6CE4C7FC860
          6507CEBF0206A44627F5622F7367A63F9C3BB203E75F010352A3937AB1573CEC
          CC24883C9654C4FDC1A30F2100C000463C126E843F3232925E5776C8D4154880
          19E10F0808E094911D327505927669D4367F7070704A4A0AF368A64264B35282
          470B2100C0000624C06CF0EB1BFFFAF5EBB2E3A5AE40B2FD2710DB7D7D7D6362
          622A2A2A2A4D269000D3AE4E37C4DFA74F1F066B12D7A3478F328373DD6CCB60
          FC000006302001069E0DFE366DDA30EB2F2A2A921D2CF50B30F0C46F64F5F2B7
          68D1826182F34576B0D42FC0C013BF91D5CBEFE9E9F9F1C71F6FDFBE9D21434A
          DA536F0889440824C0C0134BD534D473D25FC90E135B02AFDE5E546CE9DFBFFF
          C68D1B6587892D81A7FDC064CDCF4C39393979DFBE7DC78F1F973B72E9254631
          900003AFDEE9BC48DB962C596292395743020F4891C8D5E1F7F2F20A0B0B63B2
          233B466C093C20C5CFDC75F85BB66C3963C60CCEF1C3870FE7E4E4C81DB9F412
          A3184880810724A87A7E114E4141411C9DEC00695C4082AA3F05C4673F3FBFA4
          A4A42AD30B48EDAE393DFFA04183121313F7EEDD6BAACE4748EB82C00312546B
          7EE6F857AE5C911D1D8D0B4850ADF94342424E9C38213B3A1A1790A05AF333BB
          4C4D4D3D74E810C906E7BBEC90A92B9000030FC83A136171F2A6A7A7FFE3D8CD
          54EE1190A08A5358E3EFD2A5CBB469D32A2DCB719A5C40822A6E7CD5F8BB75EB
          C6EC8609665656161DACA93A1F219000030F4850C5E5508D7FCC983114901D1A
          46052AC07A7E7F7FFF1D3B76542B225001D6F30F1B364C64CECCD1CC30EDB296
          98888127B2688005BFE888162C5870F5EA55D9716154A002ECA1536868686E6E
          AEECB8302A5001D6F34F9E3C79EBD6AD070F1E648C3061F00801061E90A002AC
          C177EDDA352D2DCD84D70C1B12A8006B0F01B56BD72E262686714D765C1815A8
          006BF7F83DFBECB34B972EA5533A72E4485E5E9E99E3073C204105186CC11F10
          10C0EC4CF6057EFB04B0762DDAD7D7373E3E5E7650D82780B56BD1BD7BF75EBB
          762D67C4B163C718236487892D810724A800832DF8C925D8253B22EC13C02205
          D2929F1AA5A4A54028303050CCDC999A993F7E8014B378B005FFCC99332F5DBA
          243B22EC13C0600BFEE1C387676666CA8E08FB0430D882FF830F3E2023655299
          9D9D6DC299BB5EE001092AC0600BFEC58B17979494C88E08FB0430D8823F2C2C
          8CF3427644D82780C116FC53A64CD9B469D3810307CC9C3C0B89141A5480C116
          FC494949E5E5E5B223C23E010CB6E00F0F0F2F2A2A921D11F60960B005FF575F
          7D95929262F2C99790360503186CC1BF73E74E6634B223C23E010CB6E08F8E8E
          6646734B29010CB6E08F8B8B13F1235E20203B466C49BCBE40C40FD8827FFFFE
          FD4C8A6547847D02186CC1FFD9679F31A3911D11F60960B005FFC2850B558C1F
          B01FC78F2CE9E3E7E79F7F5671FC02FB9119BF08A75AA504B0367EC5C6C6AA98
          3F6BBF623F02F9737171B1EC88B04F006BF9F3CC9933559CBF6BD74F1E81F93B
          E785EC88B04F006BF3F788880815AF1F82FDC85C3F3C72E488EC88B04F006BD7
          0FDF7DF75D157FBF005BF03F02BF5FECDAB5EBB6520258FBFD62C890212B57AE
          54EBF75380C116FC010101B9B9B9B26F0DB64F00EB7F3FE574901D11F60960ED
          F7533E2C59B244ADFB3700D6F8C5FD1BCC0864078551816A7DFF46555595ECA0
          302A50F5F76F787B7B7FF7DD776ADD3F06B0FE95950B162C6046203B2E8C0A54
          EBFBC74E9F3E2D3B2E8C0AD43AF78F8D1F3F9E1E4995FB57410558906BF7AF52
          46765C18D55F0F931FFDFDAB641477149196FC68FC6FBCF1C6B265CB54B97F1E
          54803DACEE9F272F951D1A8D0BC886EE9F675E233B341A1790D6F7CF77EEDC39
          2E2E4E95E7774005D8C3EAF99DA2A222D9D1D1B8806CE8F99D9C9C1CD9D1D1B8
          80ACF7F99D51A34631A931FFF38340826ACD1F1414448CC98E8EC6056443CF0F
          6EDCB8F1AEE90564BDCF0FBEF2CA2B2475E67F7E194850F5FCFAE7974B4B4B65
          07882D8167FBF9E573E7CEC90E105B02AFA1E7975BB4683161C204D10599F6FD
          09E00169FD0A08114EC1C1C114961D23B6049EEDF727A4A4A4C88E115B02CFC6
          FB13FAF6ED3B7FFE7CF1926713BEBF0530F01A7A9DA3C7C3F7B75CBD7A557698
          D42FC08CBCBF8569A6EC30A95F80D97E7F4BF3E6CD492D98DD98F3FD51808107
          6443FC1E0FDF1F65C26B8920197F7F544D4DCD3D93092423EF8FEAD1A3C7ECD9
          B357AF5E6DB6F7D7810498B65E8F35BFFE417E8669D9F1525720197F7F1D999E
          EC78A92B900CBEBF6EE8D0A10C13EBD6AD33CFFB338101093023FCE2FD99A69A
          CB0363EFFB333976D921F3AF8031FEFECC56AD5A8586862E5CB8302929C90CEF
          EF05031890B4359E1AE2D70E41BCBFD7247331309AF6FEDEF3E7CFCB0E9CFF0A
          0C7BDFDFDBB973E7888808669A1B366C90FBFE7000C000465C306C945F3B04F1
          FEF0F2F272B96F3B01C091F787D371C90D1E009AF6FEF09E3D7B4E9D3A75E9D2
          A5FC0565AD5F806B00C030F2F267EB4310EB17480C215C3BBE7E01B3B6FB9284
          6B47D62FE8DDBBF7B469D338FD1941DCBF7E0A4E710D80F69CBBBDFC1E0FD74F
          6104717FF088950B9CB27ECA850B17DC1F3C38757CFD143AAE4F3EF984F4830C
          D69DEB37E10EA7B86EF212425A2DB17E13FDB03B830777CE5DBF292727C79DC1
          833B67ADDFC49479E2C4894C7F9841A7A4A4B87AFD385CE0087738D5AFAE6B2F
          BFFE10C4FA71E481376FDE7475E4E00247AE583F6EFFFEFDB76EDD7275E4E002
          47CE5D3FEEB9E79E0B0909993B77EEB265CB1213135DB77E25C6718123DCE1D4
          417EFD5168EB57161717BB2E7830EEEAF52B39DD5C173C1877D1FA952D5BB61C
          3C78F0F4E9D3E91956AE5C999C9CECDCF5733188598CE30247E20DBD4EE1D79F
          0862FD5C189C9E116110B3EE593F77EBD6AD7471CE8D1C0C62D6D5EBE7BEF0C2
          0BC1C1C173E6CC59B060017F6EBA8BD4D45447D6EFA63A46308541CC621C174E
          E7D71F82B67EB75885B9D2B1579E565A7ED5C294FBD7EFDEB469131D3853EC07
          0E88EA18C194DBD6EF6ED6AC1913A251A346CD9E3D9BEE82E166EDDAB5F41E44
          2F796F5A5A1AFD497A7AFA8103070EEAC45736B28B0214A33055A848758C600A
          8398C5B88BF8EB1C85B7B7775050506C6C2C54858585E2F143E36173D3F20020
          15A98E114CE96FC67605791D7E2F2F2F3F3F3F4679E6A79C866405B76FDF361E
          3614A60A15A98E114CB968E5F486F89B376FFED24B2F8D1831E28B2FBEF8F6DB
          6F7FFCF1474E40BA114282FE84D820A45374E22B1BD945018A51982A54A43A46
          30257E1575357F9DA3F0B0DCB53566CC187A3F023B37379790B87CF932835145
          4585F6232C1FF8CA467651806214A60A15B53BA9DC436ECDDFA54B177F7FFFD0
          D050F216F19313F92483517979B9F6232C1FF8CA4676891F83284C152A8ADB50
          25F277E8D0818906313C75EAD459B3667DF3CD374C3D888D9F7EFA69D1A2458B
          2DE2035FD9C82E0A508CC254A122D5DDCF6F7D141E968780485D0889993367C2
          9C9494B473E7CEFD16F181AF6C64170528A63D7A2385BC5EFE76EDDA91BA1012
          C3870F67300A0F0F8F8E8EFECC223EF0958DECA200C5B4476FCCC3CFD0FFFCF3
          CF1312818181A461E3C68DFBE8A38F3EB1880F7C6523BB2840317D9E208BDFC6
          B118945CE6C7FC4E72FDFF1F5613480A0000004D61737465722E626D70ECE201
          00789CED9D6F8C1CC595C037427C39DDA77C8AEE8464E58383A24380948094F0
          2131F1598A85909089CE9033C41C70280164305C30C6B18988E25C029780E405
          6D821C1D845CB48ED7400208D984D806671D4CCCB20B66BDBBDED8BBFEB7B677
          591BFF5BE67EB3CF535B5BDD5D5DDDD33DD333534F6F4B35D5AF7ABBDFAF5F55
          75774DCDBCEB8E0E7FA6AD2CFFC4DF3FF2B7B6ED5F3EF399B6CFB595DA4A5E8B
          A99E4D71D5B329AE7A36C555CFA6B8EAD914573D9BE2AA67535CF56C8AAB9E4D
          71D5B329AE7A36C555CFA6B8EAD914573D9BE2AA67535CF56C8AAB9E4D71D5B3
          29AE7A36C555CFA6B89A199BFB33927FCE48EAEE59CFC6B3F16C3C1BCFC6B369
          0CF56C8AAB9E4D71359CCD8BB3E585175EB8E1861B52B029CD96898989B56BD7
          A660137A3C9E8D131817362E605CD8B8806915364B972E75D9512C9B8E8E8E58
          302E6C389E5830ADC2C6C74DE1D8E082254B96AC5FBFBECAFE0624EDEDED870E
          1DAAB2BF091E4F8BB25130162E5CE88827D4D10AC6EAD5AB1DF1843A5AC1308E
          A715D9E8181CF1843A5AC7E08827D4D13A06473C75F76C5E6C0C75C1636FA9DC
          F1D85B2A773C75F76C8DD8A00B162CA0DBB0E0716183AC5CB9726060C082C785
          0D621C4F4BB341E7CF9F8F3BBABABAE89353B34156AC58019EA9A929F6969A0D
          A21F4FABB3113CA16012B1113CA16012B1113CA1605A918D4513B1B148223616
          A9BB673D1BCFC6B3F16C3C1BCFA631D4B329AE7A36C555CFA6B8EAD914573D9B
          E2AA67535CF56C8AABE16C962C59327FFEFCEAD9B4B7B7AF58B1A27A36723C9E
          4D194C5757176E4D842714CCD4D4D4C0C040223CA160D4F1B43A9B1B6EB8E185
          175E78F1C51771C782050B52B359BB76EDC4C444A95402CFCA952B53B3318EA7
          A5D9E878D6AF5FBF70E1C2746C743C870E1D5ABD7A753A363A1E399E966663C1
          9374BE40149EA4F305A2F0B4E87C81201E2949C426148F942462138A474A5A91
          8D81873E59F249D91878E836249F948D81471D4F8BB2D1F12849C146C7A32405
          1B1D8F92D665832E5DBAB47A3648474747F56C10E3785A978D8F9B82B2093AA2
          CAFEA64A36A1C7D3A26CDC35366E1C25366E1CA5EE9EF56C3C1BCFC6B3F16C3C
          9BC650CFA6B8EAD914573D9BE2AA67535CF56C8AAB9E4D71D5B329AE7A36C555
          CFA6B86AB279D12AEE6C4A567167633F1ECFC6B329069BD49AAE058B65935AEA
          EE59CFC6B3F16C3C1BCFC6B3690CF56C8AAB9E4D71D5B329AE7A36C5D5A665F3
          C31F961CF58A2B5CF59E7B9E7554CFC6B369643622411E7AB9F85D24C8432F17
          BFF7F41C40833CF472CFC6958D81C728D41918788C429D8181C728F46CE2D904
          490469459108D28A2211A4E5D938B1D17984865168A084865168A084869167E3
          CAC6C0631F0B4481098E05A2C078369E4D53B0F16D5A41D9183C8278FC58A03E
          6C4203C528F463E87AB2F1F79E4564D384CF6CE6CD9BB76AD52A6305283E52C8
          2677360F3CF0C0962D5B8C15A0F848219BDCD9A8E3D10BD5F1B4161BCEF9C5D9
          2B40A99F6A7AE8A187DCD9C0A0347B0528F5D351AFBEFAAA3B1BFD781418753C
          A155B26A0FEAA8E16CD4998B3BD447CB6284A18E5624048FFA68598C30D4D1F6
          E3692D36069E5830516C0C3CB160A2D8187862C104D98C8D8DF5F7F7EFDAB5EB
          ADB7DE22254F89DD35677ADF9CECFAEF134FDE3AF6E8BF9292A7C45EA5B7B7B7
          ABABEBA9A79E7AF4D14749C953923D1B1D4F2C180B1B1D4F2C180B1B1D4F2C18
          83CDD0D010483EFAE8A363C78E9D3F7F9E943C2594479DCEC957DBC7D67C6372
          C38FCF7EB0BD74E61429794A288FAAF2DA6BAFAD59B3E6991FAF7AA5E367BB3A
          9F26254F09E5F9B2895D1CD2914DECE2908E6C621787D4C1F4F4F49C3D7BD6B8
          E1A784F2503C00987876D9D4C76346154A280FC50380271E5DB1F3FFD6F56CEC
          D09512CAD3E1896FD3B842F5B63E291BBD8FD1FB9EA46CA28EC7CE86868BF808
          825178D86A346E345CC447108CC2C356A371A3E1223E8260141EB6A668DC62C6
          02D274185DB13B1BA3F3378606EE6CECC7636143BF42F315EA6511B662A39F08
          FD0ACD97A50A5BB1D1ABD0AFD07C858211652B36D9B09131ABDEC72877705FE2
          CE46C6D07A1FA3F0BCF4D24BEE6CF4E33168713C163674FBF42E1647B3151BFD
          44E8F6CB7D4CB4B0151BBD0ADD3EBD8B850D5BB1C9860D3774DC37189D3FEE88
          0213C5067BEE638CCE1F3C5160A2D8A8E33182290A8C62439345E76F71345BB1
          D14F8451199DBFA50A5BCB365A15466574FE16366CC5261B362934CAD74925CA
          D749A569E3A669D834617FD3346C9A709CD6346C4A4D797FD3346C4A4DF95CA0
          69D8949AEF795A33B16944CD8C8DD7CCB5CD32584C2FF53EABE650CFA6B83A8B
          CDA953D667159A9C3B77AE5E6C3EF8E083ED71F2E1871FEA5518CB8EFD609E5D
          B1D1ABB093D571824D8DD80C0E0E7EF39BDFB4DF458B1C3972E40B5FF8C2C183
          07EBC2A6EC913831BC86EB63AB946DB42AB8DE729F2F8A4D2DD8103137DE78E3
          35D75C039E7DFBF659CE8188B9F2CA2B2FB9E412F09487A19E4DDE6C1E7EF8E1
          6B2A72DD75D71D3D7A34EA1CBEFDED6F5F52912F7EF18B274F9EAC179BCD9B37
          FF64B650626763A912C5A6F3670FDFF1EFFFA62B25B563B371E346902C59B2E4
          F5D75F5FB06001F9458B168D8F8F077DBE69D326907CF5AB5FDDBA75EBDCB973
          C95F71C51567CE9CA90B9B9F84899D8DA54A141B038C68EDD87CFDEB5FEFE8E8
          90EE7D74741430E0B9E9A69B8243833973E6FCFCE73FFFF4D34FC94F4C4C0006
          3C575D75953934F06CB26263C8E4E4E4ADB7DE0A9EDB6FBF3DEA09AE085B3103
          CFBC79F3A6A6A63C9BDCD988D3BFFFFDEFE3F765CB9659D8202059BC783178AE
          BFFE7ACFA6166C449E7EFA69C1332B26C2E4A73FFDA9E091E6CEB3C99D4D69BA
          F3070FAEB79B217FF8C31FC0F3E0830FA666137B4769B06989715A2C9E6BAFBD
          B6B3B3D305CFE73FFFF90D1B36A466F369B404D958A4A9EE6FECF2F7BFFFFDF4
          E9D32E96C78F1F2FCF6BA9824DE8A5DDA26CDCC585CD05A9824D6897A0B369A1
          E7690DC7A675D4B329AE361E1BDFA615978D1F0BD48D8D1FA715978DBFBF2928
          9B44CF053C9BCCD8C4BABEE1D9A490E2B0B137590DDFA6A59042B1097DA41D64
          3377EEDC4667D3D9D979DB6DB75D7AE9A5175F7C3129F9906792856213B40DC6
          CDDC8A34289B83070F2E5FBEFCA28B2E321C4809E5B3E62735169BB9B3A511D9
          00C0E246B6DA1D55E7FEC6300FB209464FA3B0A1E10A468C2E6C9D69DCEC6C12
          78BC1AD1FA1B034F306EF45E47E1691436F42BB1573936CA2D05621314A11535
          4E0BB229EEF3B469A1DB8F65834DB56C42FDA82E7C5DF263A322C9744401755A
          1895C5B2C126251B83C479AB18B452B01171BFBF29AEE61A374124E7A6E56C45
          CE9C39735613D91A8414C5A64A91232E789B964B7FA3C0081221717A5A3EA9C8
          A969511F65AB0013489178DACA930EFAFBFB49E51FBFFBEEBB9C1BA97C7CE79D
          77F848AA8E4CEC4554AD52E1C702D98FD3742A8850C1FB274F9EFCF8E38F27A6
          E5842652C2260C04125554180921FDCCF7EDDB77E8D0A1F1F17152F220D9BF7F
          3F1F49DF9D96BFFDED6F7D7D7DA4424BD98B48AD5036A1DF19B2B309AD626773
          CB2DB7D4E1FEA6548918152E389AA31724C78F1F1F1B1B3B72E4C8E1C3877110
          F7B4B27C201F2964130602892A54540164440F0D9172B4344AEA23F9EEEE6EC0
          101FA4E4A5E11A9F2D9404D90C0F0FDF7FFFFD838383EE6CA2AA58D8DC79E79D
          8B162D0AE2C9FDB940A912340A0CA180BB8F1D3B86F7D9D1810307389FA1A121
          CE67EFDEBD03030364F848219B30C00C63AA5051E1314227C866A222E477EEDC
          490FC1CE49C93BB2E16A78E49147EEB8E30E7C4DFCB9B0B15489624366514596
          2E5D5AD3E7697A6B266070040181D369E5C1B067CF9EDEDEDE9E9E9EDDBB77EF
          DAB58B36870C1F2964130698614C152A0A9E60CB86D3150CF24136EC0AEAA4C2
          46B757B50C36CF3CF3CC1D1579F0C107F52F6A45B1B1540965F3BF8F3D00927B
          EEB987CC92254BC81343B57B0EAD82860E83CB0A2F70C423232344069E8201FD
          F38E1D3BB66DDBF6E69B6F6ED9B2E58D37DE20C3470AD98401661853858A5467
          27D2F7E4CA66F3E6CDF8F7B1C71E7BEBADB7962D5B467EE5CA959859D8D8AB84
          B259BC7831548CC6EDBBDFFD6EEDD8708D4B6B46B741EB4410E06BDA1042E4ED
          B7DF06C66BAFBDF6F2CB2F7775756DD8B0E1F7BFFF3D193E52C8260C30C3982A
          54A43A3B91964D7A1D47361F7DF4112148EAC806076DDCB851BEF743FF8797F1
          F59A356BA49F0F6563AFE2384EBBF7DE7BC173DF7DF705D9C40E9D8312C3461A
          34AE74865BB880CE83368AEB57C6B8AFBFFEFAA64D9B7EF7BBDF3DFFFCF3BFFE
          F5AF3B3A3A7EF5AB5F91E123856CC24086C254A122D5D909BB62877AB31664F3
          7145D2B131647272F2473FFA11BEFEC9F4F7025CC6D04615F731F4AA55ABC023
          4B5CE6CE46F5340CBAB8F6F1112D150181DFB9D07EF39BDFFCF297BF5CB76EDD
          934F3EF9F8E38F3FF1C41364F848219B30C00C63AA5091EAEC44F53AEE6C18A4
          1179A4E9D894A6BF33D4DEDE8EAF393CC7FB1BBD4AA2FB9B5FFCE217E0297F39
          299ACDD7BEF6B5871E7A0817D1059092A724191B350AC04D74180CBD88003A12
          82C3113E96346E54A122D5D989346B6A30EDC286411A7730A4A9D988D0EAE2EB
          B56BD7BAB0B15489BDF7A41F5AB8706139E6026C3EFBD9CF7EEF7BDFDBBA75AB
          B1F2142594B335011B2E1FD5A031326600463F9F2836E97BA84245AAAB664DEF
          72826C262B922D1B840BE5E69B6F7EEEB9E71CD9845671792E40AB7ED34D373D
          FBECB3061B0058566C636B1A36DC51CA4A700CC312B161684015592A8E9D04D9
          10522A50C8C7B2D1ED552D396297E769B4B177DF7D378DAD5471799E6654717C
          9EA6C02836345CC48765A543B6AAC6CD95CD89132718BDD06770FB421399880D
          2337AA5091EAEC845D2565C3009A98238D65E3A8CACBB95609F637F42B6A6D93
          BEBE3E7AE86F7DEB5BA4E4A590ADD82460C33852D8E01D065DC47822360CACA9
          4245593C9D5DB1436123136B6ACFA6F62AAEA0DB572BEB82646145C84B215BB1
          49CC865116AD0A37FFDC63266243774A152A529D9D081B358C766123CF17486B
          CF26F48C52EF87F643AD484DC42836E4A590ADAA592A68DC9CAC88B0A1A3DABF
          7F3F69A3B3C93E6E6ADFDF342B9BECFB9BDA8FD30C360CD2B837226D7436B98C
          D372BDBFE162511D0CF95836BABDAAD5106CDAB2BDBF097D2E90884DEC738120
          9B5315693E36993D17887A9E96884DECF3B4583604DCC8C8086913B011C9E079
          5AD473E8446C629F43C7B2A1EEE8E82869D3B07191981D06DFDF30D0A24B4FF4
          3FE4FD0D15A3DEDF04D9A8C93A9E8D8D4DF0BD276EFAD39FFEE4F80FB0040C55
          2CEF3D63D93080A63D246D5C36D91F5870BE80E02108F094CC17606CFEFEFBEF
          BFF7DE7B3259890C1F2994F90298612C60A2E60BB442DCB82BBE92C1F0564D64
          A0ABFF4A02C9CCE43435CF8676892EFDE8D1A3389D2E1A9731821AD4848F14B2
          0903CC30FE787AAE9A6ACD8C7936FDFDFD6AD04C3EC8C6180BE8F6AA5673B019
          1818E8EEEE66503A3E3EFE89267CA4904D18CCB0113C327556F0C8ACC189E9F9
          8274216A8A9A12999CC6269947A866100A18BDA7896273BA22A1CF3A9B950D7E
          C3FBE2AE5061130698CD62A3376E6A5E279D87849188BCE6521FD9245370D5BC
          CEA869B7B47BB0C49E943C0D23BD0BB548C9D342D23CEEDDBB97943C07A5EC45
          A45613B0E14E83E0880223820166336C0C3CFA9468352B5A689DD644B6AAB99C
          F6F9D034830CE7D4D459633EF4EEDDBB891852751A622FA26A353A1B6E04B9B8
          4F5B0503CCA20E2C7BC9CFB38DC5863EDF0E4604B31AB2B18B67535C366142F3
          486726C34552F291CBED7A3679B3318CE9C618A0AB6E89BC7AB26BEED6B3A946
          DCC1287B4619205125E4E5870F42F6ECD954230A80C1C3CE86885125E423D984
          496893185A187EC0B9B139E320B566637833EAA32AC46BDCFAA812F2D2DF042D
          1106F7AA847C697ACA04CDA02A242FA3FC6061F801B7141B7BDC84F422A5D289
          1327547F43DE6219FC7741A70B9B6061F801B71A9BFC24F8EF3C1B5749E4D914
          3B0F967836AEE2C2A6A7A7E7AF7FFDABCBEB706C76EEDCA92C3D9BAA24960D8E
          964920A43A1EF5557755B27BF7EEFEFEFED1D15152F26D8DC6E6AC83148B0D11
          A31E6F935715D5905F95BCFDF6DBA31521DFE6D95429A9E346BD4A50253E6ECA
          B27AE7F8DD7F3E61576CEC5494B37C7F93191B9CFEDCD0A9CD6367EC8A8D0B1E
          1736A9A5E5D81013B16044B174711F52FE62B126335FF5ABF29CAB63C31E46C3
          8401C8DEBD7BFBFAFA085052F294C8A68315918FE53543668B5A45A431D8A8AF
          E22930A28A8DB454D258D5858D5AA94A7DA43F530F26C8AB4DAA30059B730E52
          ACB8513DBCEAE46BCCC658A94AD818EB55091BF99AD1E1C387E5BB4A4DC226BA
          C329E92363191CD7988D311348D818F381840D195AB3A3478F9292F76C726763
          AC54A5D8E86B892936A4B051F9266753F7362D8A8DBEEE8E622333BF495B824D
          DDC702C6EA14ADC42691AF93AA679363DCB888954DF0BD6782C2DAB239EF20F5
          64134B2BC4C0CAA62AB1B2514F6075360CA08F1F3F4EDA6C6CA280C518246CE8
          5C2E91466593EBF3340B9848032B095A2775575F6EA92A27A66EE0D56184CC41
          6838366D357C0EED245636C65DBD9C9871572F8761DCD5C7B2515FCED2D91C39
          7204AEA4756393A1E4CDC6B83B911333EE1CE5308C3B47C5C6589DA275D9180F
          D68212B21A5D2A36FA284BB1D14759B56733E5207563633C900E0533F388DA8D
          8DD12235079BDB6BCFA69443DC34259B3975619346EAC4465F7747B1A1BBA2F1
          24CD978DFD9C1B45A3D8E82360C5461F017B369E4D466C6EAC88A35F661A2E37
          FBA4FBAF0D1B63758AFCD8587EB74C89B0F987E660635CF58A8DDE932B36B284
          08A90B1B7D4D24C546DF437E6C9AA44D8B62A35FF5CDC0A65E7173E0C0818181
          015AA40FDC044BECA96561A3AFCCA2D8C86255A49E8DEBFEE5875D920AB54A6D
          E65A4619B2D1F7A0D8E87BA8759B56173CFDFDFDF4AEE7A67F9FC645B0C45ED6
          B949C426519B962D9B1D3B769C3E7DDA0E0603CC22D9D4054FF00C5D44BC60CC
          60B2B3D1EFEAD3B149DDA6F5F6F6323EB49F110698996C7467B9B0D161B8B0B1
          EF3F0F36FAEC32C5469F5DA6D844CD4F0B6593FA990DB5FEF297BF58DA063661
          507EB114CAC610975899F578C6215642F75F0D1B639D29393663B52961436670
          7070646484947C2C9B6CE70EA2C3C3C3DDDDDDD4629F7A153E52C8260CC4D26C
          D3DCC184E2716FCA82FBB7B0C11176365CD76A9D29FB7B4FEE19552179C5C6A0
          2B6C0CBAC2C6A02B5C3FD596BE226F5FED8DB078FFFDF7890F7DDD413E522811
          73818DEE20FD77AD62232045AD5A6A784C874A65AEBAA22B1FF1BEBC1B1590E4
          29914DC65C7559124DED4FD640ABFE14E6E8D7EF85B726DAB959AE7DF72AA14D
          1912F53341A16ED5F71C6560913282E8331A0D93913009B594DFA09D9A5E9A82
          547EB0363336E2EB99975AD17D7B52FB283C3A5A5DA3BC1F1B13D5B029A6CED1
          FD1575F186BA38D6D882472F0F820902307665B83BF423C350CFC6954D697663
          18C4132C8FDA617C98444BDD3D9E864D29CF362D5B6D2D36F221A7B1805E316A
          5368DCA8DD1A25035679FCF1FFD1550A69D32E64AAF317635C9765B7336313EA
          20772F3BD60AED6C74C09666CDD86DBDD80C0D0D7117E2B2EC76366C0CDF4539
          2ECA6B8EFF2674906680B10F07F4FF65B8DBF82848B0CF960D1183F7272727A3
          D675D697DDCE924D8683A85830C126D17118ADFE578AB8994198D653DCB40F0F
          0F5BD6DCFE445B763B3336EE8E8BF25A5230C1919EE3EDA7FCAFBAB0A135A3ED
          B2AFB3395159763B1B36491DD704E39F749A6819D46CD8D4FD9C9D344A32B25F
          1C21061BF75796F9B0893DEDEAEC434FBB21D8D0A6D1A338BEB26C253605D0BE
          BEBE91919168EC6551AF2CF361E33542193D131367237E54B534FB9565261AB8
          71F17113ADA3A3A3E0217A625F5966A2CB3D9B44CA28D9E59565267A57F5EE6E
          353C35D388FEC6E329807EC7F4AFBBAF13DAEB309A814D69E68BF66626A37F71
          BFE96B4362D938DBC7DE4064F8BF6A706C6DFABBD44A465EB666C566BEED9492
          BA2CCE3E2598B6B09DC7B249621F3C98F8C32BE51E370D727F5348367FAEC81F
          A7453D5D35FF6F3A29C74D453A3B3B6FBBEDB64B2FBDF4E28B2F26254F498218
          0A5339E860F9A6F5FF8566C026EAD812DA47B1B1C5F7F47E848D9CA97A699415
          9BAF901E3C7870F9F2E5175D7491F1689912CAD99A8E0D872BE766E0818A3CD2
          4E8027CAD7A19B92DB5BE2C6C66676E8641E3773480160795FC2D692B660837A
          59D079D737446BC426ECE86D6C92D85BC602D50E26AB6143C3158C18237AB0F1
          6C82FFC2692C500D1BFA150B18116CEACCC68E2D4FFB2836AE63E82AD83C40B7
          1FCB069B998B222C53F67EE09C736113711A59D927B8D1B138A4AD245F11AD92
          CD1C4665B16CC4A61471990898E078ACC9D94C2F6AA0CE54323210500384329E
          2AD87CA7C1E2A6302A6048E5ECF431B48CAAAB67E3DADFE857877199A0975F7E
          79F0E8731F0B68A751A57D68B8541F37F147623DC8E58EE3347575042F130113
          C493EFFD8D7D53427B0B809831F4B4101F870F1F1E1A1ADAB3670F29F9AA22A6
          C2E6AE92DBFD4DFDE3A6A86CC6C7C70707078F1D3B265F4E27254FC9852F2C56
          C1A6BC849CCB73816DDBB6A9EF62B9E45B840DF10186609444952762E3FA3C0D
          A72BD7BBE45B840DCD175112EA5BCA639712B0B399790EBD77EFDE2D5BB63CFF
          FCF3EDEDEDA4E429D18FC31D4FEBB0A17731E67528A1BCBC9E4B156CBE22FF63
          FBF6EDEBD6ADE37EE5F8F1E3535353A4E42929AF8E90108FAE393E872E061B3A
          7FFDDBEBBA505E5EF5A80A365F1230DDDDDDC1995794505E259E6C34EE34AAB4
          4F37862EE51C37FF49C3457C0898AEAEAEBBEEBAEBEAABAF26255F9AC6C3D614
          8D5B8BB0C9B7BFA15F294F139D06F3E52F7FF9F28A90173C6CC5C6382697FEA6
          15D8E43A4EBB9D6E9FDE853CB172F96CA18472B662133CACDA356845D63CEF6F
          AE6554260B4AD094196C28294D2F34814DE891793C2A4AF2782E706FEAB8F178
          4A0EDFA6AF864DCAFEC68EA7EE2E6B0E3669C669763C2DA5B9B2B9B394F0FEC6
          E3C98A8D7CB3DEC2E61AF91F8ECF053C9EACD8A8250F2C6C123C4F73C7537797
          159F8D4BDCCCCC55CF844DAB69AEFDCD85B89136ADA7A7676C6CECFCF9F3A4E4
          93B6692DA8B9B2992F60B66EDD2A5FD0569BC85342B9C753373632861E1F1F97
          A703BA5042B9CB183A2755B3ABA2A659D55DF36DD3E85776ECD871EAD4A9E07B
          084A2867ABFDDEB3366CDA64225CBD61D492CD72BAFD3D7BF69C3C7932346E28
          67ABE5994DBEAA66BE95E2BE76D47CD256BA9251D9BE7DFB68BBCE9D3B67F437
          9450CED6A8679D79AB9A5D1535CDAAB9D97C899878E79D770E1D3A343939090C
          62052AA4E429A19CADF58A9B328CD20536633F98D76A6CBE435FF2CA2BAFF4F7
          F7CBEF31D388D1C790CA6F3353CED67AF5377AAC5816F46C563673649CD6DDDD
          FDE1871F0E0F0F8F8E8E8284943C2594D7719C966059BAE613FA9BD2F4FDCD6F
          7FFBDB6DDBB6EDDAB58B5BCEDEDE5E52F294505EC7FB9B1667336B0E546767A7
          B460A4E4EBFE5C4021694D36193FEBF471939984AC035524AD0B9B98C7C33593
          B6D27FD41D804565FAA79AA36B1BAA6524F1AF556A26B246D71FDDC4F0975DB3
          6253AACC9F2ED987D1D94921C094CA27B55CCD288F152CF54BD8AE99E0A97DDC
          1448180B1496CDFEFDFBB9C12AFF0C5A2C982665734F61DB34F90955D2F806AD
          49D914772C009537DE7843D8D8E2667B5BB3B2B9AFEE0C2CDAD1D12199A809E3
          E568DEDEA6DE233495C8BD675B65998F9D3B774AA6AFAFCFC85C76D96546490D
          C088E8F3F9E56BE3C12F6DD7DB9139485B699180211530A482A16F5A242325A4
          AAA46641237824336BB905F5AEBAD5E2261825858A9B92F63DFA26EE6F96B7B5
          FD3FD823E03809000000436C6F73652E706E6730010000789CEB0CF073E7E592
          E2626060E0F5F4700902D212402CC4C106241DDFC8CD03529C051E91C50C0CDC
          C220CCC8306B0E488542B247902F0343952A0343433303C3CFFF40FA250343A9
          0103C3AB040606AB190C0CE2F993E28FBA01D56EF374710CA9B87525F4206F83
          01C71E29F717974B650EB95AB98817725CFF7853F655BB9A47948ACAAC13C7B5
          1E3ED8E3ECBC5634FF58CBF464399B7E863006EEBBF319F8188ECEA84F39D0ED
          F87C6AC3E249E6C6194767AEF36CE8F994C76BC43CED81DE447F3349AB863F73
          5CCEEA1E3AB0EC936DFF32DFB889DCA25F66CC38687FB3F9E40EF69F8E3FD212
          2BBE3970CD9AA2F68CADFB919886EF1DA90247D38767CDEE5A099B6EFF62A7AA
          BB3F5A5226A970876837D0FC1FE7FF3F906258E9623D61A3FAF23B401F3078BA
          FAB9AC734A680200C0366E9F0B000000457874426F72642E706E675907000078
          9C015907A6F889504E470D0A1A0A0000000D4948445200000064000000500806
          000000EF09D0EF000000097048597300000B1300000B1301009A9C1800000020
          6348524D00007A25000080830000F9FF000080E9000075300000EA6000003A98
          0000176F925FC546000006DF4944415478DAEC5D3D6E2B37101E72776D053EC1
          3B800137BE40A0C2701177295D04A973839C2237085EE5E2A57097CE019E9142
          2F1750634007C80984C8DE1FA608F9321A0FB924975C3D3F7100426B49BBCBE1
          37DF37E4CA180AA51414FB724C96212880142B80BC1DABBF36878410C1A7E4E8
          C7E5E5A557725EAFD700006072797D6401283CDE8B054871031D0A527D844070
          C722121C65F95BE973F1E76ABD5E8B3160EA230402BFDADE1B034A31AFCAF13E
          F802534768B1881C14354502F63E085F3B09071012BD27C9E71C288AE99F19F8
          811C03C314A76FC2E61C014478449F88044431CE39C1710182FACD453D078424
          C7141817201408FC4ADFA3E7EC011B92D46DD1221C7FBB98C445D618F54504C3
          6C6048D2040054FAB87200030E4698D75E1FF7FADC419F3BA0632753EA403084
          85DE92AC6B7CB57740AF1CED6341B1256789061E1F5704140A98200C51840906
          840A81D133600E8C1F7B7FD71191262D8DA3BA2DB29485E234A22032FF808319
          78E06B7DDC10606AC41CC12CA03123140074FAD8B4569FD331FDA24C51A1B32C
          0E8CCA1159A154C734370D0883624101D2770A066E0D3AA6BE710CA17DEE746B
          F577BB11C956A1D35E2A57148CE6FAFAFAA7A669BE4B313F6DDBF68FC7C7C75F
          2D11159B4BB8BC5111109A8B8B8B9F9BA6F93E911FBF3F3D3DFD62C9A10A318B
          F5C535CBE2A8FE0A8CC5627195C291DD6EF72702A525D187254C79CCB20493B4
          4DE4371630DE255AFBFC8D406975EB904F1D92BACFB331E3930CA0BBC40EA504
          030060B1585C69B6D548D3A543FE7CD61C60994D997B9C24060300E09DBEE609
          029FCEE0A4ADBF75840657FA66B9ECC492E8A724F53DA9D57E9F00C069463F4E
          1D33C801F52D38A90371CA44572E6B48A29FFA34D6064A334360E1494B65990A
          EF59A86449941073598D681E23592EB9A541951B9006E52EE923C3BE8000D2E0
          6A0686544873210210DB63938A9965E5F4834EA385E3918C1720C030C45C3C97
          5596D5F254B9C20CAF66647A15C27819E95C6E406265CAA7EF8762BA974F7242
          A4E5B2A9B9031C8FD925235B7330A462D81E95436C7A9C1B10A7CE4E7CE27B28
          E9753DE38B6688482C25B9EE253CC0984B7AC740F14EEAB6C1980B90D4F71596
          C5E25CB9D0ABFF3230E20E612211B8B6DF7372F6DBC58AC9B3ACB766AE5F2FE7
          CE85BEFD3ACAFF5C3C542EF446F1D8C098538683EF278F0C843926253E931151
          18F246AC0052002956002980142B8014408A15400A20C50A2005906205906205
          90B76293FEEBE2EEEE2E69676E6F6F0F3208ABD52AE9F596CB65614891AC6205
          900248B1024801A45801A4D87103C2157E5133DFDFBBF8CCB13144F90CCA21EF
          778C92C555E4F962EE238F940DB4A6550E1B3CE44AC502A2BE90819DA2DFB6C2
          3739FB3D80BD46960A6588EDA4B9A89EFABE1C207D463F7A072093254B1D507B
          D504567120D00A44B901C1B55AAC15E54200B195B49B437B5542D9E240C90DC8
          1818931982EB8FE404647024C5D8FC418130F5AD7299B93E078C558265848373
          6B6F4A19C495E04CE5B75C864B4C295F9F7C256B3820D587042CC1D7EA0EC090
          CE97F97520ED3F47D676BBFD747F7F7F95D283ED76FB8989AC9819962DA9BF2A
          C7B7DBED3E2E97CB1F53FAB1DBED3EC2FF85CB3AE28F333FD69111D6AD56ABDF
          00409C9D9D7D9B088CBFF435BB90880AE83BAE1A6A2ABC559BCDE6FDF9F9B95C
          2C163F2402E3C366B3790F002F0814D78C6BCFC64AFCD10A3AA6CED429002C74
          3BD5ED44375A5E4930D26706FD45B767DD76BA3DC37E79BCBD081B29F1C71509
          C0D57F4CD9A405F2E31BE2CB29FA1EAEC80044B65BD27FE3C33FC88F1DFA1E65
          0D2EF1A77C18C22573A92F2E48075FE075B955AE9A272DA74A8179217964CA5A
          84EBBBA91AFA6230447EE04031C1C595E0C0D26706FA9901E705F6EB2DF69669
          7D94640926992B34B0349A5CE55507069496712046B21433D0863106940E5ED7
          CE1DD020E3B2B1634CA7FDC781D522F9A5852FD92710A10C010B20B5D16408AB
          084D936CEF88A614EB10573DDD01DD1FD7B9AA08C00AB184CED85A224F2D9313
          552C43141315B6455C07690B29F796296F4C6217B05F74D236ADC7EC985A48B9
          23AD6716D551D35E7AE260712465A9F1C1124D539F160F238F6A7060A528353E
          5866584E7FEA40A7E8B3A601F216E39FFAE804503F6C925BA157332B6B21AE18
          FF606179CFB0233AA973FB6608F259EEED2A42E54A31495B5892295DA7749066
          BB0A8EF99C1F2A46B26CA00001845D1A8C0C68F0862E912CC14CC1032A913F3D
          CCBFA1CB64C91281D19B7CCBA34096284B70E182F803E4D9F24859667C0AE0BF
          3DA8E86E6EF5D4A8BBB9B99934B00F0F0F30832907EB7B98675330AFDF76AC80
          7C259B16BBB6B9509077DB3CAB8A1CF3B67963C070B22612B270CFCAC6927179
          298934F86EBD4AEDDF010055A51C1408FD1ED80000000049454E44AE4260820B
          9F51040C000000476C6F77456469742E706E67C90B0000789C01C90B36F48950
          4E470D0A1A0A0000000D4948445200000016000000160806000000C4B46C3B00
          0000097048597300000B1300000B1301009A9C1800000A4F6943435050686F74
          6F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7DEF4
          424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C11145
          45041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE17BA3
          6BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E11E0
          83C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C007BE
          000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B088014
          00407A8E42A600404601809D98265300A0040060CB6362E300502D0060277FE6
          D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A4500
          58300014664BC43900D82D00304957664800B0B700C0CE100BB200080C003051
          88852900047B0060C8232378008499001446F2573CF12BAE10E72A00007899B2
          3CB9243945815B082D710757572E1E28CE49172B14366102619A402EC2799919
          3281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEABF06
          FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225EE04
          685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5E4E4
          D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D8147
          04F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9582A
          14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF3500B0
          6A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D4280803806883
          E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC708000044A0
          812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64801C
          726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E3D70
          0FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F821C1
          4804128B2420C9881451224B91354831528A542055481DF23D720239875C46BA
          913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD0647431
          9A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C46C30
          2EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB177041281
          45C0093604774220611E4148584C584ED848A8201C243411DA093709038451C2
          272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C43724
          1289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9DA64
          6BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853E228
          52CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1B652
          AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11DD95
          1E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B180718671977
          18AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA0A95
          4A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353E3A9
          09D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659C34C
          C34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CDD97C
          762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C744E
          09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48AB51
          AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE753D9
          53DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E4C6F
          A7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC53571
          6F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F8C69
          C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B4CC7
          CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B86549
          B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711A7B9
          4E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D6167621767B7
          C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563ADE9A
          CE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD347671767
          B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F59D9B
          B39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5D13F
          0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761EF17
          3EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF437F23
          FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65F6B2
          D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE690E85
          507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577D1DC
          4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3FC62E
          6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B1798
          2FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA8168C25
          F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC91BC
          357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD3183
          9291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507C96B
          B390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E2BCD
          EDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39B23C
          7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D6B81
          5EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D1B3E
          15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF66D2
          66E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97CD28
          DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB561D7
          F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49FBB3
          F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51DD23D
          54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9F709
          DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B625B
          BA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367F2CF
          8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8BE73B
          BC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB9CBB
          9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393DDDBD
          F37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41D943
          DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43058F
          998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECBAE17
          162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C61EBE
          C97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553D0A7
          FB93199393FF040398F3FC63332DDB000000206348524D00007A250000808300
          00F9FF000080E9000075300000EA6000003A980000176F925FC546000000F449
          44415478DAB4956D0EC23008865F682FE03DBD8DDED30BACC53F45D93B16B7AA
          24A41F491F081410DC4CF016090ADAB3D8D0B8F733EA0E54E91C0D58A29D0CBE
          C00C530025318004D8E8BE03B09A78EAD012E04AE01EA03256BF13F798C195D4
          0D44701BBA0C95B11A83A3A715C00307C5AE80DC71A1E4F518E312C067A57A6C
          1D9E256C16BC4AB626312E13E0CD0F52FAC3BF024393E29009F0E6BDE24FA23B
          657A5636EF3529C736016ED977B33F804D13E832015E185EA9FEE54B70F35008
          6E5692CA3BDB8416F6BAD214E8A14B79683EB5CD96C5380373328F347A7EB78A
          714F006746D3EA1F579E55DE4FBF1DA6CF010060C199422D2438100000000049
          454E44AE426082962B96FB070000004D61782E706E67F7000000789CEB0CF073
          E7E592E2626060E0F5F4700902D212402CC4C106241DDFC8CD03529C051E91C5
          0C0CDCC220CCC8306B0E488542B247902F0343952A0343433303C3CFFF40FA25
          0343A90103C3AB040606AB190C0CE2F993E28FBA01D5D67ABA388654DC4AFAF3
          FFBF3DB32EA330732F23375FA1201B1B5B38104B2A9DAD3C74E0C086D98D8D0F
          7937DA291C2D605B11151E54C360BCA7DB83FB548165C7B3428384893DEF6A6B
          16645FF8CDC0B6EBE28FA5CE6A7C1E451F177C7114D7D5A9603A3B335565C6D7
          96290AB77ABD991B0FF1311BF0FDFC05B498E1FF7F6686B6EDC27BAEED2B0C06
          F13D5DFD5CD6392534010062494E8A070000004D696E2E706E67E2000000789C
          EB0CF073E7E592E2626060E0F5F4700902D212402CC4C106241DDFC8CD03529C
          051E91C50C0CDCC220CCC8306B0E488542B247902F0343952A0343433303C3CF
          FF40FA250343A90103C3AB040606AB190C0CE2F993E28FBA01D56678BA388654
          DC4AFAF3FFBF3DB32EA33073EFC115AC8BC57818B9230A3ABA0D0C0C76181918
          9C10B8F0BFA5B131D19C99F9B07450AD43CF439E00D3754F7E30A4558833729F
          E2B04C39F0E801E795D45497191F5B64E4DFA82D11D49D54C874ECE2A3590240
          3B18FEFF676648B82AB055D680D906C4F774F57359E794D004001AE343000800
          00004E6F726D2E706E6702010000789CEB0CF073E7E592E2626060E0F5F47009
          02D212402CC4C106241DDFC8CD03529C051E91C50C0CDCC220CCC8306B0E4885
          42B247902F0343952A0343433303C3CFFF40FA250343A90103C3AB040606AB19
          0C0CE2F993E28FBA01D57678BA388654DCBA3275A36883028FCB7E3BB70D25B2
          E1A7042C26BD0ED8C56CF6615E6B424F4081EEF409BBB9FB358F79F89F29690B
          2E104B60BEC6A5CEC05E1025B2C7547D6E7E18EBCE9DEB0B9698B4FC4E3CBD9E
          67DE2CEFC6D7BAE219B992C9BE4F57EBEA8AFE10E3DAF2CAE93CCF276F33CD8A
          CD89DB23442EADEA4A2A0A3ED1BE6847C669D9CB1FFE1F3465E0F094F48E750F
          6604BA89C1D3D5CF659D534213001A3C55240D0000005265637448696E74312E
          706E676D030000789C016D0392FC89504E470D0A1A0A0000000D494844520000
          00320000003208060000001E3F88B1000000097048597300000B1300000B1301
          009A9C18000000206348524D00007A25000080830000F9FF000080E900007530
          0000EA6000003A980000176F925FC546000002F34944415478DAEC5A6D6EE420
          0CB51D2A55ED3D2A75EF7F9A3DC6FEDA4D02EE8FC2C8E3D8844CB225331A4B88
          3465123F7F411E202C058D6BAB47B0C5BB6F0957EEB31AC3C66FD87BA9A7B0D7
          B62ADE0A8C57DA02D89AF52937EBDAF3D65E00A54FA2B7AEAFC6074709A9F0E0
          F44781F140240088AA0735E6E2846084162A10030084DC06D5CAB8B5BC590352
          40146B47D5E6DC408C436980B00682D3EF3FF0C382F4F129949F1C235D257D70
          C28A84277AC87B0630895046A318C4F2032FB4CE006404807FC2D056D2A30E2D
          ABB45247206FF9DDE41480C5346079845442F70232284FCC4AAF242B9797EC12
          500F79CD7D14091F54BEC8C6A1B2CCE80D84058817E109B2CA7C7040E08E79E1
          0879C92082C895A1A61B55D65A68FCFFA72488AA496AF235D7795459F142478F
          0CC652086B7A5225477A861635AEBC2F80A862FD5E20E096CF0682F3CAA68838
          33904D914177A43CDEBB471E26B49E409E409E401E180837DEBB2B8FF0BD8716
          B782D040F8164BFC671035CEB7C923BCD522074B823622FB028C0C947C02AF14
          AA3419A04C3DC909A7F2A3D409C82C1894C265B1027505861AE2B38714BA7436
          C098BA854A8E240088481FBFE09B307BCFFD5BA66B5E33DB111C9A061B4B2A0B
          450BFDF317BEE9D2518092E1C6353A48A3950F9FF3438BD265BC64FF6EF9CE97
          EF2B8A4E194401320A1DA25308161E9100E4DEC428180D10F725EFB417485246
          1B956766A5D795678293E4F2C1930221EF0783B269FD3CB50A8B7CF6A8BC3289
          7C5994E3E05848B2DE32F6CBCB0A8D493BC2CA0BAF24941E0D20D1A85E10F21F
          A826231440661576335C6FC3610381B696EC56AEC81DAB498556D2534368A824
          D21311EC3DC4BD641EAB79C2DA3F8C5B921D8C89505B6BA8E4C5DECD509D2F51
          159F04CB2DEA45B2A3EA93F170AC84D351FBECDA70D65EFB624BBBF5E40319D7
          00C79E7EA81D1AA82D4F788D085B3BCE01078268290250E99B0EC6D48E79C041
          80B8C143D595391E445BE2C1DED8FCFDDEA240CFED85E6EFF75B94C43328BE50
          8A99E111E46B00126294EFDA9A8EAC0000000049454E44AE426082C5328582}
      end>
    MenuSupport.IcoLineSkin = 'ICOLINE'
    MenuSupport.ExtraLineFont.Charset = DEFAULT_CHARSET
    MenuSupport.ExtraLineFont.Color = clWindowText
    MenuSupport.ExtraLineFont.Height = -11
    MenuSupport.ExtraLineFont.Name = 'Tahoma'
    MenuSupport.ExtraLineFont.Style = []
    SkinDirectory = 'D:\component\Skins'
    SkinName = 'AlterMetro (internal)'
    SkinInfo = '8.12'
    ThirdParty.ThirdEdits = 
      'TEdit'#13#10'TMemo'#13#10'TMaskEdit'#13#10'TSpinEdit'#13#10'TLabeledEdit'#13#10'THotKey'#13#10'TChec' +
      'kListBox'#13#10'TRichEdit'#13#10'TDateTimePicker'#13#10'TCategoryButtons'#13#10'TFileLis' +
      'tBox'#13#10
    ThirdParty.ThirdButtons = 'TButton'#13#10
    ThirdParty.ThirdBitBtns = 'TBitBtn'#13#10
    ThirdParty.ThirdCheckBoxes = 'TCheckBox'#13#10'TRadioButton'#13#10'TGroupButton'#13#10
    ThirdParty.ThirdGroupBoxes = 'TGroupBox'#13#10'TRadioGroup'#13#10
    ThirdParty.ThirdListViews = 'TListView'#13#10
    ThirdParty.ThirdPanels = 'TPanel'#13#10'TPage'#13#10'TGridPanel'#13#10
    ThirdParty.ThirdGrids = 'TStringGrid'#13#10'TDrawGrid'#13#10'TValueListEditor'#13#10
    ThirdParty.ThirdTreeViews = 'TTreeView'#13#10
    ThirdParty.ThirdComboBoxes = 'TComboBox'#13#10'TComboBoxEx'#13#10'TColorBox'#13#10
    ThirdParty.ThirdWWEdits = ' '#13#10
    ThirdParty.ThirdVirtualTrees = ' '#13#10
    ThirdParty.ThirdGridEh = ' '#13#10
    ThirdParty.ThirdPageControl = 'TPageControl'#13#10
    ThirdParty.ThirdTabControl = 'TTabControl'#13#10
    ThirdParty.ThirdToolBar = 'TToolBar'#13#10
    ThirdParty.ThirdStatusBar = 'TStatusBar'#13#10
    ThirdParty.ThirdSpeedButton = 'TSpeedButton'#13#10
    ThirdParty.ThirdScrollControl = 'TScrollBox'#13#10
    ThirdParty.ThirdUpDown = 'TUpDown'#13#10
    ThirdParty.ThirdScrollBar = ' '
    ThirdParty.ThirdStaticText = ' '
    Left = 65520
    Top = 648
  end
end
