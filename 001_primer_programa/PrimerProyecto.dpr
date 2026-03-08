program PrimerProyecto;

uses
  Vcl.Forms,
  UPrimerPrograma in 'UPrimerPrograma.pas' {FPrimerPrograma};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrimerPrograma, FPrimerPrograma);
  Application.Run;
end.
