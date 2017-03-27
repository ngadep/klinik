unit uPasien;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxButtonEdit, cxDropDownEdit, cxCalendar, cxMemo, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, dxSkinsForm,
  System.Actions, Vcl.ActnList, cxGridLevel, dxLayoutContainer,
  cxGridInplaceEditForm, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TFrmPasien = class(TForm)
    GLevelPasien: TcxGridLevel;
    Grid: TcxGrid;
    DsPasien: TDataSource;
    Tablepasien: TcxGridDBTableView;
    Tablepasienid: TcxGridDBColumn;
    Tablepasienkode: TcxGridDBColumn;
    Tablepasiennama: TcxGridDBColumn;
    Tablepasienjenis_kelamin: TcxGridDBColumn;
    Tablepasientempat_lahir: TcxGridDBColumn;
    Tablepasientanggal_lahir: TcxGridDBColumn;
    Tablepasienalamat: TcxGridDBColumn;
    Tablepasienpekerjaan: TcxGridDBColumn;
    Tablepasienpendidikan: TcxGridDBColumn;
    Tablepasiengolongan_darah: TcxGridDBColumn;
    Tablepasienstatus_nikah: TcxGridDBColumn;
    Tablepasiennama_ortu: TcxGridDBColumn;
    Tablepasienpekerjaan_ortu: TcxGridDBColumn;
    Tablepasiennama_pasangan: TcxGridDBColumn;
    ActionList: TActionList;
    AcAuto: TAction;
    DsRekamMedis: TDataSource;
    TableRekam: TcxGridDBTableView;
    TableRekamId: TcxGridDBColumn;
    TableRekampasien_id: TcxGridDBColumn;
    TableRekamanamnesis: TcxGridDBColumn;
    TableRekamhasil_pemeriksaan: TcxGridDBColumn;
    TableRekamdiagnosis: TcxGridDBColumn;
    TableRekampenatalaksanaan: TcxGridDBColumn;
    TableRekamtindakan_obat: TcxGridDBColumn;
    TableRekampelayanan_lain: TcxGridDBColumn;
    Menu: TMainMenu;
    MasterData1: TMenuItem;
    DaftarPasien1: TMenuItem;
    Bantuan1: TMenuItem;
    entangAplikasi1: TMenuItem;
    TableRekamtanggal: TcxGridDBColumn;
    GLEvelRekam: TcxGridLevel;
    QPasien: TFDQuery;
    QRekamMedis: TFDQuery;
    procedure AcAutoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPasien: TFrmPasien;

implementation

{$R *.dfm}

uses uDm;

procedure TFrmPasien.AcAutoExecute(Sender: TObject);
var
  LSQL, LKode: string;
begin
  if QPasien.FieldByName('Kode').AsString = '' then
    begin
      LSQL := 'SELECT (IFNULL(MAX(id),0) + 1) as NewId FROM TbPasien';
      dm.OpenQuery(LSQL);
      LKode := 'ID' + dm.QOpen.Fields[0].AsString.PadLeft(5, '0');
      QPasien.FieldByName('Kode').AsString := LKode;
    end;
end;

procedure TFrmPasien.FormShow(Sender: TObject);
begin
  QPasien.Open;
  QRekamMedis.Open;
end;

end.
