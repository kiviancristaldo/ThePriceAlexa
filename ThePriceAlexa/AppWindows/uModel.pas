unit uModel;

interface

uses FireDAC.Stan.Intf, FireDAC.Stan.Option,
FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
FireDAC.Comp.Client, Data.SqlExpr, FireDac.Stan.Def, FireDac.Stan.Factory,
FireDAC.Phys.IBBase, FireDAC.Phys.FB,
 
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI;

type

  TModel = class
    FQry : TFDQuery;
    FConnection : TFDConnection;
  public
    function BuscarDoBancoDeDados(const pParam: String): TFDQuery;
    function BuscarDoBancoDeDadosForAlexa(const pParam: String): Currency;
  private
    procedure CriarQuery;
    procedure Conectar;
  end;

  { OI, eu sou a Model!
  Eu tenho esse nome porque saio desfilando
  em buscar das informações que tu precisa ou inserindo ou deletando ou qqr coisa}

implementation

{ TModel }

function TModel.BuscarDoBancoDeDados(const pParam: String): TFDQuery ;
begin
  Conectar;
  CriarQuery;

  FQry.SQL.Text := 'SELECT * FROM PRODUCTS WHERE NAME = :NAME';
  FQry.ParamByName('NAME').asString := pParam;
  FQry.Open;

  Result := FQry;
end;

function TModel.BuscarDoBancoDeDadosForAlexa(const pParam: String): Currency ;
begin
  Conectar;
  CriarQuery;

  FQry.SQL.Text := 'SELECT * FROM PRODUCTS WHERE NAME = :NAME';
  FQry.ParamByName('NAME').asString := pParam;
  FQry.Open;

  Result := FQry.FieldByName('PRICE').asCurrency;
end;

procedure TModel.Conectar;
begin
  FConnection := TFDConnection.Create(nil);
  FConnection.Params.DriverID := 'FB';
  FConnection.params.password := 'masterkey';
  FConnection.params.UserName := 'SYSDBA';
  FConnection.params.DataBase := 'C:\Users\AquaAdmin\Desktop\kidelphi\MVC\Database\DATAPROD.FDB';
  FConnection.Connected := True;
end;

procedure TModel.CriarQuery;
begin
  FQry  := TFDQuery.Create(nil);
  FQry.Connection := FConnection;

end;



end.
