program Pre�oEcusto;

uses
  Vcl.Forms,
  CustoEpre�o in 'CustoEpre�o.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
