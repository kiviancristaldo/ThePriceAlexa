program ThPriceAlexaServer;


uses
  Horse,
  System.SysUtils,
  System.JSON,
  REST.Json,
  Variants,
  System.Generics.Collections,
  System.TypInfo,
  uModel in '..\AppWindows\uModel.pas';

procedure GetPing(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
begin
  Res.Send('Pong');
end;

procedure GetPrice(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
var
  vProduct: String;
  vModel : TModel;
begin
  vProduct := Req.Params['Product'];

  try
    vModel := TModel.Create;
    Res.Send(CurrToStr(vModel.BuscarDoBancoDeDadosForAlexa(vProduct)));
  finally
    vModel.Free;
  end;

end;


begin
  THorse.Get('/ping', GetPing);
  THorse.Get('/Price/:Product', GetPrice);
  THorse.Listen(9000);
end.
