unit uFFundamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.Math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Menus;

type
  TFFundamentos = class(TForm)
    pcMenuPrincipal: TPageControl;
    TabArchivo: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    sbSumarNumeros: TSpeedButton;
    Panel3: TPanel;
    sbOperaciones: TSpeedButton;
    Panel4: TPanel;
    Panel5: TPanel;
    gbNum2: TGroupBox;
    edNum2: TEdit;
    gbNum1: TGroupBox;
    edNum1: TEdit;
    Panel6: TPanel;
    sbCalcularPitagoras: TSpeedButton;
    Panel7: TPanel;
    Panel8: TPanel;
    gbCatB: TGroupBox;
    edCatB: TEdit;
    gbCatA: TGroupBox;
    edCatA: TEdit;
    Panel9: TPanel;
    Saludar: TSpeedButton;
    Panel10: TPanel;
    sbOperacionesCadenasTexto: TSpeedButton;
    Panel11: TPanel;
    sbTipoVariant: TSpeedButton;
    Panel12: TPanel;
    Panel13: TPanel;
    sbFormatearReales: TSpeedButton;
    Panel14: TPanel;
    mmMenuPrincipal: TMainMenu;
    Archivo1: TMenuItem;
    Numeros1: TMenuItem;
    Calculadora1: TMenuItem;
    Pitagoras1: TMenuItem;
    OpCadenas1: TMenuItem;
    OpCadenas2: TMenuItem;
    FormatReales1: TMenuItem;
    SumarNumeros1: TMenuItem;
    OperacionesconNumeros1: TMenuItem;
    eoremadePitagoras1: TMenuItem;
    OperacionesconCadenasdeTexto1: TMenuItem;
    VariablestipoVariant1: TMenuItem;
    FormatodeNumerosReales1: TMenuItem;
    Saludar1: TMenuItem;
    TabSheet1: TTabSheet;
    Panel15: TPanel;
    sbVerMenu: TSpeedButton;
    Panel16: TPanel;
    Ver1: TMenuItem;
    Menu1: TMenuItem;
    Panel17: TPanel;
    sbOpconCadenas: TSpeedButton;
    Label1: TLabel;
    paginaContenido: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    mSalida: TMemo;
    mSalidaTexto: TMemo;
    paginaOpcionesTexto: TPageControl;
    TabSheet4: TTabSheet;
    ScrollBox1: TScrollBox;
    Panel18: TPanel;
    GroupBox1: TGroupBox;
    edTextoInicial: TEdit;
    GroupBox2: TGroupBox;
    edTextoFinal: TEdit;
    sbConcatenar: TSpeedButton;
    Panel19: TPanel;
    GroupBox3: TGroupBox;
    edTextoCopiar: TEdit;
    GroupBox4: TGroupBox;
    edCopiaCantidad: TEdit;
    edCopiaPos: TEdit;
    sbCopiarParteTexto: TSpeedButton;
    Panel20: TPanel;
    GroupBox5: TGroupBox;
    edMayusMinus: TEdit;
    sbMayusMinus: TSpeedButton;
    Panel21: TPanel;
    GroupBox6: TGroupBox;
    mTexoReemplazar: TMemo;
    sbReemplazarTexto: TSpeedButton;
    GroupBox7: TGroupBox;
    edTextoNew: TEdit;
    edTextoOld: TEdit;
    Panel22: TPanel;
    GroupBox8: TGroupBox;
    edClave: TEdit;
    sbGenerarClave: TSpeedButton;
    Panel23: TPanel;
    procedure sbSumarNumerosClick(Sender: TObject);
    procedure sbOperacionesClick(Sender: TObject);
    procedure edNum2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbCalcularPitagorasClick(Sender: TObject);
    procedure edCatBKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SaludarClick(Sender: TObject);
    procedure sbOperacionesCadenasTextoClick(Sender: TObject);
    procedure sbTipoVariantClick(Sender: TObject);
    procedure sbFormatearRealesClick(Sender: TObject);
    procedure sbVerMenuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbOpconCadenasClick(Sender: TObject);
    procedure sbConcatenarClick(Sender: TObject);
    procedure sbCopiarParteTextoClick(Sender: TObject);
    procedure sbMayusMinusClick(Sender: TObject);
    procedure sbReemplazarTextoClick(Sender: TObject);
    procedure sbGenerarClaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFundamentos: TFFundamentos;

