program Project12;

uses
  Vcl.Forms,
  mainPage in 'mainPage.pas' {Form19},
  struct in 'struct.pas',
  loadTask in 'loadTask.pas',
  saveTask in 'saveTask.pas',
  Unit2 in 'Unit2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Quest Editor';
  Application.CreateForm(TForm19, Form19);
  Application.CreateForm(TForm2, Form2);
  Application.Run;

end.
