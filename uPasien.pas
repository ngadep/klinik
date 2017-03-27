unit uPasien;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxLayoutContainer, cxGridCustomView,
  cxGridCustomTableView, cxGridCustomLayoutView, cxGridLayoutView, cxClasses,
  cxGridLevel, cxGrid, Data.DB, MemDS, DBAccess, MyAccess, cxDBData,
  cxGridDBLayoutView, cxGridViewLayoutContainer, cxDropDownEdit,
  cxGridTableView, cxGridDBTableView, cxMemo, cxGridCardView, cxGridDBCardView,
  cxRadioGroup, cxButtonEdit, System.Actions, Vcl.ActnList,
  cxGridInplaceEditForm, Vcl.Menus, dxSkinsForm, cxCalendar, cxTimeEdit,
  dxDateTimeWheelPicker;

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
    TblPasien: TMyTable;
    TblRekamMedis: TMyTable;
    TableRekam: TcxGridDBTableView;
    TableRekamId: TcxGridDBColumn;
    TableRekampasien_id: TcxGridDBColumn;
    TableRekamanamnesis: TcxGridDBColumn;
    TableRekamhasil_pemeriksaan: TcxGridDBColumn;
    TableRekamdiagnosis: TcxGridDBColumn;
    TableRekampenatalaksanaan: TcxGridDBColumn;
    TableRekamtindakan_obat: TcxGridDBColumn;
    TableRekampelayanan_lain: TcxGridDBColumn;
    Skin: TdxSkinController;
    Menu: TMainMenu;
    MasterData1: TMenuItem;
    DaftarPasien1: TMenuItem;
    Bantuan1: TMenuItem;
    entangAplikasi1: TMenuItem;
    TableRekamtanggal: TcxGridDBColumn;
    GLEvelRekam: TcxGridLevel;
    procedure AcAutoExecute(Sender: TObject);
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
  LSQL: string;
begin
  if TblPasien.FieldByName('Kode').AsString = '' then
    begin
      LSQL := 'SELECT CONCAT("ID", LPAD(IFNULL(MAX(id),0) + 1, 5 ,0)) as NewId '+
        'FROM TbPasien';
      dm.OpenQuery(LSQL);
      TblPasien.FieldByName('Kode').AsString := dm.QOpen.Fields[0].AsString;
    end;
end;

end.
