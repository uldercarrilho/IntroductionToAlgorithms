program Exercises;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uAlgorithms in 'uAlgorithms.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