implementation

{$R *.dfm}

procedure TFFundamentos.edCatBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = $0D then
  begin
    sbCalcularPitagorasClick(Self);
  end;
end;

procedure TFFundamentos.edNum2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = $0D then
  begin
    sbOperacionesClick(Self);
  end;

end;

// Inicio - Creacioin del Formulario
procedure TFFundamentos.FormCreate(Sender: TObject);
begin
  pcMenuPrincipal.TabIndex := 0;
  mSalida.Clear;
  paginaContenido.TabIndex := 0;
  mSalidaTexto.Clear;
  //ScrollBox1.
end;

procedure TFFundamentos.sbCalcularPitagorasClick(Sender: TObject);
var
  a, b, h: real; { definimos variables para calcular la Hipotenusa }
begin
  { Obtenemos valores de las cajas Edit de los Catetos }
  a := StrToFloat(edCatA.Text);
  b := StrToFloat(edCatB.Text);

  { Calculamos la Hipotenusa - Para calcular raiz cuadrada, se debe
    usar la libreria System.Math de Pascal - Definir en los Uses }

  h := sqrt(power(a, 2) + power(b, 2));
  mSalida.Lines.Add('================== PITAGORAS =====================');

  mSalida.Lines.Add('El valor de la HIPOTENUSA es: ' + FloatToStr(h));
end;

procedure TFFundamentos.sbConcatenarClick(Sender: TObject);
var
  tex1, tex2, texf: string;
begin
  mSalidaTexto.Lines.Clear;
  mSalidaTexto.Lines.Add('Concatenando textos...');
  tex1 := edTextoInicial.Text;
  tex2 := edTextoFinal.Text;
  texf := tex1 + tex2;

  mSalidaTexto.Lines.Add(texf);

end;

procedure TFFundamentos.sbCopiarParteTextoClick(Sender: TObject);
var
  tex1, copiado: string;
  texpos, texcant: integer;
begin
  texpos := StrToInt(edCopiaPos.Text);
  texcant := StrToInt(edCopiaCantidad.Text);
  tex1 := edTextoCopiar.Text;

  // Operacion de copiar parte del texto
  copiado := Copy(tex1, texpos, texcant);
  mSalidaTexto.Clear;
  mSalidaTexto.Lines.Add('El texto extraido de (' + tex1 + ') es: "' +
    copiado + '"');
end;

procedure TFFundamentos.sbFormatearRealesClick(Sender: TObject);
var
  numero: real;
begin
  mSalida.Lines.Add('=========================================');
  mSalida.Lines.Add('Formatendo números reales');

  // Conversión de monedas
  numero := 123456789.4321;
  mSalida.Lines.Add('numeroSinFormato = ' + FloatToStr(numero));
  mSalida.Lines.Add('numeroFormateado = ' + FloatToStrF(numero,
    ffCurrency, 9, 4));

  numero := 123456789.4321; { Configuramos menos dígitos enteros }
  mSalida.Lines.Add('numeroFormateado = ' + FloatToStrF(numero,
    ffCurrency, 8, 2));
  // showmessage('Numero = ' + FloatToStrF(numero, ffCurrency, 8, 2));

  numero := 123456789.4321; { Configuramos más dígitos enteros }
  mSalida.Lines.Add('numeroFormateado = ' + FloatToStrF(numero,
    ffCurrency, 12, 4));

  mSalida.Lines.Add('=========================================');
  // Conversión de números reales
  numero := 3.141592654; { dos dígitos enteros y cuatro decimales }
  mSalida.Lines.Add('numeroSinFormato = ' + FloatToStr(numero));
  mSalida.Lines.Add('numeroFormateado = ' + FloatToStrF(numero,
    ffNumber, 2, 4));

  numero := 3.141592654; { cero dígitos enteros y cinco decimales }
  mSalida.Lines.Add('numeroFormateado = ' + FloatToStrF(numero,
    ffNumber, 0, 5));

  numero := 123456789012345.654321; { usando la función sin formato }
  mSalida.Lines.Add('numero = ' + FloatToStr(numero));
  mSalida.Lines.Add('numero = ' + FloatToStrF(numero, ffNumber, 18, 5));

  mSalida.Lines.Add('=========================================');
  // Formatos especiales: FormatCurr
  numero := 123.654987;
  mSalida.Lines.Add('numeroSinFormato = ' + FloatToStr(numero));
  mSalida.Lines.Add('numero = ' + FormatCurr('000000', numero));
  mSalida.Lines.Add('numero = ' + FormatCurr('000000.000', numero));
  mSalida.Lines.Add('numero = ' + FormatCurr('0000000000.0000', numero));
