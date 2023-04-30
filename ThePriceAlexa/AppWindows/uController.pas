unit uController;

interface

uses uModel, uView;

type
  TController = class
  public
    procedure MostrarDados;

    constructor Create;
  private
    procedure AtribuirClick(Sender: TObject);
    destructor Destroy;
  end;

  { Oi, eu sou a Controller!
  Eu controlo tudo aqui. Nessa unit tu pode chamar informações do banco pela model,
  ou controlar botões, efeitos, regras de negócio ou o que seu <3 mandar! }

implementation

{ TController }

procedure TController.AtribuirClick(Sender: TObject);
begin
  MostrarDados;
end;

constructor TController.Create;
begin
  uView.Form2.Button1.OnClick := AtribuirClick;

end;

destructor TController.Destroy;
begin

end;

procedure TController.MostrarDados;
var
  vModel : TModel;
begin
  try
    vModel := TModel.Create;
    uView.Form2.DataSource1.DataSet := vModel.BuscarDoBancoDeDados(uView.Form2.Edit1.text);
  finally

  end;
end;

end.
