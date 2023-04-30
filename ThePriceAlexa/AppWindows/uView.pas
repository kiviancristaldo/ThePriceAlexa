unit uView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Data.FMTBcd, Vcl.ExtCtrls;

type

  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

  { OI, eu sou a View aqui é só o lugarzinho onde ficam as coisas que o usuário Vê}

implementation

{$R *.dfm}



end.