end;

procedure TFFundamentos.sbGenerarClaveClick(Sender: TObject);
var
  clave: string;

begin
  {Generar claves}
  clave:=edClave.Text;

  clave:=StringReplace(clave,'a','1',[rfReplaceAll,rfIgnoreCase]);
  clave:=StringReplace(clave,'e','2',[rfReplaceAll,rfIgnoreCase]);
  clave:=StringReplace(clave,'i','3',[rfReplaceAll,rfIgnoreCase]);
  clave:=StringReplace(clave,'o','4',[rfReplaceAll,rfIgnoreCase]);
  clave:=StringReplace(clave,'u','5',[rfReplaceAll,rfIgnoreCase]);

  mSalidaTexto.Lines.Clear;
  mSalidaTexto.Lines.Add(clave);
end;

procedure TFFundamentos.sbMayusMinusClick(Sender: TObject);
var
  texto: string;

begin
  { Conversion de textos a Mayusc Minusc }
  // Diferencia de mSalidaTexto.Lines.Clear contra mSalidaTexto.Clear??
  mSalidaTexto.Lines.Clear;
  texto := edMayusMinus.Text;
  // Aca quedan las vocales acentuadas siempre en minusculas
  mSalidaTexto.Lines.Add(LowerCase(texto));
  mSalidaTexto.Lines.Add(UpperCase(texto));
  // Aca salen las Maysuculas acentuadas
  mSalidaTexto.Lines.Add(AnsiLowerCase(texto));
  mSalidaTexto.Lines.Add(AnsiUpperCase(texto));

end;

procedure TFFundamentos.SaludarClick(Sender: TObject);
var
  nombre: string;
begin
  nombre := 'Alejandro Carrizo';
  showmessage('Hola, ' + nombre);
end;

procedure TFFundamentos.sbOpconCadenasClick(Sender: TObject);
begin
  { Cambiar a una solapa de pagina realizar operaciones con cadena
    de texto }
  paginaContenido.TabIndex := 1;
end;

procedure TFFundamentos.sbOperacionesCadenasTextoClick(Sender: TObject);
var
  letra1: Char;
  letra2: AnsiChar;
  letra3: WideChar;
  texto1: string;
  texto2: AnsiString;
  texto3: WideString;
begin
  letra1 := 'p';
  letra2 := 'q';
  letra3 := '☺';

  texto1 := 'Bienvenido a la programación con Delphi Rad Studio ☺';
  texto2 := '♣ Bienvenido a la programación con Delphi Rad Studio ♣';
  texto3 := '♫♫ Bienvenido a la programación con Delphi Rad Studio ♫♫';

  mSalida.Lines.Add('=====================================');
  mSalida.Lines.Add('Caracteres');
  mSalida.Lines.Add(letra1);
  mSalida.Lines.Add(letra2);
  mSalida.Lines.Add(letra3);

  mSalida.Lines.Add('=====================================');
  mSalida.Lines.Add('');
  mSalida.Lines.Add('Textos');
  mSalida.Lines.Add(texto1);
  mSalida.Lines.Add(texto2);
  mSalida.Lines.Add(texto3);
