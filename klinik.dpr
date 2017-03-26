program klinik;

uses
  Vcl.Forms,
  uPasien in 'uPasien.pas' {Form1},
  uDm in 'uDm.pas' {Dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
