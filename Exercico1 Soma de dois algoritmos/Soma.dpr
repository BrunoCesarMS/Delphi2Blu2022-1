program Soma;

uses
  Vcl.Forms,
  Exerc�cio1 in 'Exerc�cio1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
