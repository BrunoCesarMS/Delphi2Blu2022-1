unit Luz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Tresidencia: TEdit;
    Tcomercio: TEdit;
    Tindustria: TEdit;
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
  Tpcliente: Integer;
  resvalor : Double;
  covalor  : Double;
  indvalor : Double;
  consumo  : Double;
  xresposta: String;

begin
  resvalor := 0;
  covalor  := 0;
  indvalor := 0;

  repeat
    Tpcliente := strtoint(inputbox('Informe ', ' Informe o tipo de resid�ncia: 1 - Resid�ncia, 2 - Com�rcio, 3 - Ind�stria ',''));

    consumo   := StrToFloat(inputbox('informe ', 'Informe o consumo de kw/h: ',''));


    if Tpcliente = 1 then
    begin
      resvalor := consumo*0.60;
    end;

    if Tpcliente = 2 then

    begin
      covalor := consumo*0.48;
    end;


    if Tpcliente = 3 then

    begin
      indvalor := consumo*1.29;
    end;

    xresposta := (inputbox('continuar ', ' deseja continuar S ou N ',''));

  until xresposta ='N';

  Tresidencia.text := ('Valor da conta da resid�ncia � de: ' +FloatToStr(resvalor));
  tcomercio.text :=('valor da conta do com�rcio � de: ' +FloatToStr(covalor));
  tindustria.text := ('valor da conta da ind�stria � de: ' +FloatToStr(indvalor));

end;



end.
