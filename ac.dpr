program ac;

uses
  Forms,
  Uac in 'Uac.pas' { MainForm } ;
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Alpha Crack 1.0';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;

end.
