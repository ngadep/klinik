program klinik;

uses
  Vcl.Forms,
  uPasien in 'uPasien.pas' {FrmPasien},
  uDm in 'uDm.pas' {Dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFrmPasien, FrmPasien);
  Application.Run;
end.
