program Project2;

uses
  Vcl.Forms,
  Exer�cio2 in 'Exer�cio2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
