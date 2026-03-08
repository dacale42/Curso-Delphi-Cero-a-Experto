program Fundamentos_de_Programacion_Pascal;

uses
  Vcl.Forms,
  uFFundamentos in 'uFFundamentos.pas' {FFundamentos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFFundamentos, FFundamentos);
  Application.Run;
end.
