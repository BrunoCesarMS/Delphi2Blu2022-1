object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
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
  object Titulo: TLabel
    Left = 104
    Top = 32
    Width = 194
    Height = 23
    Caption = 'Que animal sou eu ?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Animals: TComboBox
    Left = 104
    Top = 61
    Width = 194
    Height = 21
    TabOrder = 0
    Text = 'Animals'
    Items.Strings = (
      'Cachorro '
      'P'#225'ssaro '
      'Gato '
      'Peixe')
  end
  object Button1: TButton
    Left = 104
    Top = 88
    Width = 194
    Height = 25
    Caption = 'Processador'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo: TMemo
    Left = 104
    Top = 119
    Width = 194
    Height = 146
    Lines.Strings = (
      'Memo')
    TabOrder = 2
  end
end
