unit uFProblemas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.WinXPanels, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFProblemas = class(TForm)
    MenuPrincipal: TMainMenu;
    Archivo1: TMenuItem;
    Problemas1: TMenuItem;
    problema1: TMenuItem;
    paginaPrincipal: TPageControl;
    tabConsola: TTabSheet;
    mConsola: TMemo;
    Contenido: TCardPanel;
    cardProblema1: TCard;
    GroupBox1: TGroupBox;
    edNumero4C: TEdit;
    sbSumarNumeroCuatroCifras: TSpeedButton;
    sbSumarNumeroCuatroCifrasF2: TSpeedButton;
    cardProblema2: TCard;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    edCoefC: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edCoefB: TEdit;
    Label5: TLabel;
    edCoefA: TEdit;
    Panel3: TPanel;
    sbResolverCuadratica: TSpeedButton;
    problema2: TMenuItem;
    cardInicio: TCard;
    Panel4: TPanel;
    Label6: TLabel;
    cardMenuOpciones: TCard;
    tvMenu: TTreeView;
    problema3: TMenuItem;
    GroupBox3: TGroupBox;
    edNombre: TEdit;
    abladeMultiplicar1: TMenuItem;
    cardTablaMultiplicar: TCard;
    GroupBox4: TGroupBox;
    edTabla: TEdit;
    sbCalcularTabla: TSpeedButton;
    FactorialdeunNumero1: TMenuItem;
    cardFactorialNumero: TCard;
    GroupBox5: TGroupBox;
    sbFacorialNumero: TSpeedButton;
    edNumFact: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure sbSumarNumeroCuatroCifrasClick(Sender: TObject);
    procedure sbSumarNumeroCuatroCifrasF2Click(Sender: TObject);
    procedure sbResolverCuadraticaClick(Sender: TObject);
    procedure problema1Click(Sender: TObject);
    procedure problema2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure problema3Click(Sender: TObject);
    procedure tvMenuClick(Sender: TObject);
    procedure abladeMultiplicar1Click(Sender: TObject);
    procedure sbCalcularTablaClick(Sender: TObject);
    procedure FactorialdeunNumero1Click(Sender: TObject);
    procedure sbFacorialNumeroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProblemas: TFProblemas;

implementation

{$R *.dfm}

procedure TFProblemas.abladeMultiplicar1Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardTablaMultiplicar;
end;

procedure TFProblemas.FactorialdeunNumero1Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardFactorialNumero;
  mConsola.Lines.Clear;
end;

procedure TFProblemas.FormCreate(Sender: TObject);
begin
  Contenido.ActiveCard := cardInicio;
  mConsola.Lines.Clear;
end;

procedure TFProblemas.problema1Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardProblema1;
  mConsola.Lines.Clear;
end;

procedure TFProblemas.problema2Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardProblema2;
  mConsola.Lines.Clear;
end;

procedure TFProblemas.problema3Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardMenuOpciones;
  tvMenu.Items.Clear;
  tvMenu.Items.Add(nil, 'Lunes');
  tvMenu.Items.Add(nil, 'Martes');
  tvMenu.Items.Add(nil, 'Miercoles');
  tvMenu.Items.Add(nil, 'Jueves');
  tvMenu.Items.Add(nil, 'Viernes');
  tvMenu.Items.Add(nil, 'Sabado');
  tvMenu.Items.Add(nil, 'Domingo');
end;

procedure TFProblemas.sbCalcularTablaClick(Sender: TObject);
var
  i, t, n: integer;
begin
  mConsola.Lines.Clear;
  n := StrToInt(edTabla.Text);
  mConsola.Lines.Add('Tabla del ' + IntToStr(n) + ':');
  for i := 0 to 10 do
  begin
    t := n * i;
    mConsola.Lines.Add(IntToStr(n) + ' x ' + IntToStr(i) + ' = ' + IntToStr(t));
  end;
end;

procedure TFProblemas.sbFacorialNumeroClick(Sender: TObject);
var
  i, n: integer;
  fact: LONG64;
begin
  fact := 1;
  n := StrToInt(edNumFact.Text);

  for i := 1 to n do
  begin
    fact := fact * i;
  end;

  mConsola.Lines.Clear;
  mConsola.Lines.Add('El factorial de ' + IntToStr(n) + ' es: ' +
    IntToStr(fact));
end;

procedure TFProblemas.sbResolverCuadraticaClick(Sender: TObject);
var
  a, b, c, disc, x1, x2, z, w: real;