end;

procedure TFFundamentos.sbOperacionesClick(Sender: TObject);
var
  a, b, c: integer; { se definen variables de tipo integer
    q van desde -2147483648..2147483647 }
  d: real;
begin
  { tomar los valores de las cajas edit que son de tipo String y convertir a
    integer > con StrToInt }
  a := StrToInt(edNum1.Text);
  b := StrToInt(edNum2.Text);

  mSalida.Lines.Add('================ Calculadora =====================');

  // Mostrar en pantalla > Integer to String IntToStr
  c := a + b; // Suma
  mSalida.Lines.Add(IntToStr(a) + '+' + IntToStr(b) + '=' + IntToStr(c));
  c := a - b; // Resta
  mSalida.Lines.Add(IntToStr(a) + '-' + IntToStr(b) + '=' + IntToStr(c));
  c := a * b; // Multiplicacion
  mSalida.Lines.Add(IntToStr(a) + '*' + IntToStr(b) + '=' + IntToStr(c));

  // c := a / b;
  { Division esto va a dar error, por diferencia de tipos de datos
    (Integer y Extended) >> Enteros y Reales }
  d := a / b;
  mSalida.Lines.Add(IntToStr(a) + '/' + IntToStr(b) + '=' + FloatToStr(d));
end;

procedure TFFundamentos.sbReemplazarTextoClick(Sender: TObject);
var
  texto, reemplazado: string;

begin
  mSalidaTexto.Lines.Clear;
  mSalidaTexto.Lines.Add('Reemplazando texto...');
  mSalidaTexto.Lines.Add('=====================');
  texto := mTexoReemplazar.Text;

  // Reemplazo una cadena por otra dentro de un texto
  // Filtros [rfReplaceAll,rfIgnoreCase] Reemplazar todos e ignorar MayusMinus
  reemplazado := StringReplace(texto, edTextoOld.Text, edTextoNew.Text,
    [rfReplaceAll, rfIgnoreCase]);
  mSalidaTexto.Lines.Add(reemplazado);

end;

procedure TFFundamentos.sbSumarNumerosClick(Sender: TObject);
var
  a, b, c: Word; { se definen variables tipo entero que contienen valores
    entre 0 y 65535 }
begin
  a := 123;
  b := 426;

  // hago la suma
  // Ctrl + D acomoda el codigo
  c := a + b;

  // Mostrar en pantalla > Integer to String IntToStr
  mSalida.Lines.Add(IntToStr(a) + '+' + IntToStr(b) + '=' + IntToStr(c));
end;

procedure TFFundamentos.sbTipoVariantClick(Sender: TObject);
var
  variable: Variant;
begin
  mSalida.Lines.Add('===================================');
  mSalida.Lines.Add('La variable contiene = ' + VarToStr(variable));

  // Asignamos un número entero
  variable := 1996;
  mSalida.Lines.Add('La variable contiene = ' + VarToStr(variable));

  // Asignamos un número real
  variable := 1996.2022;
  mSalida.Lines.Add('La variable contiene = ' + VarToStr(variable));

  // Asignamos un caracter
  variable := '♣';
  mSalida.Lines.Add('La variable contiene = ' + VarToStr(variable));

  // Asignamos una cadena de texto
  variable := 'Delphi es un lenguaje de programación';
  mSalida.Lines.Add('La variable contiene = ' + VarToStr(variable));

  // Asignamos un valor booleano
  variable := True;
  mSalida.Lines.Add('La variable contiene = ' + VarToStr(variable));

  // Asignamos una fecha
  variable := now;
  mSalida.Lines.Add('La variable contiene = ' + VarToStr(variable));

  // Asignamos un Objeto
  // variable := Sender;
  // mSalida.Lines.Add('La variable contiene = ' + VarToStr(variable));

end;

procedure TFFundamentos.sbVerMenuClick(Sender: TObject);
begin
  pcMenuPrincipal.Visible := not pcMenuPrincipal.Visible;
end;

end.
