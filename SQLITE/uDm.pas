unit uDm;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Classes, FireDAC.Comp.UI, FireDAC.VCLUI.Error,
  FireDAC.VCLUI.Login;

type
  TDm = class(TDataModule)
    Con: TFDConnection;
    QOpen: TFDQuery;
    QTemp: TFDQuery;
    QExe: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure ConnectToDb(ADb: string);
    procedure CreateTabelPasien;
    procedure CreateTabelRekamMedis;
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

procedure TDm.CreateTabelPasien;
begin
  Con.ExecSQL(
    'CREATE TABLE IF NOT EXISTS TbPasien ( '+
    'id             INTEGER       PRIMARY KEY AUTOINCREMENT ' +
                                 'NOT NULL, ' +
    'kode           VARCHAR (25)  NOT NULL ' +
                                 'UNIQUE, ' +
    'nama           VARCHAR (50)  NOT NULL, ' +
    'jenis_kelamin  VARCHAR (6)   NOT NULL, ' +
    'tempat_lahir   VARCHAR (20)  DEFAULT NULL, ' +
    'tanggal_lahir  DATE          DEFAULT NULL, ' +
    'alamat         VARCHAR (255) DEFAULT NULL, ' +
    'pekerjaan      VARCHAR (25)  DEFAULT NULL, ' +
    'pendidikan     VARCHAR (5)   DEFAULT "LAIN", ' +
    'golongan_darah VARCHAR (5)   DEFAULT "LAIN", ' +
    'status_nikah   VARCHAR (15)  DEFAULT NULL, ' +
    'nama_ortu      VARCHAR (50)  DEFAULT NULL, ' +
    'pekerjaan_ortu VARCHAR (25)  DEFAULT NULL, ' +
    'nama_pasangan  VARCHAR (50)  DEFAULT NULL ' +
    ');' );
end;

procedure TDm.CreateTabelRekamMedis;
begin
  Con.ExecSQL(
    'CREATE TABLE IF NOT EXISTS TbRekamMedis ( '+
    'Id                INTEGER       PRIMARY KEY AUTOINCREMENT '+
                                    'NOT NULL, '+
    'pasien_id         INTEGER       REFERENCES TbPasien (id) ON DELETE RESTRICT '+
                                                             'ON UPDATE CASCADE '+
                                    'NOT NULL, '+
    'tanggal           DATETIME      DEFAULT (CURRENT_TIMESTAMP), '+
    'anamnesis         VARCHAR (255) DEFAULT NULL, '+
    'hasil_pemeriksaan VARCHAR (255) DEFAULT NULL, '+
    'diagnosis         VARCHAR (255) DEFAULT NULL, '+
    'penatalaksanaan   VARCHAR (255) DEFAULT NULL, '+
    'tindakan_obat     VARCHAR (255) DEFAULT NULL, '+
    'pelayanan_lain    VARCHAR (255) DEFAULT NULL '+
    ');' );

end;

procedure TDm.DataModuleCreate(Sender: TObject);
var
  LTotalTabel: Integer;
begin
  ConnectToDb('klinik.sdb');
  LTotalTabel := Con.ExecSQLScalar('SELECT count(*) FROM sqlite_master WHERE type="table"');
  if LTotalTabel = 0 then
    begin
      CreateTabelPasien;
      CreateTabelRekamMedis;
    end;
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
