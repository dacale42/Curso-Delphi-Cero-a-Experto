object FPrimerPrograma: TFPrimerPrograma
  Left = 0
  Top = 0
  Caption = 'Mi primer programa'
  ClientHeight = 561
  ClientWidth = 784
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lbSaludar: TLabel
    Left = 32
    Top = 56
    Width = 476
    Height = 45
    Caption = 'Bienvenido a mi Primer Programa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object bSaludar: TButton
    Left = 32
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Saludar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = bSaludarClick
  end
end
