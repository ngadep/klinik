program klinik;

uses
  Vcl.Forms,
  uPasien in 'uPasien.pas' {FrmPasien},
  uDm in 'uDm.pas' {Dm: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Blue');
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFrmPasien, FrmPasien);
  Application.Run;
end.
