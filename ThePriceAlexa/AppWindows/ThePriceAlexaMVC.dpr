program ThePriceAlexaMVC;

uses
  Vcl.Forms,
  uView in 'uView.pas' {Form2},
  uController in 'uController.pas',
  uModel in 'uModel.pas';

{$R *.res}

var FController : TController;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);

  if not Assigned(FController) then
  begin
    FController := TController.Create;
  end;
  Application.Run;

  FController.Free;
end.
