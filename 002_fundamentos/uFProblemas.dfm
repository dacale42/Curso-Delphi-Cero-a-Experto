object FProblemas: TFProblemas
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Resolucion de problemas'
  ClientHeight = 421
  ClientWidth = 624
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MenuPrincipal
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 21
  object paginaPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 408
    Height = 421
    ActivePage = tabConsola
    Align = alClient
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    object tabConsola: TTabSheet
      Caption = 'Consola de Mensajes'
      object mConsola: TMemo
        Left = 0
        Top = 0
        Width = 372
        Height = 413
        Align = alClient
        Lines.Strings = (
          'mConsola')
        TabOrder = 0
      end
    end
  end
  object Contenido: TCardPanel
    Left = 408
    Top = 0
    Width = 216
    Height = 421
    Align = alRight
    ActiveCard = cardFactorialNumero
    Caption = 'Contenido'
    TabOrder = 1
    object cardProblema1: TCard
      Left = 1
      Top = 1
      Width = 214
      Height = 419
      Caption = 'cardProblema1'
      CardIndex = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 97
        Width = 214
        Height = 73
        Align = alTop
        Caption = 'Ingrese Nro. de 4 cifras:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object sbSumarNumeroCuatroCifras: TSpeedButton
          Left = 2
          Top = 50
          Width = 103
          Height = 21
          Align = alLeft
          Caption = 'Sumar (Forma 1)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = sbSumarNumeroCuatroCifrasClick
          ExplicitLeft = 1
          ExplicitTop = 46
          ExplicitHeight = 24
        end
        object sbSumarNumeroCuatroCifrasF2: TSpeedButton
          Left = 105
          Top = 50
          Width = 103
          Height = 21
          Align = alLeft
          Caption = 'Sumar (Forma 2)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = sbSumarNumeroCuatroCifrasF2Click
          ExplicitLeft = 108
          ExplicitTop = 46
          ExplicitHeight = 24
        end
        object edNumero4C: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 22
          Width = 204
          Height = 25
          Align = alTop
          Alignment = taCenter
          Color = clAquamarine
          TabOrder = 0
          Text = '1234'
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 214
        Height = 97
        Align = alTop
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 212
          Height = 95
          Align = alClient
          Alignment = taCenter
          Caption = 
            'SUMA DE DIGITOS DE NUMERO DE 4 CIFRAS'#13#10#13#10'Usa 2 formas disintas:'#13 +
            #10'- Una dividiendo enteros'#13#10'- Otra convirtiendo a cadena de texto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 197
          ExplicitHeight = 90
        end
      end
    end
    object cardProblema2: TCard
      Left = 1
      Top = 1
      Width = 214
      Height = 419
      Caption = 'cardProblema2'
      CardIndex = 1
      TabOrder = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 214
        Height = 41
        Align = alTop
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 212
          Height = 39
          Align = alClient
          Alignment = taCenter
          Caption = 'RESOLUCION DE ECUACION CUADRATICA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 153
          ExplicitHeight = 30
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 41
        Width = 214
        Height = 48
        Align = alTop
        Caption = 'Ingrese los coeficientes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label3: TLabel
          Left = 145
          Top = 19
          Width = 19
          Height = 27
          Align = alLeft
          Caption = 'c='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 21
        end
        object Label4: TLabel
          Left = 73
          Top = 19
          Width = 21
          Height = 27
          Align = alLeft
          Caption = 'b='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 21
        end
        object Label5: TLabel
          Left = 2
          Top = 19
          Width = 20
          Height = 27
          Align = alLeft
          Caption = 'a='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 21
        end
        object edCoefC: TEdit
          AlignWithMargins = True
          Left = 167
          Top = 22
          Width = 45
          Height = 21
          Align = alLeft
          Alignment = taCenter
          Color = clAquamarine
          TabOrder = 0
          Text = '1234'
          ExplicitHeight = 25
        end
        object edCoefB: TEdit
          AlignWithMargins = True
          Left = 97
          Top = 22
          Width = 45
          Height = 21
          Align = alLeft
          Alignment = taCenter
          Color = clAquamarine
          TabOrder = 1
          Text = '1234'
          ExplicitHeight = 25
        end
        object edCoefA: TEdit
          AlignWithMargins = True
          Left = 25
          Top = 22
          Width = 45
          Height = 21
          Align = alLeft
          Alignment = taCenter
          Color = clAquamarine
          TabOrder = 2
          Text = '1234'
          ExplicitHeight = 25
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 89
        Width = 214
        Height = 32
        Align = alTop
        TabOrder = 2
        object sbResolverCuadratica: TSpeedButton
          Left = 1
          Top = 1
          Width = 212
          Height = 30
          Align = alClient
          Caption = 'Resolver Cuadratica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = sbResolverCuadraticaClick
          ExplicitLeft = 9
          ExplicitTop = 2
          ExplicitWidth = 103
        end
      end
    end
    object cardInicio: TCard
      Left = 1
      Top = 1
      Width = 214
      Height = 419
      Caption = 'cardInicio'
      CardIndex = 2
      TabOrder = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 214
        Height = 419
        Align = alClient
        Color = clHotLight
        ParentBackground = False
        TabOrder = 0
        object Label6: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 206
          Height = 411
          Align = alClient
          Alignment = taCenter
          Caption = 'Bienvenido!!!'#13#10#13#10'Seleccione un Problema desde el Menu Principal'
          Color = clHotLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
          ExplicitWidth = 168
          ExplicitHeight = 125
        end
      end
    end
    object cardMenuOpciones: TCard
      Left = 1
      Top = 1
      Width = 214
      Height = 419
      Caption = 'cardMenuOpciones'
      CardIndex = 3
      TabOrder = 3
      object Label7: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 208
        Height = 21
        Align = alTop
        Alignment = taCenter
        Caption = 'Menu Opciones'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 119
      end
      object tvMenu: TTreeView
        Left = 0
        Top = 76
        Width = 214
        Height = 343
        Align = alClient
        Indent = 19
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        OnClick = tvMenuClick
        ExplicitTop = 49
        ExplicitHeight = 370
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 27
        Width = 214
        Height = 49
        Align = alTop
        Caption = 'Ingrese su Nombre:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitLeft = -8
        ExplicitTop = 70
        object edNombre: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 22
          Width = 204
          Height = 25
          Align = alTop
          Alignment = taCenter
          Color = clAquamarine
          TabOrder = 0
          Text = 'Alejandro'
        end
      end
    end
    object cardTablaMultiplicar: TCard
      Left = 1
      Top = 1
      Width = 214
      Height = 419
      Caption = 'cardTablaMultiplicar'
      CardIndex = 4
      TabOrder = 4
      object Label8: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 208
        Height = 21
        Align = alTop
        Alignment = taCenter
        Caption = 'Tabla de Multiplicar'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 152
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 30
        Width = 208
        Height = 54
        Align = alTop
        Caption = 'Ingrese un numero:'
        TabOrder = 0
        ExplicitTop = 3
        object sbCalcularTabla: TSpeedButton
          AlignWithMargins = True
          Left = 101
          Top = 26
          Width = 102
          Height = 23
          Align = alRight
          Caption = 'Calcular'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = sbCalcularTablaClick
          ExplicitLeft = 104
          ExplicitTop = 23
          ExplicitHeight = 29
        end
        object edTabla: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 26
          Width = 90
          Height = 23
          Align = alClient
          Alignment = taCenter
          Color = 16744576
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = '2'
          ExplicitHeight = 25
        end
      end
    end
    object cardFactorialNumero: TCard
      Left = 1
      Top = 1
      Width = 214
      Height = 419
      Caption = 'cardFactorialNumero'
      CardIndex = 5
      TabOrder = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 185
      ExplicitHeight = 41
      object Label9: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 208
        Height = 21
        Align = alTop
        Alignment = taCenter
        Caption = 'Factorial de un Numero'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 180
      end
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 30
        Width = 208
        Height = 54
        Align = alTop
        Caption = 'Ingrese un numero:'
        TabOrder = 0
        ExplicitLeft = 6
        ExplicitTop = 11
        object sbFacorialNumero: TSpeedButton
          AlignWithMargins = True
          Left = 101
          Top = 26
          Width = 102
          Height = 23
          Align = alRight
          Caption = 'Calcular'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = sbFacorialNumeroClick
          ExplicitTop = 28
        end
        object edNumFact: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 26
          Width = 90
          Height = 23
          Align = alClient
          Alignment = taCenter
          Color = 16744576
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = '2'
          ExplicitHeight = 25
        end
      end
    end
  end
  object MenuPrincipal: TMainMenu
    Left = 584
    Top = 16
    object Archivo1: TMenuItem
      Caption = 'Archivo'
      object Problemas1: TMenuItem
        Caption = 'Problemas'
        object problema1: TMenuItem
          Caption = 'Suma Digitos Nros 4 cifras'
          OnClick = problema1Click
        end
        object problema2: TMenuItem
          Caption = 'Ecuacion cuadratica'
          OnClick = problema2Click
        end
        object problema3: TMenuItem
          Caption = 'Crear Menu Opciones'
          OnClick = problema3Click
        end
        object abladeMultiplicar1: TMenuItem
          Caption = 'Tabla de Multiplicar'
          OnClick = abladeMultiplicar1Click
        end
        object FactorialdeunNumero1: TMenuItem
          Caption = 'Factorial de un Numero'
          OnClick = FactorialdeunNumero1Click
        end
      end
    end
  end
end
