unit exercico4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Dateutils;

type
  TForm1 = class(TForm)
    tProcedure: TButton;
    tFuction: TButton;
    TInter: TButton;
    TConst: TButton;
    BTNArray: TButton;
    TArratV: TButton;
    TFormat: TButton;
    BTData: TButton;
    TFunction: TButton;
    Tdefault: TButton;
    TForward: TButton;
    procedure tProcedureClick(Sender: TObject);
    procedure TInterClick(Sender: TObject);
    procedure TConstClick(Sender: TObject);
    procedure BTNArrayClick(Sender: TObject);
    procedure TFormatClick(Sender: TObject);
    procedure TArratVClick(Sender: TObject);
    procedure BTDataClick(Sender: TObject);
    procedure TFunctionClick(Sender: TObject);
    procedure TdefaultClick(Sender: TObject);
    procedure TForwardClick(Sender: TObject);
    procedure tFuctionClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProceduresFuctions: TForm1;

implementation

{$R *.dfm}

/////PROCEDURES E FUNCTIONS/////

// Isso � uma procedure
procedure olaMundo;
begin
  ShowMessage('Ol� Mundo!!!');
end;

//Isso � uma Fun��o
function RetornarNomeSobrenome: String;
begin
  Result := 'Lucas Howe';
end;

//Procedure com parametros por Referencia
procedure DoubleTheValue(var Value: Integer);
begin
  value := value *2;
end;

// Parametros Constantes
function DoubleTheValue2(const Value: Integer): Integer;
begin
  //Value := Value * 2; //compiler error
  result := Value;
end;

// parametros default
procedure NewMessage(aMsg: String; aCaption: String = 'Message';
                     aSeparator: String = SLineBreak);
var
  xMensagem: String;
begin
  xMensagem := aCaption;
  xMensagem := xMensagem + ': ';
  xMensagem := xMensagem + amsg;
  xMensagem := xMensagem + aSeparator;

  ShowMessage(xMensagem);
end;

//parametros com Array Aberto
function Sum(const A: Array of Integer): Integer;
var
  I: Integer;
begin
  result := 0;

  for I := Low(A) to High(A) do
    Result := Result + a[I];
end;

// Sobrecarga de Fun��es
function Min(A, B: Integer): Integer; overload
begin
  Result := A;
  if B < A then
    Result := B;
end;

function Min(A, B: Double): Double; overload;
begin
  result := A;
  if B < A  then
    result := B;
end;

function Min(A, B: Extended): Extended; overload;
begin
  result := A;
  if B < A then
  Result := B;
end;






procedure TForm1.BTDataClick(Sender: TObject);
var
  myDate : TDateTime;

begin
   // Set up our TDateTime variable with a full dateand time :
   // 5th of june 2000 at 01:02:03:004  (.004 milli-secons)
   myDate := EncodeDatetime(2000, 6, 5, 1, 2, 3, 4);

   // Date only - numeric values with no leading zeroes (except year)
   ShowMessage('           d/m/y = '+
               FormatDateTime('d/m/y', myDate));
   //Date only - numeric values with leading zeroes
   ShowMessage('          dd/mm/yy = '+
               FormatdateTime('dd/mm/yy', mydate));

   //USe short names for the day, month, and add freeform text ('of')
   ShowMessage('  ddd d of mmm yyyy = '+
               FormatDateTime('ddd d of mmm yyyy', myDate));

   //use long names for the day and month
   ShowMessage('ddd d of mmm yyyy = '+
               FormatDateTime('ddd d of mmmm yyyy', myDate));

   //Use the ShortDateFormat settings only
   showMessage('             ddddd = '+
               FormatDateTime('ddddd', myDate));

   // Use the LongDateFormat settings only
   ShowMessage('             dddddd = '+
               FormatDateTime('dddddd', myDate));

   //Use the ShortDateFormat = Longtimefrmat setting
   ShowMessage('                  c = '+
              FormatDateTime('c', myDate));


end;

procedure TForm1.BTNArrayClick(Sender: TObject);
var
  xSoma: Integer;
begin
  xSoma := Sum([1,2,3]);

  ShowMessage(xSoma.ToString);
end;

procedure TForm1.TArratVClick(Sender: TObject);
var
 xNum1: Integer;
 xNum2: Double;
begin
  xNum1 := 20;
  xNum2 := 1500.50;

  ShowMessage(
    Format('Total do caixa � de: %d', [xNum1]));

  Showmessage(
    Format('Ol� %s, money; %f', ['Lucas', xNum2]));
end;

procedure TForm1.TConstClick(Sender: TObject);
var
 x: Integer;
begin
  x := 10;
  DoubleThevalue2(x);
  ShowMessage(x.toString);
end;



procedure TForm1.TFormatClick(Sender: TObject);
var
  text : String;
begin
  // just 1 data item
  ShowMessage(Format('%s', ['Hello']));

  // A mix of literal text and a data item
  ShowMessage(Format('String = %s', ['Hello']));
  ShowMessage('');

  // Examples of each of the data types
  ShowMessage(Format('Deciaml          = %d', [123]));
  ShowMessage(Format('Exponent         = %e1', [12345.678]));
  ShowMessage(Format('Fixed            = %f', [12345.678]));
  ShowMessage(Format('General          = %g', [12345.678]));
  ShowMessage(Format('Number           = %n', [12345.678]));
  ShowMessage(Format('Moneuy           = %m', [12345.678]));
  ShowMessage(Format('pointer          = %p', [addr(text)]));
  ShowMessage(Format('String           = %s', ['Hello']));
  ShowMessage(Format('Unsigned decimal = %u', [123]));
  ShowMessage(Format('Hexadecimal      = %x1', [140]));
end;

// Declara��o Forward
procedure Hello; forward;
procedure DoubleHello; forward;

procedure Hello;
begin
  if MessageDlg('do you want a double message?', mtConfirmation,
                  [mbYes, mbNo], 0) = mrYes then
     DoubleHello
  else
     ShowMessage('Hello');
end;

procedure DoubleHello;
begin
  Hello;
  Hello;
end;


procedure TForm1.TForwardClick(Sender: TObject);
begin
  DoubleHello;
end;




procedure TForm1.tFuctionClick(Sender: TObject);
begin

end;

//var
//  xNomeSobreNome: String;
//begin
//  xNomeSobreNome := RetornarNomeSobreNome;
//  ShowMessage(xNomeSobreNome);
//end;

procedure TForm1.TFunctionClick(Sender: TObject);
var
 xNum1, xNum2: Integer;
 xNum3, xnum4: Double;
 xnum5, xNum6: Extended;
begin
  xNum1 := 1; xNum2 := 2;
  xNum3 := 1; xNum4 := 2;
  xNum5 := 1; xnum6 := 2;

  ShowMessage(Min(xNum1, xNum2).ToString);
  ShowMessage(Min(xNum3, xNum4).ToString);
  ShowMessage(Min(xNum5, xNum6).ToString);

end;

procedure TForm1.TInterClick(Sender: TObject);
var
x: Integer;
begin
  x := 10;
  DoubleTheValue(x);
  ShowMessage(x.ToString);
end;

procedure TForm1.tProcedureClick(Sender: TObject);

begin
  Olamundo
end;
procedure TForm1.TdefaultClick(Sender: TObject);
begin
  NewMessage('Something wrong here!');
  NewMessage('Something wrong here!', 'Attention');
  NewMessage('Hello', 'Message', '--');
end;

end.
