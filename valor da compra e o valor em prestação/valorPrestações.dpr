program valorPresta��es;

uses
  Vcl.Forms,
  Mostreaspresta��es in 'Mostreaspresta��es.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
