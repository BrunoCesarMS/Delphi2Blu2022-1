unit nomeEsexo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Label2: TLabel;
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
  resultado: Integer;
  nome: String;
  sexo: String;
  h: integer;
  m: integer;

begin
  resultado := 0;
  h := 0;
  m := 0;
  for resultado := 1 to strtoint(Edit1.text) do


  begin
   nome := (inputbox('qual ', 'qual seu nome? ',''));

   sexo := (inputbox('h e m  ', ' H = homem e M = mulher ',''));

   Memo1.lines.add(nome+ ' - '+ sexo);

   if (sexo = 'h')  then
     h := h + 1;

   if (sexo = 'm') then
     m := m + 1;

  end;

  Memo1.lines.add('Total de homens � '+ h.tostring);
  memo1.lines.add('Total de mulheres � '+ m.tostring);
 end;

end.