begin
  a := StrToFloat(edCoefA.Text);
  b := StrToFloat(edCoefB.Text);
  c := StrToFloat(edCoefC.Text);
  disc := power(b, 2) - 4 * a * c;

  { si disc=0 hay una unica solucion
    si disc>0 hay 2 posibles soluciones
    si disc<0 hay solucion pero en numeros complejos }

  mConsola.Lines.Clear;
  if disc = 0 then
  begin
    mConsola.Lines.Add('La ecuacion tiene una unica solucion');
    x1 := -b / (2 * a);
    mConsola.Lines.Add('El Resultado es: ' + FloatToStr(x1));
  end;

  if disc > 0 then
  begin
    mConsola.Lines.Add('La ecuacion tiene 2 posibles soluciones');
    x1 := (-b + sqrt(disc)) / (2 * a);
    x2 := (-b - sqrt(disc)) / (2 * a);
    mConsola.Lines.Add('Los resultados son:');
    mConsola.Lines.Add('> x1: ' + FloatToStr(x1));
    mConsola.Lines.Add('> x2: ' + FloatToStr(x2));
  end;

  { forma de numero complejo a + bi }

  if disc < 0 then
  begin
    mConsola.Lines.Add('La ecuacion tiene solucion en nros complejos');
    w := -b / (2 * a);
    z := sqrt(abs(disc)) / (2 * a);
    // w + zi
    mConsola.Lines.Add('> x1: ' + FloatToStr(w) + '+' + FloatToStr(z) + 'i');
    mConsola.Lines.Add('> x1: ' + FloatToStr(w) + '-' + FloatToStr(z) + 'i');
  end;
end;

procedure TFProblemas.sbSumarNumeroCuatroCifrasClick(Sender: TObject);
var
  num: integer;
  a, b, c, d, suma: integer;

begin
  // Borrar la consola de mensajes
  mConsola.Lines.Clear;
  num := StrToInt(edNumero4C.Text);
  a := num div 1000;
  num := num - 1000 * a;
  b := num div 100;
  num := num - 100 * b;
  c := num div 10;
  d := num - 10 * c;
  suma := a + b + c + d;

  mConsola.Lines.Add('La suma del numero (Forma1) es: ' + IntToStr(suma));

end;

procedure TFProblemas.sbSumarNumeroCuatroCifrasF2Click(Sender: TObject);
var
  suma: integer;

begin
  // Borrar la consola de mensajes
  mConsola.Lines.Clear;

  suma := StrToInt(Copy(edNumero4C.Text, 1, 1));
  suma := suma + StrToInt(Copy(edNumero4C.Text, 2, 1));
  suma := suma + StrToInt(Copy(edNumero4C.Text, 3, 1));
  suma := suma + StrToInt(Copy(edNumero4C.Text, 4, 1));
  mConsola.Lines.Add('La suma del numero (Forma2) es: ' + IntToStr(suma));

end;

procedure TFProblemas.tvMenuClick(Sender: TObject);
var
  dia, nombre: string;
begin
  nombre := edNombre.Text;
  if tvMenu.Selected <> nil then
  begin
    dia := tvMenu.Selected.Text;
    mConsola.Lines.Clear;
    if dia = 'Lunes' then
    begin
      mConsola.Lines.Add('Hola, ' + nombre + ' hoy ' + dia +
        ' tenemos este menu:');
      mConsola.Lines.Add('Milanesas con Pure.');
      mConsola.Lines.Add('Pizza con rucula y parmesano.');
    end;
    if dia = 'Martes' then
    begin
      mConsola.Lines.Add('Hola, ' + nombre + ' hoy ' + dia +
        ' tenemos este menu:');
      mConsola.Lines.Add('Milanesas con Papas Fritas.');
      mConsola.Lines.Add('Ravioles al pesto.');
    end;
    if dia = 'Miercoles' then
    begin
      mConsola.Lines.Add('Hola, ' + nombre + ' hoy ' + dia +
        ' tenemos este menu:');
      mConsola.Lines.Add('Hamburguesas con ensalada.');
      mConsola.Lines.Add('Guiso de arroz.');
    end;
    if dia = 'Jueves' then
    begin
      mConsola.Lines.Add('Hola, ' + nombre + ' hoy ' + dia +
        ' tenemos este menu:');
      mConsola.Lines.Add('Solomillo al horno con papas.');
      mConsola.Lines.Add('Choripan con salsa criolla.');
    end;
    if dia = 'Viernes' then
    begin
      mConsola.Lines.Add('Hola, ' + nombre + ' hoy ' + dia +
        ' tenemos este menu:');
      mConsola.Lines.Add('Picada de salame y queso.');
      mConsola.Lines.Add('Ensalada de pollo, rucula y tomates cherry.');
    end;
    if dia = 'Sabado' then
    begin
      mConsola.Lines.Add('Hola, ' + nombre + ' hoy ' + dia +
        ' tenemos este menu:');
      mConsola.Lines.Add('Milanesas de pollo con fideos.');
      mConsola.Lines.Add('Ravioles con salsa.');
    end;
    if dia = 'Domingo' then
    begin
      mConsola.Lines.Add('Hola, ' + nombre + ' hoy ' + dia +
        ' tenemos este menu:');
      mConsola.Lines.Add('Asado de costilla con papas fritas.');
      mConsola.Lines.Add('Pollo al horno con verduras al vapor.');
    end;
  end;

end;

end.
