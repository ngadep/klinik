unit uDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, DBAccess, MyAccess;

type
  TDm = class(TDataModule)
    Con: TMyConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure ConnectToDb(AHost, ADb, AUser, APassword: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDm.ConnectToDb(AHost, ADb, AUser, APassword: string);
begin
  con.Server := AHost;
  con.Database := ADb;
  con.Username := AUser;
  Con.Password := APassword;
  con.Open;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  ConnectToDb('localhost', 'klinik', 'root', 'server');
end;

end.
