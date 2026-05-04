program qrdemo;

uses
  Vcl.Forms,
  uVCardQR in 'uVCardQR.pas' {frmVCardQR};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCardQR, frmVCardQR);
  Application.Run;
end.
