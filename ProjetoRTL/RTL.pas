unit RTL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    btnInter: TButton;
    btnData: TButton;
    btnPonto: TButton;
    Button4: TButton;
    Label3: TLabel;
    procedure btnInterClick(Sender: TObject);
    procedure btnPontoClick(Sender: TObject);
    procedure btnDataClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnDataClick(Sender: TObject);
 var
   Data: TDate;
begin
  Data := StrToDate(Edit1.text);
  Data := Data + 2;

  Label3.caption := ('Data = '+DateToStr(Data));

end;

procedure TForm1.btnInterClick(Sender: TObject);
var
  I: Integer;

begin
  I := strtoint(Edit1.text);
  I := I + 10;
  Label3.caption := inttostr(I);

end;

procedure TForm1.btnPontoClick(Sender: TObject);
var
  point: Double;

begin
  Point := StrToFloat(Edit1.text);
  Point := Point + 10.50;
  Label3.caption := FloatToStr(Point);
end;
procedure TForm1.Button4Click(Sender: TObject);
var
  Dia:TDateTime;
  xAno,xmes, xdia: word;
  xMonth: array[1..12] of string;

begin
  xMonth[1] := 'janeiro';
  xMonth[2] := 'Fevereiro';
  xMonth[3] := 'mar�o';
  xMonth[4] := 'abril';
  xMonth[5] := 'maio';
  xMonth[6] := 'junho';
  xMonth[7] := 'julho';
  xMonth[8] := 'agosto';
  xMonth[9] := 'setembro';
  xMonth[10] := 'outubro';
  xMonth[11] := 'novembro';
  xMonth[12] := 'dezembro';

  Dia := StrTodate(Edit1.text);
  DecodeDate(Dia, xAno, xmes, xdia);

 Label3.caption := ('Hoje � dia ' + inttostr(xDia) + ' de '+xMonth[xmes] + ' de '+ inttostr(xano));


end;

end.

