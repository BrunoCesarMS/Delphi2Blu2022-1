unit CustoEpre�o;

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
  custo: Double;
  venda: Double;
  Totalcusto: Double;
  totalvenda: Double;
  diferen�a : Double;
  i: integer;

begin
  totalcusto := 0;
  totalvenda := 0;

  for I := 1 to 2 do
  begin
    custo := StrToFloat(inputbox('Informe ', ' Informe o valor de custo do produto ',''));
    venda := StrToFloat(inputbox('Informe ', ' Informe o valor de venda ',''));

    diferen�a := venda-custo;

    if diferen�a = 0 then
      Memo1.lines.add('Houve empate ');

    if diferen�a > 0 then
      Memo1.lines.add('Houve lucro ');

    if diferen�a < 0 then
      Memo1.lines.add('Houve preju�zo ');

    totalcusto := totalcusto + custo;
    totalvenda := totalvenda + venda;
  end;

     memo1.lines.add(' A media de venda foi' +  FloatToStr(totalvenda/2));
     memo1.lines.add(' A media do custo foi' +  FloatToStr(totalcusto/2));
end;

end.
