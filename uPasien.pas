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
  cxGridTableView, cxGridDBTableView, cxMemo;

type
  TForm1 = class(TForm)
    GLevelViewTabel: TcxGridLevel;
    Grid: TcxGrid;
    QPasien: TMyQuery;
    DsPasien: TDataSource;
    LayoutPasienGroup_Root: TdxLayoutGroup;
    LayoutPasien: TcxGridDBLayoutView;
    LayoutPasienLayoutItem1: TcxGridLayoutItem;
    LayoutPasienid: TcxGridDBLayoutViewItem;
    LayoutPasienLayoutItem2: TcxGridLayoutItem;
    LayoutPasienkode: TcxGridDBLayoutViewItem;
    LayoutPasienLayoutItem3: TcxGridLayoutItem;
    LayoutPasiennama: TcxGridDBLayoutViewItem;
    LayoutPasienLayoutItem4: TcxGridLayoutItem;
    LayoutPasienjenis_kelamin: TcxGridDBLayoutViewItem;
    LayoutPasienLayoutItem5: TcxGridLayoutItem;
    LayoutPasientempat_lahir: TcxGridDBLayoutViewItem;
    LayoutPasienLayoutItem6: TcxGridLayoutItem;
    LayoutPasientanggal_lahir: TcxGridDBLayoutViewItem;
    LayoutPasienLayoutItem7: TcxGridLayoutItem;
    LayoutPasienalamat: TcxGridDBLayoutViewItem;
    LayoutPasienLayoutItem8: TcxGridLayoutItem;
    LayoutPasienpekerjaan: TcxGridDBLayoutViewItem;
    LayoutPasienLayoutItem9: TcxGridLayoutItem;
    LayoutPasienpendidikan: TcxGridDBLayoutViewItem;
    LayoutPasienLayoutItem10: TcxGridLayoutItem;
    LayoutPasiengolongan_darah: TcxGridDBLayoutViewItem;
    LayoutPasienLayoutItem11: TcxGridLayoutItem;
    LayoutPasienstatus_nikah: TcxGridDBLayoutViewItem;
    LayoutPasienLayoutItem12: TcxGridLayoutItem;
    LayoutPasiennama_ortu: TcxGridDBLayoutViewItem;
    LayoutPasienLayoutItem13: TcxGridLayoutItem;
    LayoutPasienpekerjaan_ortu: TcxGridDBLayoutViewItem;
    LayoutPasienLayoutItem14: TcxGridLayoutItem;
    LayoutPasiennama_pasangan: TcxGridDBLayoutViewItem;
    GLevelViewLayout: TcxGridLevel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uDm;

end.
