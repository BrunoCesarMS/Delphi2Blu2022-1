unit positivonegativo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  numero: Integer;

begin
  numero := strtoint(inputbox('Informe ', 'Informe um n�mero ',''));

  if numero > 0 then
    Memo1.lines.add('O n�mero � positivo ')
  else if numero < 0 then
    Memo1.lines.add('O n�mero informado � negativo ')
  else
    Memo1.lines.add('o n�mero informado � igual a zero ');

end;

end.
