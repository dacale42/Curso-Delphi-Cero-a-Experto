unit UPrimerPrograma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFPrimerPrograma = class(TForm)
    lbSaludar: TLabel;
    bSaludar: TButton;
    procedure bSaludarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrimerPrograma: TFPrimerPrograma;

implementation

{$R *.dfm}

procedure TFPrimerPrograma.bSaludarClick(Sender: TObject);
begin
  lbSaludar.Caption := 'Hola, Bienvenido a mi Primer Programa!!!';
end;

end.
