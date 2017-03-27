unit uDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, DBAccess, MyAccess, MemDS;

type
  TDm = class(TDataModule)
    Con: TMyConnection;
    QTemp: TMyQuery;
    QExe: TMyQuery;
    QOpen: TMyQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure ConnectToDb(AHost, ADb, AUser, APassword: string);
    { Private declarations }
  public
    procedure ExecSQL(AComponent: TMyQuery; const ASQL: string; AOpen: Boolean = True);
    procedure OpenQuery(const ASQL: string);
    procedure ExecQuery(const ASQL: string);
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


procedure TDm.ExecSQL(AComponent: TMyQuery; const ASQL: string; AOpen: Boolean);
begin
  with AComponent do
  begin
    sql.Clear;
    sql.Text := ASQL;
    if AOpen then
      Open else
      ExecSQL;
  end;
end;

procedure TDm.OpenQuery(const ASQL: string);
begin
  ExecSQL(QOpen, ASQL, True);
end;

procedure TDm.ExecQuery(const ASQL: string);
begin
  ExecSQL(QExe, ASQL, False);
end;

end.
