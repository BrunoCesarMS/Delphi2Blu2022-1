object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 288
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 82
    Top = 81
    Width = 226
    Height = 16
    Caption = 'Combustivel gasto  pelo autom'#243'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 53
    Top = 8
    Width = 269
    Height = 16
    Caption = 'Dist'#226'ncia total percorrida pelo autom'#243'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 90
    Top = 202
    Width = 197
    Height = 16
    Caption = 'Consumo M'#233'dio Do autom'#243'vel '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 112
    Top = 38
    Width = 161
    Height = 21
    TabOrder = 0
    Text = 'Dist'#226'ncia percorrida'
  end
  object Edit2: TEdit
    Left = 112
    Top = 120
    Width = 161
    Height = 21
    TabOrder = 1
    Text = 'Combustivel gasto'
  end
  object Edit3: TEdit
    Left = 112
    Top = 232
    Width = 161
    Height = 21
    TabOrder = 2
    Text = 'Consumo m'#233'dio'
  end
  object Button1: TButton
    Left = 128
    Top = 160
    Width = 113
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = Button1Click
  end
end
