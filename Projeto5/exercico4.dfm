object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 205
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object tProcedure: TButton
    Left = 8
    Top = 16
    Width = 105
    Height = 33
    Caption = 'Procedure'
    TabOrder = 0
    OnClick = tProcedureClick
  end
  object tFuction: TButton
    Left = 119
    Top = 16
    Width = 105
    Height = 33
    Caption = 'fuction'
    TabOrder = 1
    OnClick = tFuctionClick
  end
  object TInter: TButton
    Left = 8
    Top = 65
    Width = 216
    Height = 35
    Caption = 'Parametros de Interfer'#234'ncia'
    TabOrder = 2
    OnClick = TInterClick
  end
  object TConst: TButton
    Left = 8
    Top = 106
    Width = 216
    Height = 36
    Caption = 'Parametro Constante'
    TabOrder = 3
    OnClick = TConstClick
  end
  object BTNArray: TButton
    Left = 243
    Top = 47
    Width = 161
    Height = 25
    Caption = 'Array  Aberto'
    TabOrder = 4
    OnClick = BTNArrayClick
  end
  object TArratV: TButton
    Left = 243
    Top = 16
    Width = 161
    Height = 25
    Caption = 'Array  Aberto Tipo variante'
    TabOrder = 5
    OnClick = TArratVClick
  end
  object TFormat: TButton
    Left = 243
    Top = 78
    Width = 161
    Height = 25
    Caption = 'Format'
    TabOrder = 6
    OnClick = TFormatClick
  end
  object BTData: TButton
    Left = 243
    Top = 109
    Width = 161
    Height = 25
    Caption = 'FormatDate'
    TabOrder = 7
    OnClick = BTDataClick
  end
  object TFunction: TButton
    Left = 243
    Top = 140
    Width = 161
    Height = 25
    Caption = 'Sobre Carga De Fun'#231#245'es'
    TabOrder = 8
    OnClick = TFunctionClick
  end
  object Tdefault: TButton
    Left = 8
    Top = 148
    Width = 216
    Height = 33
    Caption = 'parameters default'
    TabOrder = 9
    OnClick = TdefaultClick
  end
  object TForward: TButton
    Left = 243
    Top = 176
    Width = 161
    Height = 25
    Caption = 'Declara'#231#227'o Forward'
    TabOrder = 10
    OnClick = TForwardClick
  end
end
