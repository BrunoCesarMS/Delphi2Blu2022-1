program Project3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
 xSaldo, xSangria: Currency;
 xContinuar: Byte;
begin
  try
    //Retirado de dinheiro na conta
    writeln('Retirado de dinheiro na conta');

    Writeln('Entre com o saldo da sua conta:');
    Readln(xSaldo);

    while xSaldo > 0 do
    begin
      writeln('Qual ser� o valor da sua retirada:');
      Readln(xSangria);

      xSaldo := xSaldo - xSangria;

      WriteLn('Deseja continuar com as retiradas? (1-sim 2-N�o)');
      readln(xContinuar);

      if xContinuar <> 1 then
        break;
    end;

    Writeln('Seu saldo atual �: ' + FloatToStr(xSaldo));
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
