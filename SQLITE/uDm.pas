unit uDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, DBAccess, MyAccess, MemDS, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDm = class(TDataModule)
    Con: TFDConnection;
    QOpen: TFDQuery;
    QTemp: TFDQuery;
    QExe: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure ConnectToDb(ADb: string);
    { Private declarations }
  public
    procedure ExecSQL(AComponent: TFDQuery; const ASQL: string; AOpen: Boolean = True);
    procedure OpenQuery(const ASQL: string);
    procedure ExecQuery(const ASQL: string);
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDm.ConnectToDb(ADb : string);
begin
  con.Params.Database := ADb;
  con.Open;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  ConnectToDb('klinik.sdb');
end;

procedure TDm.ExecSQL(AComponent: TFDQuery; const ASQL: string; AOpen: Boolean);
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
