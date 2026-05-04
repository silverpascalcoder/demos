unit uVCardQR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmVCardQR = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    btnGenerate: TButton;
    btnSave: TButton;
    GroupBox1: TGroupBox;
    edtFirstName: TEdit;
    edtLastName: TEdit;
    edtPhone: TEdit;
    edtEmail: TEdit;
    edtCompany: TEdit;
    edtTitle: TEdit;
    edtWebsite: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblInfo: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    btnClear: TButton;
    btnExample: TButton;
    chkIncludeAddress: TCheckBox;
    PanelAddress: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtStreet: TEdit;
    edtCity: TEdit;
    edtState: TEdit;
    edtZip: TEdit;
    procedure btnGenerateClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnExampleClick(Sender: TObject);
    procedure chkIncludeAddressClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function BuildVCardString: string;
    procedure GenerateQRCode(const Data: string);
    //procedure SaveQRCodeToFile(const Filename: string);
  end;

var
  frmVCardQR: TfrmVCardQR;

implementation

{$R *.dfm}

uses QlpQRCodeGenLibTypes, QlpQRCode, QlpIQrCode;

function TfrmVCardQR.BuildVCardString: string;
begin
  Result := 'BEGIN:VCARD' + sLineBreak +
            'VERSION:4.0' + sLineBreak +
            'N:' + Trim(edtLastName.Text) + ';' + Trim(edtFirstName.Text) + ';;;' + sLineBreak +
            'FN:' + Trim(edtFirstName.Text) + ' ' + Trim(edtLastName.Text) + sLineBreak +
            'ORG:' + Trim(edtCompany.Text) + sLineBreak +
            'TITLE:' + Trim(edtTitle.Text) + sLineBreak;

  // Phone with URI format (vCard 4.0 requirement)
  if Trim(edtPhone.Text) <> '' then
    Result := Result + 'TEL;TYPE=cell:tel:' + Trim(edtPhone.Text) + sLineBreak;

  // Email with type parameter (vCard 4.0)
  if Trim(edtEmail.Text) <> '' then
    Result := Result + 'EMAIL;TYPE=work:' + Trim(edtEmail.Text) + sLineBreak;

  // Website
  if Trim(edtWebsite.Text) <> '' then
    Result := Result + 'URL:' + Trim(edtWebsite.Text) + sLineBreak;

  // Add address if checkbox is checked (vCard 4.0 format)
  if chkIncludeAddress.Checked then
  begin
    Result := Result + 'ADR;TYPE=work:;;' + Trim(edtStreet.Text) + ';' +
              Trim(edtCity.Text) + ';' + Trim(edtState.Text) + ';' +
              Trim(edtZip.Text) + ';;' + sLineBreak;
  end;

  Result := Result + 'END:VCARD';
end;

procedure TfrmVCardQR.GenerateQRCode(const Data: string);
var
  LQR: IQRCode;
  LBmp: TQRCodeGenLibBitmap;
begin
  LQR := TQRCode.EncodeText(Data,
    TQRCode.TEcc.eccMedium, TEncoding.UTF8);

  LBmp := LQR.ToBitmapImage(10, 4);
  try
    Image1.Picture.Assign(LBmp);
    //mp.SaveToFile('qrcode.bmp');
  finally
    LBmp.Free;
  end;
end;

procedure TfrmVCardQR.btnGenerateClick(Sender: TObject);
begin
  if Trim(edtFirstName.Text) = '' then
  begin
    ShowMessage('Please enter at least a first name');
    Exit;
  end;
  GenerateQRCode(BuildVCardString);
end;

procedure TfrmVCardQR.btnSaveClick(Sender: TObject);
var
  SaveDialog: TSaveDialog;
begin
  if Image1.Picture.Bitmap.Empty then
  begin
    ShowMessage('Generate a QR code first');
    Exit;
  end;
  
  SaveDialog := TSaveDialog.Create(nil);
  try
    SaveDialog.Filter := 'PNG Image|*.png|Bitmap Image|*.bmp';
    SaveDialog.DefaultExt := 'png';
    if SaveDialog.Execute then
    begin
      Image1.Picture.Bitmap.SaveToFile(SaveDialog.FileName);
      ShowMessage('QR Code saved to: ' + SaveDialog.FileName);
    end;
  finally
    SaveDialog.Free;
  end;
end;

procedure TfrmVCardQR.btnClearClick(Sender: TObject);
begin
  edtFirstName.Text := '';
  edtLastName.Text := '';
  edtPhone.Text := '';
  edtEmail.Text := '';
  edtCompany.Text := '';
  edtTitle.Text := '';
  edtWebsite.Text := '';
  edtStreet.Text := '';
  edtCity.Text := '';
  edtState.Text := '';
  edtZip.Text := '';
  chkIncludeAddress.Checked := False;
  Image1.Picture := nil;
end;

procedure TfrmVCardQR.btnExampleClick(Sender: TObject);
begin
  edtFirstName.Text := 'Jane';
  edtLastName.Text := 'Doe';
  edtPhone.Text := '+1 555 987 6543';
  edtEmail.Text := 'jane.doe@silverpascal.com';
  edtCompany.Text := 'Silver Pascal Coders';
  edtTitle.Text := 'Senior Developer';
  edtWebsite.Text := 'https://silverpascal.com/janedoe';
  edtStreet.Text := '456 Code Avenue';
  edtCity.Text := 'Dev City';
  edtState.Text := 'NY';
  edtZip.Text := '10001';
end;

procedure TfrmVCardQR.chkIncludeAddressClick(Sender: TObject);
begin
  PanelAddress.Visible := chkIncludeAddress.Checked;
end;

procedure TfrmVCardQR.FormCreate(Sender: TObject);
begin
  PanelAddress.Visible := False;
  // Load an example contact on startup
  btnExampleClick(nil);
  // Generate initial QR code
  btnGenerateClick(nil);
end;

end.