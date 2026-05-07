object frmTelaPrincipal: TfrmTelaPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculadora de M'#233'dia Escolar'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblNota1: TLabel
    Left = 56
    Top = 48
    Width = 38
    Height = 15
    Caption = 'Nota 1:'
  end
  object lblNota2: TLabel
    Left = 56
    Top = 77
    Width = 38
    Height = 15
    Caption = 'Nota 2:'
  end
  object lblNota3: TLabel
    Left = 56
    Top = 106
    Width = 38
    Height = 15
    Caption = 'Nota 3:'
  end
  object lblMedia: TLabel
    Left = 75
    Top = 243
    Width = 36
    Height = 15
    Caption = 'M'#233'dia:'
  end
  object lblResultado: TLabel
    Left = 56
    Top = 272
    Width = 55
    Height = 15
    Caption = 'Resultado:'
  end
  object edtNota1: TEdit
    Left = 100
    Top = 45
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtNota2: TEdit
    Left = 100
    Top = 74
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object edtNota3: TEdit
    Left = 100
    Top = 103
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object btnCalcularMedia: TButton
    Left = 100
    Top = 160
    Width = 121
    Height = 33
    Caption = 'Calcular M'#233'dia'
    TabOrder = 3
    OnClick = btnCalcularMediaClick
  end
end
